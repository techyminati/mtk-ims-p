.class public abstract Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_6/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_6/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5801
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5804
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5860
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5861
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5862
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5863
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5864
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

    .line 5829
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

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

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x6bt
        -0x9t
        0x58t
        -0x57t
        0x69t
        -0x18t
        0x4dt
        -0x30t
        -0x7ct
        -0x70t
        0x26t
        0x6ct
        -0x47t
        -0x2ct
        -0x71t
        -0x57t
        0x49t
        -0x3bt
        0x64t
        -0x5et
        0x40t
        0x1et
        -0x74t
        0x4et
        -0x3et
        -0x3at
        0x37t
        0x55t
        0x2ft
        -0x66t
        -0x39t
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        -0x7t
        -0x3dt
        -0x45t
        -0x7dt
        -0x5at
        -0x42t
        0x31t
        -0x6ct
        0x52t
        -0x50t
        0x1bt
        -0x49t
        0x68t
        -0x20t
        0x3bt
        -0x24t
        -0x54t
        0x17t
        0x66t
        -0x2ft
        -0x28t
        -0xct
        0x63t
        0x7t
        -0x5ct
        0x5dt
        -0x38t
        -0x5at
        -0x38t
        -0x3ct
        0x64t
        0x11t
    .end array-data

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5809
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.6::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v5, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v6, "android.hardware.radio@1.2::IRadio"

    const-string v7, "android.hardware.radio@1.1::IRadio"

    const-string v8, "android.hardware.radio@1.0::IRadio"

    const-string v9, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 5823
    const-string v0, "vendor.mediatek.hardware.radio@3.6::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5849
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5869
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5870
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

    .line 5898
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    .line 10981
    :cond_0
    :goto_0
    move-object v14, v12

    goto/16 :goto_d

    .line 10972
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 10973
    .local v1, "_hidl_is_oneway":Z
    :cond_1
    if-eqz v1, :cond_0

    .line 10974
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10976
    goto :goto_0

    .line 10959
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 10960
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2
    if-eq v1, v2, :cond_3

    .line 10961
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10962
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10963
    goto :goto_0

    .line 10964
    :cond_3
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10966
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->notifySyspropsChanged()V

    .line 10967
    goto :goto_0

    .line 10943
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 10944
    .local v2, "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 10945
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10947
    goto :goto_0

    .line 10948
    :cond_5
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10950
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 10951
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10952
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 10953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10954
    goto :goto_0

    .line 10928
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 10929
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 10930
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10932
    goto :goto_0

    .line 10933
    :cond_7
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10935
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->ping()V

    .line 10936
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10938
    goto :goto_0

    .line 10918
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 10919
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eqz v1, :cond_0

    .line 10920
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10922
    goto :goto_0

    .line 10905
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9

    move v1, v2

    nop

    .line 10906
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9
    if-eq v1, v2, :cond_a

    .line 10907
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10908
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10909
    goto/16 :goto_0

    .line 10910
    :cond_a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10912
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setHALInstrumentation()V

    .line 10913
    goto/16 :goto_0

    .line 10872
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    move v2, v1

    .line 10873
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_3
    if-eqz v2, :cond_c

    .line 10874
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10876
    goto/16 :goto_0

    .line 10877
    :cond_c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10879
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10880
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10882
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 10884
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 10885
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10886
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10887
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 10888
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_4
    if-ge v1, v4, :cond_d

    .line 10890
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 10891
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10892
    nop

    .line 10888
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10895
    .end local v1    # "_hidl_index_0":I
    :cond_d
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10897
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10899
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10900
    goto/16 :goto_0

    .line 10856
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    move v2, v1

    .line 10857
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_f

    .line 10858
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10860
    goto/16 :goto_0

    .line 10861
    :cond_f
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10863
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10864
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10865
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10866
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10867
    goto/16 :goto_0

    .line 10842
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    move v2, v1

    .line 10843
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_11

    .line 10844
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10846
    goto/16 :goto_0

    .line 10847
    :cond_11
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10849
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10851
    goto/16 :goto_0

    .line 10826
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    move v2, v1

    .line 10827
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_13

    .line 10828
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10830
    goto/16 :goto_0

    .line 10831
    :cond_13
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10833
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10834
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10835
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10837
    goto/16 :goto_0

    .line 10810
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14

    move v1, v2

    nop

    .line 10811
    .local v1, "_hidl_is_oneway":Z
    :cond_14
    if-eq v1, v2, :cond_15

    .line 10812
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10814
    goto/16 :goto_0

    .line 10815
    :cond_15
    const-string v0, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10818
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10819
    .local v2, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10820
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 10821
    goto/16 :goto_0

    .line 10795
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reqType":I
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16

    move v1, v2

    nop

    .line 10796
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v1, v2, :cond_17

    .line 10797
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10799
    goto/16 :goto_0

    .line 10800
    :cond_17
    const-string v0, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;

    move-result-object v0

    .line 10803
    .local v0, "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;

    move-result-object v2

    .line 10804
    .local v2, "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V

    .line 10805
    goto/16 :goto_0

    .line 10779
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18

    move v1, v2

    nop

    .line 10780
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v1, v2, :cond_19

    .line 10781
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10783
    goto/16 :goto_0

    .line 10784
    :cond_19
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10787
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10788
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10789
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupWithReason(III)V

    .line 10790
    goto/16 :goto_0

    .line 10764
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    .end local v3    # "reason":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a

    move v1, v2

    nop

    .line 10765
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v1, v2, :cond_1b

    .line 10766
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10767
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10768
    goto/16 :goto_0

    .line 10769
    :cond_1b
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10772
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10773
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10774
    goto/16 :goto_0

    .line 10749
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c

    move v1, v2

    nop

    .line 10750
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v1, v2, :cond_1d

    .line 10751
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10753
    goto/16 :goto_0

    .line 10754
    :cond_1d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10757
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10758
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10759
    goto/16 :goto_0

    .line 10734
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e

    move v1, v2

    nop

    .line 10735
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v1, v2, :cond_1f

    .line 10736
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10737
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10738
    goto/16 :goto_0

    .line 10739
    :cond_1f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10741
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10742
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10743
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10744
    goto/16 :goto_0

    .line 10718
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20

    move v1, v2

    nop

    .line 10719
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v1, v2, :cond_21

    .line 10720
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10721
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10722
    goto/16 :goto_0

    .line 10723
    :cond_21
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10726
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10727
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10728
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10729
    goto/16 :goto_0

    .line 10702
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 10703
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_23

    .line 10704
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10706
    goto/16 :goto_0

    .line 10707
    :cond_23
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10710
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10711
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10712
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10713
    goto/16 :goto_0

    .line 10687
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24

    move v1, v2

    nop

    .line 10688
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v1, v2, :cond_25

    .line 10689
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10691
    goto/16 :goto_0

    .line 10692
    :cond_25
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10695
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10696
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10697
    goto/16 :goto_0

    .line 10672
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26

    move v1, v2

    nop

    .line 10673
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v1, v2, :cond_27

    .line 10674
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10676
    goto/16 :goto_0

    .line 10677
    :cond_27
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10680
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10681
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10682
    goto/16 :goto_0

    .line 10657
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28

    move v1, v2

    nop

    .line 10658
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v1, v2, :cond_29

    .line 10659
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10661
    goto/16 :goto_0

    .line 10662
    :cond_29
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10664
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10665
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10666
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSilentReboot(II)V

    .line 10667
    goto/16 :goto_0

    .line 10642
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2a

    move v1, v2

    nop

    .line 10643
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v1, v2, :cond_2b

    .line 10644
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10645
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10646
    goto/16 :goto_0

    .line 10647
    :cond_2b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10649
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10650
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10651
    .local v2, "simMode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportSimMode(II)V

    .line 10652
    goto/16 :goto_0

    .line 10627
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simMode":I
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2c

    move v1, v2

    nop

    .line 10628
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v1, v2, :cond_2d

    .line 10629
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10631
    goto/16 :goto_0

    .line 10632
    :cond_2d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10635
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10636
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10637
    goto/16 :goto_0

    .line 10613
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2e

    move v1, v2

    nop

    .line 10614
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v1, v2, :cond_2f

    .line 10615
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10617
    goto/16 :goto_0

    .line 10618
    :cond_2f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10621
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10622
    goto/16 :goto_0

    .line 10598
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_30

    move v1, v2

    nop

    .line 10599
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v1, v2, :cond_31

    .line 10600
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10602
    goto/16 :goto_0

    .line 10603
    :cond_31
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10606
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10607
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10608
    goto/16 :goto_0

    .line 10584
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_32

    move v1, v2

    nop

    .line 10585
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v1, v2, :cond_33

    .line 10586
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10588
    goto/16 :goto_0

    .line 10589
    :cond_33
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10592
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetAllConnections(I)V

    .line 10593
    goto/16 :goto_0

    .line 10569
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_34

    move v1, v2

    nop

    .line 10570
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v1, v2, :cond_35

    .line 10571
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10573
    goto/16 :goto_0

    .line 10574
    :cond_35
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10577
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10578
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10579
    goto/16 :goto_0

    .line 10554
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_36

    move v1, v2

    nop

    .line 10555
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v1, v2, :cond_37

    .line 10556
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10558
    goto/16 :goto_0

    .line 10559
    :cond_37
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10562
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10563
    .restart local v2    # "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10564
    goto/16 :goto_0

    .line 10539
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    move v1, v2

    nop

    .line 10540
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v1, v2, :cond_39

    .line 10541
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10543
    goto/16 :goto_0

    .line 10544
    :cond_39
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10547
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10548
    .local v2, "featureId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10549
    goto/16 :goto_0

    .line 10523
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3a

    move v1, v2

    nop

    .line 10524
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v1, v2, :cond_3b

    .line 10525
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10527
    goto/16 :goto_0

    .line 10528
    :cond_3b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10531
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10532
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10533
    .local v3, "value":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10534
    goto/16 :goto_0

    .line 10508
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3c

    move v1, v2

    nop

    .line 10509
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v1, v2, :cond_3d

    .line 10510
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10511
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10512
    goto/16 :goto_0

    .line 10513
    :cond_3d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10516
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10517
    .local v2, "configId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10518
    goto/16 :goto_0

    .line 10492
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3e

    move v1, v2

    nop

    .line 10493
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v1, v2, :cond_3f

    .line 10494
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10496
    goto/16 :goto_0

    .line 10497
    :cond_3f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10500
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10501
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10502
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10503
    goto/16 :goto_0

    .line 10476
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_40

    move v1, v2

    nop

    .line 10477
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v1, v2, :cond_41

    .line 10478
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10480
    goto/16 :goto_0

    .line 10481
    :cond_41
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10484
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10485
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10486
    .local v3, "network":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10487
    goto/16 :goto_0

    .line 10458
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_42

    move v1, v2

    nop

    :cond_42
    move v6, v1

    .line 10459
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_43

    .line 10460
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10462
    goto/16 :goto_0

    .line 10463
    :cond_43
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10466
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10467
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10468
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10469
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10470
    .local v11, "isLast":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10471
    goto/16 :goto_0

    .line 10443
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_44

    move v1, v2

    nop

    .line 10444
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v1, v2, :cond_45

    .line 10445
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10447
    goto/16 :goto_0

    .line 10448
    :cond_45
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10451
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10452
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10453
    goto/16 :goto_0

    .line 10429
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_46

    move v1, v2

    nop

    .line 10430
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v1, v2, :cond_47

    .line 10431
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10433
    goto/16 :goto_0

    .line 10434
    :cond_47
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10437
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getApcInfo(I)V

    .line 10438
    goto/16 :goto_0

    .line 10412
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_48

    move v1, v2

    nop

    .line 10413
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_48
    if-eq v1, v2, :cond_49

    .line 10414
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10416
    goto/16 :goto_0

    .line 10417
    :cond_49
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10420
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10421
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10422
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10423
    .local v4, "interval":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setApcMode(IIII)V

    .line 10424
    goto/16 :goto_0

    .line 10395
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4a

    move v1, v2

    nop

    .line 10396
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v1, v2, :cond_4b

    .line 10397
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10399
    goto/16 :goto_0

    .line 10400
    :cond_4b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10403
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10404
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10405
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10406
    .local v4, "pktloss":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10407
    goto/16 :goto_0

    .line 10375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4c

    move v1, v2

    nop

    :cond_4c
    move v8, v1

    .line 10376
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_4d

    .line 10377
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10379
    goto/16 :goto_0

    .line 10380
    :cond_4d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10383
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10384
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10385
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10386
    .local v16, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 10387
    .local v17, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10388
    .local v18, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 10389
    .local v19, "dstPort":I
    move-object v0, v13

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10390
    goto/16 :goto_0

    .line 10360
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v16    # "srcIp":Ljava/lang/String;
    .end local v17    # "srcPort":I
    .end local v18    # "dstIp":Ljava/lang/String;
    .end local v19    # "dstPort":I
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4e

    move v1, v2

    nop

    .line 10361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v1, v2, :cond_4f

    .line 10362
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10364
    goto/16 :goto_0

    .line 10365
    :cond_4f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10369
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10370
    goto/16 :goto_0

    .line 10335
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_50

    move v1, v2

    nop

    :cond_50
    move v11, v1

    .line 10336
    .local v11, "_hidl_is_oneway":Z
    if-eq v11, v2, :cond_51

    .line 10337
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10339
    goto/16 :goto_0

    .line 10340
    :cond_51
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10342
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10343
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10344
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10345
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10346
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10347
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10348
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10349
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10350
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10351
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10352
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10353
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10354
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10355
    goto/16 :goto_d

    .line 10318
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
    :pswitch_1f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_52

    move v1, v2

    nop

    .line 10319
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v1, v2, :cond_53

    .line 10320
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10322
    goto/16 :goto_d

    .line 10323
    :cond_53
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10326
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10327
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10328
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10329
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10330
    goto/16 :goto_d

    .line 10302
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_20
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_54

    move v1, v2

    nop

    .line 10303
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v1, v2, :cond_55

    .line 10304
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10306
    goto/16 :goto_d

    .line 10307
    :cond_55
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10310
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10311
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10312
    .local v3, "snr":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10313
    goto/16 :goto_d

    .line 10284
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_21
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_56

    move v1, v2

    nop

    :cond_56
    move v6, v1

    .line 10285
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_57

    .line 10286
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10288
    goto/16 :goto_d

    .line 10289
    :cond_57
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10292
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10293
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10294
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10295
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10296
    .local v11, "apMac":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10297
    goto/16 :goto_d

    .line 10267
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_22
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_58

    move v1, v2

    nop

    .line 10268
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v1, v2, :cond_59

    .line 10269
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10271
    goto/16 :goto_d

    .line 10272
    :cond_59
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10275
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10276
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10277
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10278
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10279
    goto/16 :goto_d

    .line 10252
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_23
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5a

    move v1, v2

    nop

    .line 10253
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v1, v2, :cond_5b

    .line 10254
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10256
    goto/16 :goto_d

    .line 10257
    :cond_5b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10260
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10261
    .local v2, "vdp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10262
    goto/16 :goto_d

    .line 10237
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "vdp":I
    :pswitch_24
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    move v1, v2

    nop

    .line 10238
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v1, v2, :cond_5d

    .line 10239
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10241
    goto/16 :goto_d

    .line 10242
    :cond_5d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10245
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10246
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setE911State(II)V

    .line 10247
    goto/16 :goto_d

    .line 10221
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_25
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5e

    move v1, v2

    nop

    .line 10222
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v1, v2, :cond_5f

    .line 10223
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10225
    goto/16 :goto_d

    .line 10226
    :cond_5f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10229
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10230
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10231
    .local v3, "interfaceId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10232
    goto/16 :goto_d

    .line 10206
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_26
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_60

    move v1, v2

    nop

    .line 10207
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v1, v2, :cond_61

    .line 10208
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10210
    goto/16 :goto_d

    .line 10211
    :cond_61
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10214
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10215
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10216
    goto/16 :goto_d

    .line 10191
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_27
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_62

    move v1, v2

    nop

    .line 10192
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v1, v2, :cond_63

    .line 10193
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10194
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10195
    goto/16 :goto_d

    .line 10196
    :cond_63
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10199
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10200
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10201
    goto/16 :goto_d

    .line 10176
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_28
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_64

    move v1, v2

    nop

    .line 10177
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v1, v2, :cond_65

    .line 10178
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10180
    goto/16 :goto_d

    .line 10181
    :cond_65
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10184
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10185
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10186
    goto/16 :goto_d

    .line 10161
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_29
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_66

    move v1, v2

    nop

    .line 10162
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v1, v2, :cond_67

    .line 10163
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10165
    goto/16 :goto_d

    .line 10166
    :cond_67
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10169
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10170
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10171
    goto/16 :goto_d

    .line 10147
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_68

    move v1, v2

    nop

    .line 10148
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v1, v2, :cond_69

    .line 10149
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10151
    goto/16 :goto_d

    .line 10152
    :cond_69
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10155
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->restartRILD(I)V

    .line 10156
    goto/16 :goto_d

    .line 10133
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6a

    move v1, v2

    nop

    .line 10134
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v1, v2, :cond_6b

    .line 10135
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10136
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10137
    goto/16 :goto_d

    .line 10138
    :cond_6b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10141
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetRadio(I)V

    .line 10142
    goto/16 :goto_d

    .line 10118
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6c

    move v1, v2

    nop

    .line 10119
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v1, v2, :cond_6d

    .line 10120
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10121
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10122
    goto/16 :goto_d

    .line 10123
    :cond_6d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10125
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10126
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10127
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10128
    goto/16 :goto_d

    .line 10103
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6e

    move v1, v2

    nop

    .line 10104
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v1, v2, :cond_6f

    .line 10105
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10107
    goto/16 :goto_d

    .line 10108
    :cond_6f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v0

    .line 10111
    .local v0, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10112
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10113
    goto/16 :goto_d

    .line 10088
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_70

    move v1, v2

    nop

    .line 10089
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v1, v2, :cond_71

    .line 10090
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10091
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10092
    goto/16 :goto_d

    .line 10093
    :cond_71
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10095
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10096
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10097
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10098
    goto/16 :goto_d

    .line 10073
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_72

    move v1, v2

    nop

    .line 10074
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v1, v2, :cond_73

    .line 10075
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10076
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10077
    goto/16 :goto_d

    .line 10078
    :cond_73
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10081
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10082
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10083
    goto/16 :goto_d

    .line 10058
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_30
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_74

    move v1, v2

    nop

    .line 10059
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v1, v2, :cond_75

    .line 10060
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10062
    goto/16 :goto_d

    .line 10063
    :cond_75
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10066
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10067
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10068
    goto/16 :goto_d

    .line 10043
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_31
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_76

    move v1, v2

    nop

    .line 10044
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v1, v2, :cond_77

    .line 10045
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10046
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10047
    goto/16 :goto_d

    .line 10048
    :cond_77
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10050
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10051
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10052
    .local v2, "resultCode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10053
    goto/16 :goto_d

    .line 10028
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resultCode":I
    :pswitch_32
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_78

    move v1, v2

    nop

    .line 10029
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_78
    if-eq v1, v2, :cond_79

    .line 10030
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10031
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10032
    goto/16 :goto_d

    .line 10033
    :cond_79
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10035
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10036
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10037
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setTrm(II)V

    .line 10038
    goto/16 :goto_d

    .line 10011
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_33
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7a

    move v1, v2

    nop

    .line 10012
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v1, v2, :cond_7b

    .line 10013
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10015
    goto/16 :goto_d

    .line 10016
    :cond_7b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10019
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10020
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10021
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10022
    .local v4, "param2":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setFdMode(IIII)V

    .line 10023
    goto/16 :goto_d

    .line 9994
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_34
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7c

    move v1, v2

    nop

    .line 9995
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v1, v2, :cond_7d

    .line 9996
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9997
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9998
    goto/16 :goto_d

    .line 9999
    :cond_7d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10002
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10003
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10004
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10005
    .local v4, "nAct":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10006
    goto/16 :goto_d

    .line 9980
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_35
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7e

    move v1, v2

    nop

    .line 9981
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7e
    if-eq v1, v2, :cond_7f

    .line 9982
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9984
    goto/16 :goto_d

    .line 9985
    :cond_7f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9988
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCurrentPOLList(I)V

    .line 9989
    goto/16 :goto_d

    .line 9966
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_36
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 9967
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eq v1, v2, :cond_81

    .line 9968
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9970
    goto/16 :goto_d

    .line 9971
    :cond_81
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9974
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPOLCapability(I)V

    .line 9975
    goto/16 :goto_d

    .line 9951
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_37
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_82

    move v1, v2

    nop

    .line 9952
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_82
    if-eq v1, v2, :cond_83

    .line 9953
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9955
    goto/16 :goto_d

    .line 9956
    :cond_83
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9959
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9960
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getRxTestResult(II)V

    .line 9961
    goto/16 :goto_d

    .line 9936
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_38
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_84

    move v1, v2

    nop

    .line 9937
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v1, v2, :cond_85

    .line 9938
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9940
    goto/16 :goto_d

    .line 9941
    :cond_85
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9944
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9945
    .local v2, "antType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRxTestConfig(II)V

    .line 9946
    goto/16 :goto_d

    .line 9916
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "antType":I
    :pswitch_39
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_86

    move v1, v2

    nop

    :cond_86
    move v8, v1

    .line 9917
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_87

    .line 9918
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9920
    goto/16 :goto_d

    .line 9921
    :cond_87
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9924
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9925
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9926
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9927
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9928
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9929
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9930
    .local v18, "rilDataRegState":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9931
    goto/16 :goto_d

    .line 9901
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_3a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_88

    move v1, v2

    nop

    .line 9902
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v1, v2, :cond_89

    .line 9903
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9905
    goto/16 :goto_d

    .line 9906
    :cond_89
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9909
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9910
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9911
    goto/16 :goto_d

    .line 9887
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_3b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8a

    move v1, v2

    nop

    .line 9888
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v1, v2, :cond_8b

    .line 9889
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9891
    goto/16 :goto_d

    .line 9892
    :cond_8b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9895
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9896
    goto/16 :goto_d

    .line 9870
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8c

    move v1, v2

    nop

    .line 9871
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v1, v2, :cond_8d

    .line 9872
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9874
    goto/16 :goto_d

    .line 9875
    :cond_8d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9878
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9879
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9880
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9881
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9882
    goto/16 :goto_d

    .line 9856
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_3d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8e

    move v1, v2

    nop

    .line 9857
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v1, v2, :cond_8f

    .line 9858
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9860
    goto/16 :goto_d

    .line 9861
    :cond_8f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9864
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->abortFemtocellList(I)V

    .line 9865
    goto/16 :goto_d

    .line 9842
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 9843
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_91

    .line 9844
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9846
    goto/16 :goto_d

    .line 9847
    :cond_91
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9850
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getFemtocellList(I)V

    .line 9851
    goto/16 :goto_d

    .line 9828
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_92

    move v1, v2

    nop

    .line 9829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v1, v2, :cond_93

    .line 9830
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9832
    goto/16 :goto_d

    .line 9833
    :cond_93
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9836
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9837
    goto/16 :goto_d

    .line 9814
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_40
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_94

    move v1, v2

    nop

    .line 9815
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v1, v2, :cond_95

    .line 9816
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9818
    goto/16 :goto_d

    .line 9819
    :cond_95
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9822
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9823
    goto/16 :goto_d

    .line 9800
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_41
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_96

    move v1, v2

    nop

    .line 9801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_96
    if-eq v1, v2, :cond_97

    .line 9802
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9804
    goto/16 :goto_d

    .line 9805
    :cond_97
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9808
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9809
    goto/16 :goto_d

    .line 9783
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_42
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_98

    move v1, v2

    nop

    .line 9784
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_98
    if-eq v1, v2, :cond_99

    .line 9785
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9787
    goto/16 :goto_d

    .line 9788
    :cond_99
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9791
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9792
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9793
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9794
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9795
    goto/16 :goto_d

    .line 9769
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_43
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9a

    move v1, v2

    nop

    .line 9770
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9a
    if-eq v1, v2, :cond_9b

    .line 9771
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9773
    goto/16 :goto_d

    .line 9774
    :cond_9b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9777
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9778
    goto/16 :goto_d

    .line 9754
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_44
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9c

    move v1, v2

    nop

    .line 9755
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9c
    if-eq v1, v2, :cond_9d

    .line 9756
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9758
    goto/16 :goto_d

    .line 9759
    :cond_9d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9762
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9763
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reloadModemType(II)V

    .line 9764
    goto/16 :goto_d

    .line 9739
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_45
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9e

    move v1, v2

    nop

    .line 9740
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9e
    if-eq v1, v2, :cond_9f

    .line 9741
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9743
    goto/16 :goto_d

    .line 9744
    :cond_9f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9747
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9748
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->storeModemType(II)V

    .line 9749
    goto/16 :goto_d

    .line 9724
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_46
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a0

    move v1, v2

    nop

    .line 9725
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a0
    if-eq v1, v2, :cond_a1

    .line 9726
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9728
    goto/16 :goto_d

    .line 9729
    :cond_a1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9732
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9733
    .local v2, "sessionId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResumeRegistration(II)V

    .line 9734
    goto/16 :goto_d

    .line 9709
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionId":I
    :pswitch_47
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a2

    move v1, v2

    nop

    .line 9710
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a2
    if-eq v1, v2, :cond_a3

    .line 9711
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9713
    goto/16 :goto_d

    .line 9714
    :cond_a3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9717
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9718
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9719
    goto/16 :goto_d

    .line 9694
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_48
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a4

    move v1, v2

    nop

    .line 9695
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a4
    if-eq v1, v2, :cond_a5

    .line 9696
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9698
    goto/16 :goto_d

    .line 9699
    :cond_a5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9702
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9703
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9704
    goto/16 :goto_d

    .line 9678
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_49
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    move v1, v2

    nop

    .line 9679
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a6
    if-eq v1, v2, :cond_a7

    .line 9680
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9682
    goto/16 :goto_d

    .line 9683
    :cond_a7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9686
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9687
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9688
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9689
    goto/16 :goto_d

    .line 9662
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a8

    move v1, v2

    nop

    .line 9663
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a8
    if-eq v1, v2, :cond_a9

    .line 9664
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9666
    goto/16 :goto_d

    .line 9667
    :cond_a9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9670
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9671
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9672
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9673
    goto/16 :goto_d

    .line 9648
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_4b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_aa

    move v1, v2

    nop

    .line 9649
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_aa
    if-eq v1, v2, :cond_ab

    .line 9650
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9652
    goto/16 :goto_d

    .line 9653
    :cond_ab
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9656
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9657
    goto/16 :goto_d

    .line 9632
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ac

    move v1, v2

    nop

    .line 9633
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ac
    if-eq v1, v2, :cond_ad

    .line 9634
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9636
    goto/16 :goto_d

    .line 9637
    :cond_ad
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9640
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9641
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9642
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9643
    goto/16 :goto_d

    .line 9618
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ae

    move v1, v2

    nop

    .line 9619
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ae
    if-eq v1, v2, :cond_af

    .line 9620
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9622
    goto/16 :goto_d

    .line 9623
    :cond_af
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9626
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9627
    goto/16 :goto_d

    .line 9604
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b0

    move v1, v2

    nop

    .line 9605
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b0
    if-eq v1, v2, :cond_b1

    .line 9606
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9608
    goto/16 :goto_d

    .line 9609
    :cond_b1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9612
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9613
    goto/16 :goto_d

    .line 9589
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b2

    move v1, v2

    nop

    .line 9590
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b2
    if-eq v1, v2, :cond_b3

    .line 9591
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9593
    goto/16 :goto_d

    .line 9594
    :cond_b3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9597
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9598
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9599
    goto/16 :goto_d

    .line 9573
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_50
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b4

    move v1, v2

    nop

    .line 9574
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b4
    if-eq v1, v2, :cond_b5

    .line 9575
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9577
    goto/16 :goto_d

    .line 9578
    :cond_b5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9580
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9581
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9582
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9583
    .local v3, "serialId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->removeCbMsg(III)V

    .line 9584
    goto/16 :goto_d

    .line 9558
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_51
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b6

    move v1, v2

    nop

    .line 9559
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b6
    if-eq v1, v2, :cond_b7

    .line 9560
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9562
    goto/16 :goto_d

    .line 9563
    :cond_b7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9566
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9567
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEtws(II)V

    .line 9568
    goto/16 :goto_d

    .line 9544
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_52
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b8

    move v1, v2

    nop

    .line 9545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b8
    if-eq v1, v2, :cond_b9

    .line 9546
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9548
    goto/16 :goto_d

    .line 9549
    :cond_b9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9552
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9553
    goto/16 :goto_d

    .line 9528
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_53
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ba

    move v1, v2

    nop

    .line 9529
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ba
    if-eq v1, v2, :cond_bb

    .line 9530
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9532
    goto/16 :goto_d

    .line 9533
    :cond_bb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9536
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9537
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9538
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9539
    goto/16 :goto_d

    .line 9514
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_54
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bc

    move v1, v2

    nop

    .line 9515
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bc
    if-eq v1, v2, :cond_bd

    .line 9516
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9518
    goto/16 :goto_d

    .line 9519
    :cond_bd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9522
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmsParameters(I)V

    .line 9523
    goto/16 :goto_d

    .line 9495
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_55
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_be

    move v1, v2

    nop

    :cond_be
    move v7, v1

    .line 9496
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_bf

    .line 9497
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9499
    goto/16 :goto_d

    .line 9500
    :cond_bf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9503
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9504
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9505
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9506
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9507
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9508
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, v13

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9509
    goto/16 :goto_d

    .line 9478
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_56
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c0

    move v1, v2

    nop

    .line 9479
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c0
    if-eq v1, v2, :cond_c1

    .line 9480
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9482
    goto/16 :goto_d

    .line 9483
    :cond_c1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9486
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9487
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9488
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9489
    .local v4, "simType":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9490
    goto/16 :goto_d

    .line 9462
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_57
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c2

    move v1, v2

    nop

    .line 9463
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v1, v2, :cond_c3

    .line 9464
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9466
    goto/16 :goto_d

    .line 9467
    :cond_c3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9470
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9471
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9472
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9473
    goto/16 :goto_d

    .line 9442
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_58
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c4

    move v1, v2

    nop

    :cond_c4
    move v8, v1

    .line 9443
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_c5

    .line 9444
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9446
    goto/16 :goto_d

    .line 9447
    :cond_c5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9450
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9451
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9452
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9453
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9454
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9455
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9456
    .local v18, "gid2":Ljava/lang/String;
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9457
    goto/16 :goto_d

    .line 9427
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_59
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c6

    move v1, v2

    nop

    .line 9428
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c6
    if-eq v1, v2, :cond_c7

    .line 9429
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9431
    goto/16 :goto_d

    .line 9432
    :cond_c7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9435
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9436
    .local v2, "category":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryNetworkLock(II)V

    .line 9437
    goto/16 :goto_d

    .line 9411
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "category":I
    :pswitch_5a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c8

    move v1, v2

    nop

    .line 9412
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c8
    if-eq v1, v2, :cond_c9

    .line 9413
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9414
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9415
    goto/16 :goto_d

    .line 9416
    :cond_c9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9419
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9420
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9421
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9422
    goto/16 :goto_d

    .line 9396
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_5b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ca

    move v1, v2

    nop

    .line 9397
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ca
    if-eq v1, v2, :cond_cb

    .line 9398
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9400
    goto/16 :goto_d

    .line 9401
    :cond_cb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9404
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9405
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSimPower(II)V

    .line 9406
    goto/16 :goto_d

    .line 9382
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cc

    move v1, v2

    nop

    .line 9383
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cc
    if-eq v1, v2, :cond_cd

    .line 9384
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9386
    goto/16 :goto_d

    .line 9387
    :cond_cd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9390
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getIccid(I)V

    .line 9391
    goto/16 :goto_d

    .line 9368
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ce

    move v1, v2

    nop

    .line 9369
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ce
    if-eq v1, v2, :cond_cf

    .line 9370
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9372
    goto/16 :goto_d

    .line 9373
    :cond_cf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9376
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getATR(I)V

    .line 9377
    goto/16 :goto_d

    .line 9353
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d0

    move v1, v2

    nop

    .line 9354
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d0
    if-eq v1, v2, :cond_d1

    .line 9355
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9356
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9357
    goto/16 :goto_d

    .line 9358
    :cond_d1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9360
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9361
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9362
    .restart local v2    # "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9363
    goto/16 :goto_d

    .line 9338
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d2

    move v1, v2

    nop

    .line 9339
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d2
    if-eq v1, v2, :cond_d3

    .line 9340
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9342
    goto/16 :goto_d

    .line 9343
    :cond_d3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9346
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9347
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setModemPower(IZ)V

    .line 9348
    goto/16 :goto_d

    .line 9323
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_60
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d4

    move v1, v2

    nop

    .line 9324
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d4
    if-eq v1, v2, :cond_d5

    .line 9325
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9327
    goto/16 :goto_d

    .line 9328
    :cond_d5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9331
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9332
    .local v2, "ready":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPhonebookReady(II)V

    .line 9333
    goto/16 :goto_d

    .line 9307
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ready":I
    :pswitch_61
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d6

    move v1, v2

    nop

    .line 9308
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d6
    if-eq v1, v2, :cond_d7

    .line 9309
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9311
    goto/16 :goto_d

    .line 9312
    :cond_d7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9314
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9315
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9316
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9317
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBAasList(III)V

    .line 9318
    goto/16 :goto_d

    .line 9291
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_62
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d8

    move v1, v2

    nop

    .line 9292
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d8
    if-eq v1, v2, :cond_d9

    .line 9293
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9295
    goto/16 :goto_d

    .line 9296
    :cond_d9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9299
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9300
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9301
    .local v3, "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9302
    goto/16 :goto_d

    .line 9275
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

    .line 9276
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_da
    if-eq v1, v2, :cond_db

    .line 9277
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9279
    goto/16 :goto_d

    .line 9280
    :cond_db
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9283
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9284
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9285
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9286
    goto/16 :goto_d

    .line 9259
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_64
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dc

    move v1, v2

    nop

    .line 9260
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dc
    if-eq v1, v2, :cond_dd

    .line 9261
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9262
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9263
    goto/16 :goto_d

    .line 9264
    :cond_dd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9267
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9268
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9269
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9270
    goto/16 :goto_d

    .line 9243
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_65
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_de

    move v1, v2

    nop

    .line 9244
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_de
    if-eq v1, v2, :cond_df

    .line 9245
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9246
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9247
    goto/16 :goto_d

    .line 9248
    :cond_df
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9251
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9252
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9253
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9254
    goto/16 :goto_d

    .line 9227
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_66
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e0

    move v1, v2

    nop

    .line 9228
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e0
    if-eq v1, v2, :cond_e1

    .line 9229
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9230
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9231
    goto/16 :goto_d

    .line 9232
    :cond_e1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9235
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9236
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9237
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9238
    goto/16 :goto_d

    .line 9211
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_67
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e2

    move v1, v2

    nop

    .line 9212
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e2
    if-eq v1, v2, :cond_e3

    .line 9213
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9215
    goto/16 :goto_d

    .line 9216
    :cond_e3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9219
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9220
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9221
    .local v3, "index2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9222
    goto/16 :goto_d

    .line 9195
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_68
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e4

    move v1, v2

    nop

    .line 9196
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e4
    if-eq v1, v2, :cond_e5

    .line 9197
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9199
    goto/16 :goto_d

    .line 9200
    :cond_e5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9203
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9204
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9205
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9206
    goto/16 :goto_d

    .line 9181
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_69
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e6

    move v1, v2

    nop

    .line 9182
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e6
    if-eq v1, v2, :cond_e7

    .line 9183
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9185
    goto/16 :goto_d

    .line 9186
    :cond_e7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9189
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9190
    goto/16 :goto_d

    .line 9167
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e8

    move v1, v2

    nop

    .line 9168
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e8
    if-eq v1, v2, :cond_e9

    .line 9169
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9171
    goto/16 :goto_d

    .line 9172
    :cond_e9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9175
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9176
    goto/16 :goto_d

    .line 9151
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ea

    move v1, v2

    nop

    .line 9152
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ea
    if-eq v1, v2, :cond_eb

    .line 9153
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9155
    goto/16 :goto_d

    .line 9156
    :cond_eb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9159
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9160
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9161
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9162
    goto/16 :goto_d

    .line 9136
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ec

    move v1, v2

    nop

    .line 9137
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ec
    if-eq v1, v2, :cond_ed

    .line 9138
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9140
    goto/16 :goto_d

    .line 9141
    :cond_ed
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9144
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9145
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9146
    goto/16 :goto_d

    .line 9120
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    :pswitch_6d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ee

    move v1, v2

    nop

    .line 9121
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ee
    if-eq v1, v2, :cond_ef

    .line 9122
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9124
    goto/16 :goto_d

    .line 9125
    :cond_ef
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9128
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9129
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9130
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readUPBGasList(III)V

    .line 9131
    goto/16 :goto_d

    .line 9103
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f0

    move v1, v2

    nop

    .line 9104
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f0
    if-eq v1, v2, :cond_f1

    .line 9105
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9107
    goto/16 :goto_d

    .line 9108
    :cond_f1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9111
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9112
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9113
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9114
    .local v4, "entryIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9115
    goto/16 :goto_d

    .line 9088
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f2

    move v1, v2

    nop

    .line 9089
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f2
    if-eq v1, v2, :cond_f3

    .line 9090
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9091
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9092
    goto/16 :goto_d

    .line 9093
    :cond_f3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9095
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9096
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9097
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9098
    goto/16 :goto_d

    .line 9074
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_70
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f4

    move v1, v2

    nop

    .line 9075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f4
    if-eq v1, v2, :cond_f5

    .line 9076
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9078
    goto/16 :goto_d

    .line 9079
    :cond_f5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9082
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryUPBCapability(I)V

    .line 9083
    goto/16 :goto_d

    .line 9057
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_71
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f6

    move v1, v2

    nop

    .line 9058
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f6
    if-eq v1, v2, :cond_f7

    .line 9059
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9061
    goto/16 :goto_d

    .line 9062
    :cond_f7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9065
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9066
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9067
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9068
    .local v4, "eIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9069
    goto/16 :goto_d

    .line 9041
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_72
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f8

    move v1, v2

    nop

    .line 9042
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v1, v2, :cond_f9

    .line 9043
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9045
    goto/16 :goto_d

    .line 9046
    :cond_f9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9049
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9050
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9051
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9052
    goto/16 :goto_d

    .line 9026
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_73
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fa

    move v1, v2

    nop

    .line 9027
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fa
    if-eq v1, v2, :cond_fb

    .line 9028
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9029
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9030
    goto/16 :goto_d

    .line 9031
    :cond_fb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9034
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9035
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9036
    goto/16 :goto_d

    .line 9012
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_74
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fc

    move v1, v2

    nop

    .line 9013
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fc
    if-eq v1, v2, :cond_fd

    .line 9014
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9015
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9016
    goto/16 :goto_d

    .line 9017
    :cond_fd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9020
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getEccNum(I)V

    .line 9021
    goto/16 :goto_d

    .line 8996
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_75
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    move v1, v2

    nop

    .line 8997
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fe
    if-eq v1, v2, :cond_ff

    .line 8998
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9000
    goto/16 :goto_d

    .line 9001
    :cond_ff
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9004
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9005
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9006
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9007
    goto/16 :goto_d

    .line 8981
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_76
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_100

    move v1, v2

    nop

    .line 8982
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_100
    if-eq v1, v2, :cond_101

    .line 8983
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8985
    goto/16 :goto_d

    .line 8986
    :cond_101
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8988
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8989
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8990
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 8991
    goto/16 :goto_d

    .line 8966
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_77
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_102

    move v1, v2

    nop

    .line 8967
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_102
    if-eq v1, v2, :cond_103

    .line 8968
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8970
    goto/16 :goto_d

    .line 8971
    :cond_103
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8974
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8975
    .local v2, "phoneType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->eccPreferredRat(II)V

    .line 8976
    goto/16 :goto_d

    .line 8950
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneType":I
    :pswitch_78
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_104

    move v1, v2

    nop

    .line 8951
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_104
    if-eq v1, v2, :cond_105

    .line 8952
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8954
    goto/16 :goto_d

    .line 8955
    :cond_105
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8958
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8959
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8960
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->currentStatus(III)V

    .line 8961
    goto/16 :goto_d

    .line 8934
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_79
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_106

    move v1, v2

    nop

    .line 8935
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_106
    if-eq v1, v2, :cond_107

    .line 8936
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8938
    goto/16 :goto_d

    .line 8939
    :cond_107
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8941
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8942
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8943
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8944
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 8945
    goto/16 :goto_d

    .line 8919
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_7a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_108

    move v1, v2

    nop

    .line 8920
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_108
    if-eq v1, v2, :cond_109

    .line 8921
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8923
    goto/16 :goto_d

    .line 8924
    :cond_109
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8927
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8928
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8929
    goto/16 :goto_d

    .line 8903
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceCategory":I
    :pswitch_7b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10a

    move v1, v2

    nop

    .line 8904
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10a
    if-eq v1, v2, :cond_10b

    .line 8905
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8907
    goto/16 :goto_d

    .line 8908
    :cond_10b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8911
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8912
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8913
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8914
    goto/16 :goto_d

    .line 8886
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10c

    move v1, v2

    nop

    .line 8887
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10c
    if-eq v1, v2, :cond_10d

    .line 8888
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8889
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8890
    goto/16 :goto_d

    .line 8891
    :cond_10d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8894
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8895
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8896
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8897
    .local v4, "seqNumber":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallIndication(IIII)V

    .line 8898
    goto/16 :goto_d

    .line 8872
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_7d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10e

    move v1, v2

    nop

    .line 8873
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10e
    if-eq v1, v2, :cond_10f

    .line 8874
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8876
    goto/16 :goto_d

    .line 8877
    :cond_10f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8880
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupAll(I)V

    .line 8881
    goto/16 :goto_d

    .line 8857
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_110

    move v1, v2

    nop

    .line 8858
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_110
    if-eq v1, v2, :cond_111

    .line 8859
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8861
    goto/16 :goto_d

    .line 8862
    :cond_111
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8865
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8866
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8867
    goto/16 :goto_d

    .line 8843
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_112

    move v1, v2

    nop

    .line 8844
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_112
    if-eq v1, v2, :cond_113

    .line 8845
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8847
    goto/16 :goto_d

    .line 8848
    :cond_113
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8851
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resetSuppServ(I)V

    .line 8852
    goto/16 :goto_d

    .line 8829
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_80
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_114

    move v1, v2

    nop

    .line 8830
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_114
    if-eq v1, v2, :cond_115

    .line 8831
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8833
    goto/16 :goto_d

    .line 8834
    :cond_115
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8837
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getXcapStatus(I)V

    .line 8838
    goto/16 :goto_d

    .line 8815
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_81
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_116

    move v1, v2

    nop

    .line 8816
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_116
    if-eq v1, v2, :cond_117

    .line 8817
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8819
    goto/16 :goto_d

    .line 8820
    :cond_117
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8823
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->cancelUssi(I)V

    .line 8824
    goto/16 :goto_d

    .line 8799
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_82
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_118

    move v1, v2

    nop

    .line 8800
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_118
    if-eq v1, v2, :cond_119

    .line 8801
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8802
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8803
    goto/16 :goto_d

    .line 8804
    :cond_119
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8807
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8808
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8809
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8810
    goto/16 :goto_d

    .line 8781
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_83
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11a

    move v1, v2

    nop

    :cond_11a
    move v6, v1

    .line 8782
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_11b

    .line 8783
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8785
    goto/16 :goto_d

    .line 8786
    :cond_11b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8789
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8790
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8791
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8792
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8793
    .local v11, "netId":I
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8794
    goto/16 :goto_d

    .line 8765
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_84
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11c

    move v1, v2

    nop

    .line 8766
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11c
    if-eq v1, v2, :cond_11d

    .line 8767
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8769
    goto/16 :goto_d

    .line 8770
    :cond_11d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8773
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8774
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8775
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8776
    goto/16 :goto_d

    .line 8749
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_85
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11e

    move v1, v2

    nop

    .line 8750
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11e
    if-eq v1, v2, :cond_11f

    .line 8751
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8753
    goto/16 :goto_d

    .line 8754
    :cond_11f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8757
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8758
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8759
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8760
    goto/16 :goto_d

    .line 8734
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_86
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_120

    move v1, v2

    nop

    .line 8735
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_120
    if-eq v1, v2, :cond_121

    .line 8736
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8737
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8738
    goto/16 :goto_d

    .line 8739
    :cond_121
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8741
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8742
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8743
    .local v2, "colrEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setColr(II)V

    .line 8744
    goto/16 :goto_d

    .line 8719
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrEnable":I
    :pswitch_87
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_122

    move v1, v2

    nop

    .line 8720
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_122
    if-eq v1, v2, :cond_123

    .line 8721
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8723
    goto/16 :goto_d

    .line 8724
    :cond_123
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8727
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8728
    .local v2, "colpEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setColp(II)V

    .line 8729
    goto/16 :goto_d

    .line 8704
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colpEnable":I
    :pswitch_88
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_124

    move v1, v2

    nop

    .line 8705
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_124
    if-eq v1, v2, :cond_125

    .line 8706
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8708
    goto/16 :goto_d

    .line 8709
    :cond_125
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8712
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8713
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8714
    goto/16 :goto_d

    .line 8690
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_89
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_126

    move v1, v2

    nop

    .line 8691
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_126
    if-eq v1, v2, :cond_127

    .line 8692
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8694
    goto/16 :goto_d

    .line 8695
    :cond_127
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8697
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8698
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getColr(I)V

    .line 8699
    goto/16 :goto_d

    .line 8676
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_128

    move v1, v2

    nop

    .line 8677
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_128
    if-eq v1, v2, :cond_129

    .line 8678
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8679
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8680
    goto/16 :goto_d

    .line 8681
    :cond_129
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8684
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getColp(I)V

    .line 8685
    goto/16 :goto_d

    .line 8661
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12a

    move v1, v2

    nop

    .line 8662
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12a
    if-eq v1, v2, :cond_12b

    .line 8663
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8665
    goto/16 :goto_d

    .line 8666
    :cond_12b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8669
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8670
    .local v2, "clipEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setClip(II)V

    .line 8671
    goto/16 :goto_d

    .line 8643
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clipEnable":I
    :pswitch_8c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12c

    move v1, v2

    nop

    :cond_12c
    move v6, v1

    .line 8644
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_12d

    .line 8645
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8647
    goto/16 :goto_d

    .line 8648
    :cond_12d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8651
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8652
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8653
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8654
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8655
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8656
    goto/16 :goto_d

    .line 8628
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_8d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12e

    move v1, v2

    nop

    .line 8629
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12e
    if-eq v1, v2, :cond_12f

    .line 8630
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8632
    goto/16 :goto_d

    .line 8633
    :cond_12f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8636
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8637
    .local v2, "phoneId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getRoamingEnable(II)V

    .line 8638
    goto/16 :goto_d

    .line 8613
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    :pswitch_8e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_130

    move v1, v2

    nop

    .line 8614
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_130
    if-eq v1, v2, :cond_131

    .line 8615
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8617
    goto/16 :goto_d

    .line 8618
    :cond_131
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8621
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8622
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8623
    goto/16 :goto_d

    .line 8598
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_132

    move v1, v2

    nop

    .line 8599
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_132
    if-eq v1, v2, :cond_133

    .line 8600
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8602
    goto/16 :goto_d

    .line 8603
    :cond_133
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8606
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8607
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8608
    goto/16 :goto_d

    .line 8584
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_90
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_134

    move v1, v2

    nop

    .line 8585
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_134
    if-eq v1, v2, :cond_135

    .line 8586
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8588
    goto/16 :goto_d

    .line 8589
    :cond_135
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8592
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8593
    goto/16 :goto_d

    .line 8568
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_91
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_136

    move v1, v2

    nop

    .line 8569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_136
    if-eq v1, v2, :cond_137

    .line 8570
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8572
    goto/16 :goto_d

    .line 8573
    :cond_137
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8576
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8577
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8578
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8579
    goto/16 :goto_d

    .line 8551
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_92
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_138

    move v1, v2

    nop

    .line 8552
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_138
    if-eq v1, v2, :cond_139

    .line 8553
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8555
    goto/16 :goto_d

    .line 8556
    :cond_139
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8559
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8560
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8561
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8562
    .local v4, "timer":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8563
    goto/16 :goto_d

    .line 8535
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_93
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13a

    move v1, v2

    nop

    .line 8536
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13a
    if-eq v1, v2, :cond_13b

    .line 8537
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8539
    goto/16 :goto_d

    .line 8540
    :cond_13b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8543
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8544
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8545
    .local v3, "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8546
    goto/16 :goto_d

    .line 8519
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_94
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13c

    move v1, v2

    nop

    .line 8520
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13c
    if-eq v1, v2, :cond_13d

    .line 8521
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8523
    goto/16 :goto_d

    .line 8524
    :cond_13d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8527
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8528
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8529
    .restart local v3    # "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8530
    goto/16 :goto_d

    .line 8504
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_95
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13e

    move v1, v2

    nop

    .line 8505
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13e
    if-eq v1, v2, :cond_13f

    .line 8506
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8507
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8508
    goto/16 :goto_d

    .line 8509
    :cond_13f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8511
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8512
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8513
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->forceReleaseCall(II)V

    .line 8514
    goto/16 :goto_d

    .line 8488
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_96
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_140

    move v1, v2

    nop

    .line 8489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_140
    if-eq v1, v2, :cond_141

    .line 8490
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8492
    goto/16 :goto_d

    .line 8493
    :cond_141
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8496
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8497
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8498
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8499
    goto/16 :goto_d

    .line 8473
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_97
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    move v1, v2

    nop

    .line 8474
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_142
    if-eq v1, v2, :cond_143

    .line 8475
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8477
    goto/16 :goto_d

    .line 8478
    :cond_143
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8481
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8482
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8483
    goto/16 :goto_d

    .line 8458
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_98
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_144

    move v1, v2

    nop

    .line 8459
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_144
    if-eq v1, v2, :cond_145

    .line 8460
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8462
    goto/16 :goto_d

    .line 8463
    :cond_145
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8466
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8467
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8468
    goto/16 :goto_d

    .line 8441
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_99
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_146

    move v1, v2

    nop

    .line 8442
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_146
    if-eq v1, v2, :cond_147

    .line 8443
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8445
    goto/16 :goto_d

    .line 8446
    :cond_147
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8449
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8450
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8451
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8452
    .local v4, "type":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8453
    goto/16 :goto_d

    .line 8425
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_9a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_148

    move v1, v2

    nop

    .line 8426
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_148
    if-eq v1, v2, :cond_149

    .line 8427
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8429
    goto/16 :goto_d

    .line 8430
    :cond_149
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8433
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8434
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8435
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8436
    goto/16 :goto_d

    .line 8410
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_9b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14a

    move v1, v2

    nop

    .line 8411
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14a
    if-eq v1, v2, :cond_14b

    .line 8412
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8414
    goto/16 :goto_d

    .line 8415
    :cond_14b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8417
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8418
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8419
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWfcProfile(II)V

    .line 8420
    goto/16 :goto_d

    .line 8393
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "wfcPreference":I
    :pswitch_9c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14c

    move v1, v2

    nop

    .line 8394
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14c
    if-eq v1, v2, :cond_14d

    .line 8395
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8397
    goto/16 :goto_d

    .line 8398
    :cond_14d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8401
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8402
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8403
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8404
    .local v4, "callToRemove":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8405
    goto/16 :goto_d

    .line 8376
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_9d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14e

    move v1, v2

    nop

    .line 8377
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14e
    if-eq v1, v2, :cond_14f

    .line 8378
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8380
    goto/16 :goto_d

    .line 8381
    :cond_14f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8384
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8385
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8386
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8387
    .local v4, "callToAdd":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8388
    goto/16 :goto_d

    .line 8360
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_150

    move v1, v2

    nop

    .line 8361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_150
    if-eq v1, v2, :cond_151

    .line 8362
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8364
    goto/16 :goto_d

    .line 8365
    :cond_151
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8369
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8370
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8371
    goto/16 :goto_d

    .line 8345
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_152

    move v1, v2

    nop

    .line 8346
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_152
    if-eq v1, v2, :cond_153

    .line 8347
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8349
    goto/16 :goto_d

    .line 8350
    :cond_153
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8353
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8354
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8355
    goto/16 :goto_d

    .line 8325
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_a0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_154

    move v1, v2

    nop

    :cond_154
    move v8, v1

    .line 8326
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_155

    .line 8327
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8329
    goto/16 :goto_d

    .line 8330
    :cond_155
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8333
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8334
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8335
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8336
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8337
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8338
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8339
    .local v18, "eimsEnable":Z
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8340
    goto/16 :goto_d

    .line 8310
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_a1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_156

    move v1, v2

    nop

    .line 8311
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_156
    if-eq v1, v2, :cond_157

    .line 8312
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8314
    goto/16 :goto_d

    .line 8315
    :cond_157
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8318
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8319
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8320
    goto/16 :goto_d

    .line 8295
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_158

    move v1, v2

    nop

    .line 8296
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_158
    if-eq v1, v2, :cond_159

    .line 8297
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8299
    goto/16 :goto_d

    .line 8300
    :cond_159
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8303
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8304
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8305
    goto/16 :goto_d

    .line 8280
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15a

    move v1, v2

    nop

    .line 8281
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15a
    if-eq v1, v2, :cond_15b

    .line 8282
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8283
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8284
    goto/16 :goto_d

    .line 8285
    :cond_15b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8288
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8289
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8290
    goto/16 :goto_d

    .line 8265
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15c

    move v1, v2

    nop

    .line 8266
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15c
    if-eq v1, v2, :cond_15d

    .line 8267
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8269
    goto/16 :goto_d

    .line 8270
    :cond_15d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8273
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8274
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8275
    goto/16 :goto_d

    .line 8250
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15e

    move v1, v2

    nop

    .line 8251
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15e
    if-eq v1, v2, :cond_15f

    .line 8252
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8254
    goto/16 :goto_d

    .line 8255
    :cond_15f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8258
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8259
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8260
    goto/16 :goto_d

    .line 8235
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_160

    move v1, v2

    nop

    .line 8236
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_160
    if-eq v1, v2, :cond_161

    .line 8237
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8239
    goto/16 :goto_d

    .line 8240
    :cond_161
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8243
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8244
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8245
    goto/16 :goto_d

    .line 8220
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_162

    move v1, v2

    nop

    .line 8221
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_162
    if-eq v1, v2, :cond_163

    .line 8222
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8224
    goto/16 :goto_d

    .line 8225
    :cond_163
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8228
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8229
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8230
    goto/16 :goto_d

    .line 8205
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_164

    move v1, v2

    nop

    .line 8206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_164
    if-eq v1, v2, :cond_165

    .line 8207
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8209
    goto/16 :goto_d

    .line 8210
    :cond_165
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8213
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8214
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setImsEnable(IZ)V

    .line 8215
    goto/16 :goto_d

    .line 8190
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    move v1, v2

    nop

    .line 8191
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_166
    if-eq v1, v2, :cond_167

    .line 8192
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8194
    goto/16 :goto_d

    .line 8195
    :cond_167
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8198
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8199
    .local v2, "cause":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsDeregNotification(II)V

    .line 8200
    goto/16 :goto_d

    .line 8175
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cause":I
    :pswitch_aa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_168

    move v1, v2

    nop

    .line 8176
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_168
    if-eq v1, v2, :cond_169

    .line 8177
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8179
    goto/16 :goto_d

    .line 8180
    :cond_169
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8183
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8184
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->resumeCall(II)V

    .line 8185
    goto/16 :goto_d

    .line 8160
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_ab
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16a

    move v1, v2

    nop

    .line 8161
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16a
    if-eq v1, v2, :cond_16b

    .line 8162
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8164
    goto/16 :goto_d

    .line 8165
    :cond_16b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8168
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8169
    .restart local v2    # "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->holdCall(II)V

    .line 8170
    goto/16 :goto_d

    .line 8144
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_ac
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16c

    move v1, v2

    nop

    .line 8145
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16c
    if-eq v1, v2, :cond_16d

    .line 8146
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8148
    goto/16 :goto_d

    .line 8149
    :cond_16d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8152
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8153
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8154
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8155
    goto/16 :goto_d

    .line 8128
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_ad
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16e

    move v1, v2

    nop

    .line 8129
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16e
    if-eq v1, v2, :cond_16f

    .line 8130
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8132
    goto/16 :goto_d

    .line 8133
    :cond_16f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8136
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8137
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8138
    .local v3, "callId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->videoCallAccept(III)V

    .line 8139
    goto/16 :goto_d

    .line 8111
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_ae
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_170

    goto :goto_8

    :cond_170
    move v2, v1

    .line 8112
    .local v2, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_171

    .line 8113
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8114
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8115
    goto/16 :goto_d

    .line 8116
    :cond_171
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v0

    .line 8119
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v3

    .line 8120
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8121
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8123
    goto/16 :goto_d

    .line 8094
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_af
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_172

    goto :goto_9

    :cond_172
    move v2, v1

    .line 8095
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_173

    .line 8096
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8098
    goto/16 :goto_d

    .line 8099
    :cond_173
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v0

    .line 8102
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v3

    .line 8103
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8104
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8106
    goto/16 :goto_d

    .line 8077
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_b0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_174

    goto :goto_a

    :cond_174
    move v2, v1

    .line 8078
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_175

    .line 8079
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8081
    goto/16 :goto_d

    .line 8082
    :cond_175
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v0

    .line 8085
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v3

    .line 8086
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8087
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8089
    goto/16 :goto_d

    .line 8060
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_b1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_176

    goto :goto_b

    :cond_176
    move v2, v1

    .line 8061
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_177

    .line 8062
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8064
    goto/16 :goto_d

    .line 8065
    :cond_177
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v0

    .line 8068
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v3

    .line 8069
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8070
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8071
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8072
    goto/16 :goto_d

    .line 8044
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_178

    move v1, v2

    nop

    .line 8045
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_178
    if-eq v1, v2, :cond_179

    .line 8046
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8048
    goto/16 :goto_d

    .line 8049
    :cond_179
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8052
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8053
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8054
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8055
    goto/16 :goto_d

    .line 8021
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_b3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17a

    move v1, v2

    nop

    :cond_17a
    move v10, v1

    .line 8022
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_17b

    .line 8023
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8025
    goto/16 :goto_d

    .line 8026
    :cond_17b
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8029
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8030
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8031
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8033
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8034
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8035
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8036
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8037
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8038
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
    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8039
    goto/16 :goto_d

    .line 8001
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
    :pswitch_b4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17c

    move v1, v2

    nop

    :cond_17c
    move v8, v1

    .line 8002
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_17d

    .line 8003
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8005
    goto/16 :goto_d

    .line 8006
    :cond_17d
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8009
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8010
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8011
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8012
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8013
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8014
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8015
    .local v18, "accessNetwork":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8016
    goto/16 :goto_d

    .line 7983
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17e

    move v1, v2

    nop

    :cond_17e
    move v6, v1

    .line 7984
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_17f

    .line 7985
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7987
    goto/16 :goto_d

    .line 7988
    :cond_17f
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7991
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7992
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7993
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 7994
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7995
    .local v11, "accessNetwork":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 7996
    goto/16 :goto_d

    .line 7968
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_180

    move v1, v2

    nop

    .line 7969
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_180
    if-eq v1, v2, :cond_181

    .line 7970
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7972
    goto/16 :goto_d

    .line 7973
    :cond_181
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7976
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7977
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 7978
    goto/16 :goto_d

    .line 7952
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_182

    move v1, v2

    nop

    .line 7953
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_182
    if-eq v1, v2, :cond_183

    .line 7954
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7956
    goto/16 :goto_d

    .line 7957
    :cond_183
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7960
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 7961
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7962
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 7963
    goto/16 :goto_d

    .line 7937
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_184

    move v1, v2

    nop

    .line 7938
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_184
    if-eq v1, v2, :cond_185

    .line 7939
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7940
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7941
    goto/16 :goto_d

    .line 7942
    :cond_185
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7945
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7946
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopKeepalive(II)V

    .line 7947
    goto/16 :goto_d

    .line 7921
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionHandle":I
    :pswitch_b9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_186

    move v1, v2

    nop

    .line 7922
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_186
    if-eq v1, v2, :cond_187

    .line 7923
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7925
    goto/16 :goto_d

    .line 7926
    :cond_187
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7929
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7930
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7931
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7932
    goto/16 :goto_d

    .line 7907
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_ba
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_188

    move v1, v2

    nop

    .line 7908
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_188
    if-eq v1, v2, :cond_189

    .line 7909
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7910
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7911
    goto/16 :goto_d

    .line 7912
    :cond_189
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7914
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7915
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopNetworkScan(I)V

    .line 7916
    goto/16 :goto_d

    .line 7891
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    move v1, v2

    nop

    .line 7892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18a
    if-eq v1, v2, :cond_18b

    .line 7893
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7895
    goto/16 :goto_d

    .line 7896
    :cond_18b
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7899
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7900
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7901
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7902
    goto/16 :goto_d

    .line 7876
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_bc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18c

    move v1, v2

    nop

    .line 7877
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18c
    if-eq v1, v2, :cond_18d

    .line 7878
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7880
    goto/16 :goto_d

    .line 7881
    :cond_18d
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7883
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7884
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7885
    .local v2, "powerUp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7886
    goto/16 :goto_d

    .line 7860
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":I
    :pswitch_bd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18e

    move v1, v2

    nop

    .line 7861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18e
    if-eq v1, v2, :cond_18f

    .line 7862
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7864
    goto/16 :goto_d

    .line 7865
    :cond_18f
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7868
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7869
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7870
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7871
    goto/16 :goto_d

    .line 7847
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_be
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_190

    move v1, v2

    nop

    .line 7848
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_190
    if-eq v1, v2, :cond_191

    .line 7849
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7851
    goto/16 :goto_d

    .line 7852
    :cond_191
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7854
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->responseAcknowledgement()V

    .line 7855
    goto/16 :goto_d

    .line 7832
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_192

    move v1, v2

    nop

    .line 7833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_192
    if-eq v1, v2, :cond_193

    .line 7834
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7836
    goto/16 :goto_d

    .line 7837
    :cond_193
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7840
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7841
    .local v2, "powerUp":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7842
    goto/16 :goto_d

    .line 7817
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":Z
    :pswitch_c0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_194

    move v1, v2

    nop

    .line 7818
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_194
    if-eq v1, v2, :cond_195

    .line 7819
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7821
    goto/16 :goto_d

    .line 7822
    :cond_195
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7825
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7826
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setIndicationFilter(II)V

    .line 7827
    goto/16 :goto_d

    .line 7801
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_c1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_196

    move v1, v2

    nop

    .line 7802
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_196
    if-eq v1, v2, :cond_197

    .line 7803
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7805
    goto/16 :goto_d

    .line 7806
    :cond_197
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7809
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7810
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7811
    .local v3, "state":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7812
    goto/16 :goto_d

    .line 7787
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_c2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_198

    move v1, v2

    nop

    .line 7788
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_198
    if-eq v1, v2, :cond_199

    .line 7789
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7791
    goto/16 :goto_d

    .line 7792
    :cond_199
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7795
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7796
    goto/16 :goto_d

    .line 7770
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19a

    move v1, v2

    nop

    .line 7771
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19a
    if-eq v1, v2, :cond_19b

    .line 7772
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7774
    goto/16 :goto_d

    .line 7775
    :cond_19b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7778
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7779
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7780
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v15}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7781
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7782
    goto/16 :goto_d

    .line 7756
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19c

    move v1, v2

    nop

    .line 7757
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19c
    if-eq v1, v2, :cond_19d

    .line 7758
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7760
    goto/16 :goto_d

    .line 7761
    :cond_19d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7764
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7765
    goto/16 :goto_d

    .line 7742
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19e

    move v1, v2

    nop

    .line 7743
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19e
    if-eq v1, v2, :cond_19f

    .line 7744
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7746
    goto/16 :goto_d

    .line 7747
    :cond_19f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7750
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->pullLceData(I)V

    .line 7751
    goto/16 :goto_d

    .line 7728
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a0

    move v1, v2

    nop

    .line 7729
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a0
    if-eq v1, v2, :cond_1a1

    .line 7730
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7732
    goto/16 :goto_d

    .line 7733
    :cond_1a1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7736
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopLceService(I)V

    .line 7737
    goto/16 :goto_d

    .line 7712
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a2

    move v1, v2

    nop

    .line 7713
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a2
    if-eq v1, v2, :cond_1a3

    .line 7714
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7715
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7716
    goto/16 :goto_d

    .line 7717
    :cond_1a3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7719
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7720
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7721
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7722
    .local v3, "pullMode":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startLceService(IIZ)V

    .line 7723
    goto/16 :goto_d

    .line 7696
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a4

    move v1, v2

    nop

    .line 7697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a4
    if-eq v1, v2, :cond_1a5

    .line 7698
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7700
    goto/16 :goto_d

    .line 7701
    :cond_1a5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7704
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7705
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7706
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7707
    goto/16 :goto_d

    .line 7682
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a6

    move v1, v2

    nop

    .line 7683
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a6
    if-eq v1, v2, :cond_1a7

    .line 7684
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7686
    goto/16 :goto_d

    .line 7687
    :cond_1a7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7690
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getRadioCapability(I)V

    .line 7691
    goto/16 :goto_d

    .line 7668
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ca
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a8

    move v1, v2

    nop

    .line 7669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a8
    if-eq v1, v2, :cond_1a9

    .line 7670
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7672
    goto/16 :goto_d

    .line 7673
    :cond_1a9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7676
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->requestShutdown(I)V

    .line 7677
    goto/16 :goto_d

    .line 7652
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_cb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1aa

    move v1, v2

    nop

    .line 7653
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1aa
    if-eq v1, v2, :cond_1ab

    .line 7654
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7655
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7656
    goto/16 :goto_d

    .line 7657
    :cond_1ab
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7660
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7661
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7662
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7663
    goto/16 :goto_d

    .line 7635
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_cc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ac

    move v1, v2

    nop

    .line 7636
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ac
    if-eq v1, v2, :cond_1ad

    .line 7637
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7639
    goto/16 :goto_d

    .line 7640
    :cond_1ad
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7642
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7643
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7644
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7645
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7646
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7647
    goto/16 :goto_d

    .line 7621
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_cd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ae

    move v1, v2

    nop

    .line 7622
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ae
    if-eq v1, v2, :cond_1af

    .line 7623
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7625
    goto/16 :goto_d

    .line 7626
    :cond_1af
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7629
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getHardwareConfig(I)V

    .line 7630
    goto/16 :goto_d

    .line 7606
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ce
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b0

    move v1, v2

    nop

    .line 7607
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b0
    if-eq v1, v2, :cond_1b1

    .line 7608
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7610
    goto/16 :goto_d

    .line 7611
    :cond_1b1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7614
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7615
    .local v2, "allow":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7616
    goto/16 :goto_d

    .line 7590
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allow":Z
    :pswitch_cf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b2

    move v1, v2

    nop

    .line 7591
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b2
    if-eq v1, v2, :cond_1b3

    .line 7592
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7594
    goto/16 :goto_d

    .line 7595
    :cond_1b3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7598
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7599
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7600
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7601
    goto/16 :goto_d

    .line 7575
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_d0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b4

    move v1, v2

    nop

    .line 7576
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b4
    if-eq v1, v2, :cond_1b5

    .line 7577
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7579
    goto/16 :goto_d

    .line 7580
    :cond_1b5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7583
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7584
    .local v2, "resetType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvResetConfig(II)V

    .line 7585
    goto/16 :goto_d

    .line 7560
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resetType":I
    :pswitch_d1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b6

    move v1, v2

    nop

    .line 7561
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b6
    if-eq v1, v2, :cond_1b7

    .line 7562
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7563
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7564
    goto/16 :goto_d

    .line 7565
    :cond_1b7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7567
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7568
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7569
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7570
    goto/16 :goto_d

    .line 7544
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b8

    move v1, v2

    nop

    .line 7545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b8
    if-eq v1, v2, :cond_1b9

    .line 7546
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7548
    goto/16 :goto_d

    .line 7549
    :cond_1b9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7552
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7553
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7554
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7555
    goto/16 :goto_d

    .line 7529
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ba

    move v1, v2

    nop

    .line 7530
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ba
    if-eq v1, v2, :cond_1bb

    .line 7531
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7533
    goto/16 :goto_d

    .line 7534
    :cond_1bb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7537
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7538
    .local v2, "itemId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->nvReadItem(II)V

    .line 7539
    goto/16 :goto_d

    .line 7513
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "itemId":I
    :pswitch_d4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bc

    move v1, v2

    nop

    .line 7514
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bc
    if-eq v1, v2, :cond_1bd

    .line 7515
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7517
    goto/16 :goto_d

    .line 7518
    :cond_1bd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7521
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7522
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7523
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7524
    goto/16 :goto_d

    .line 7498
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1be

    move v1, v2

    nop

    .line 7499
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1be
    if-eq v1, v2, :cond_1bf

    .line 7500
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7502
    goto/16 :goto_d

    .line 7503
    :cond_1bf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7506
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7507
    .local v2, "channelId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7508
    goto/16 :goto_d

    .line 7482
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    :pswitch_d6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c0

    move v1, v2

    nop

    .line 7483
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c0
    if-eq v1, v2, :cond_1c1

    .line 7484
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7486
    goto/16 :goto_d

    .line 7487
    :cond_1c1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7490
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7491
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7492
    .local v3, "p2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7493
    goto/16 :goto_d

    .line 7466
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c2

    move v1, v2

    nop

    .line 7467
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c2
    if-eq v1, v2, :cond_1c3

    .line 7468
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7470
    goto/16 :goto_d

    .line 7471
    :cond_1c3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7474
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7475
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7476
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7477
    goto/16 :goto_d

    .line 7450
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c4

    move v1, v2

    nop

    .line 7451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c4
    if-eq v1, v2, :cond_1c5

    .line 7452
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7454
    goto/16 :goto_d

    .line 7455
    :cond_1c5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7458
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7459
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7460
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7461
    goto/16 :goto_d

    .line 7436
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c6

    move v1, v2

    nop

    .line 7437
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c6
    if-eq v1, v2, :cond_1c7

    .line 7438
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7440
    goto/16 :goto_d

    .line 7441
    :cond_1c7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7444
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7445
    goto/16 :goto_d

    .line 7418
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_da
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c8

    move v1, v2

    nop

    .line 7419
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c8
    if-eq v1, v2, :cond_1c9

    .line 7420
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7421
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7422
    goto/16 :goto_d

    .line 7423
    :cond_1c9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7426
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7427
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7429
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7430
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7431
    goto/16 :goto_d

    .line 7403
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_db
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ca

    move v1, v2

    nop

    .line 7404
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ca
    if-eq v1, v2, :cond_1cb

    .line 7405
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7407
    goto/16 :goto_d

    .line 7408
    :cond_1cb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7410
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7411
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7412
    .local v2, "rate":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7413
    goto/16 :goto_d

    .line 7389
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rate":I
    :pswitch_dc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cc

    move v1, v2

    nop

    .line 7390
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cc
    if-eq v1, v2, :cond_1cd

    .line 7391
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7392
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7393
    goto/16 :goto_d

    .line 7394
    :cond_1cd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7397
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCellInfoList(I)V

    .line 7398
    goto/16 :goto_d

    .line 7375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_dd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ce

    move v1, v2

    nop

    .line 7376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ce
    if-eq v1, v2, :cond_1cf

    .line 7377
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7379
    goto/16 :goto_d

    .line 7380
    :cond_1cf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7383
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7384
    goto/16 :goto_d

    .line 7360
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_de
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d0

    move v1, v2

    nop

    .line 7361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d0
    if-eq v1, v2, :cond_1d1

    .line 7362
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7364
    goto/16 :goto_d

    .line 7365
    :cond_1d1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7369
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7370
    goto/16 :goto_d

    .line 7344
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_df
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d2

    move v1, v2

    nop

    .line 7345
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d2
    if-eq v1, v2, :cond_1d3

    .line 7346
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7347
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7348
    goto/16 :goto_d

    .line 7349
    :cond_1d3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7352
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7353
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7354
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7355
    goto/16 :goto_d

    .line 7329
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_e0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d4

    move v1, v2

    nop

    .line 7330
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d4
    if-eq v1, v2, :cond_1d5

    .line 7331
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7332
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7333
    goto/16 :goto_d

    .line 7334
    :cond_1d5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7336
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7337
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7338
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7339
    goto/16 :goto_d

    .line 7315
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_e1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d6

    move v1, v2

    nop

    .line 7316
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d6
    if-eq v1, v2, :cond_1d7

    .line 7317
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7318
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7319
    goto/16 :goto_d

    .line 7320
    :cond_1d7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7323
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7324
    goto/16 :goto_d

    .line 7301
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d8

    move v1, v2

    nop

    .line 7302
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d8
    if-eq v1, v2, :cond_1d9

    .line 7303
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7305
    goto/16 :goto_d

    .line 7306
    :cond_1d9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7309
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7310
    goto/16 :goto_d

    .line 7286
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1da

    move v1, v2

    nop

    .line 7287
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1da
    if-eq v1, v2, :cond_1db

    .line 7288
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7289
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7290
    goto/16 :goto_d

    .line 7291
    :cond_1db
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7294
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7295
    .local v2, "available":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7296
    goto/16 :goto_d

    .line 7271
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "available":Z
    :pswitch_e4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1dc

    move v1, v2

    nop

    .line 7272
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1dc
    if-eq v1, v2, :cond_1dd

    .line 7273
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7275
    goto/16 :goto_d

    .line 7276
    :cond_1dd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7279
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7280
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7281
    goto/16 :goto_d

    .line 7257
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1de

    move v1, v2

    nop

    .line 7258
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1de
    if-eq v1, v2, :cond_1df

    .line 7259
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7261
    goto/16 :goto_d

    .line 7262
    :cond_1df
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7265
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSmscAddress(I)V

    .line 7266
    goto/16 :goto_d

    .line 7243
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e0

    move v1, v2

    nop

    .line 7244
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e0
    if-eq v1, v2, :cond_1e1

    .line 7245
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7246
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7247
    goto/16 :goto_d

    .line 7248
    :cond_1e1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7251
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7252
    goto/16 :goto_d

    .line 7229
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e2

    move v1, v2

    nop

    .line 7230
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e2
    if-eq v1, v2, :cond_1e3

    .line 7231
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7233
    goto/16 :goto_d

    .line 7234
    :cond_1e3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7237
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7238
    goto/16 :goto_d

    .line 7214
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e4

    move v1, v2

    nop

    .line 7215
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e4
    if-eq v1, v2, :cond_1e5

    .line 7216
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7217
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7218
    goto/16 :goto_d

    .line 7219
    :cond_1e5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7222
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7223
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7224
    goto/16 :goto_d

    .line 7198
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_e9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e6

    move v1, v2

    nop

    .line 7199
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e6
    if-eq v1, v2, :cond_1e7

    .line 7200
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7202
    goto/16 :goto_d

    .line 7203
    :cond_1e7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7206
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7207
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7208
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7209
    goto/16 :goto_d

    .line 7184
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_ea
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e8

    move v1, v2

    nop

    .line 7185
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e8
    if-eq v1, v2, :cond_1e9

    .line 7186
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7188
    goto/16 :goto_d

    .line 7189
    :cond_1e9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7192
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCDMASubscription(I)V

    .line 7193
    goto/16 :goto_d

    .line 7169
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_eb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ea

    move v1, v2

    nop

    .line 7170
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ea
    if-eq v1, v2, :cond_1eb

    .line 7171
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7173
    goto/16 :goto_d

    .line 7174
    :cond_1eb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7177
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7178
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7179
    goto/16 :goto_d

    .line 7154
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_ec
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ec

    move v1, v2

    nop

    .line 7155
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ec
    if-eq v1, v2, :cond_1ed

    .line 7156
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7157
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7158
    goto/16 :goto_d

    .line 7159
    :cond_1ed
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7162
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7163
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7164
    goto/16 :goto_d

    .line 7140
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ee

    move v1, v2

    nop

    .line 7141
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ee
    if-eq v1, v2, :cond_1ef

    .line 7142
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7143
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7144
    goto/16 :goto_d

    .line 7145
    :cond_1ef
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7147
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7148
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7149
    goto/16 :goto_d

    .line 7125
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ee
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f0

    move v1, v2

    nop

    .line 7126
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f0
    if-eq v1, v2, :cond_1f1

    .line 7127
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7129
    goto/16 :goto_d

    .line 7130
    :cond_1f1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7133
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7134
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7135
    goto/16 :goto_d

    .line 7110
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_ef
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f2

    move v1, v2

    nop

    .line 7111
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f2
    if-eq v1, v2, :cond_1f3

    .line 7112
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7114
    goto/16 :goto_d

    .line 7115
    :cond_1f3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7118
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7119
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7120
    goto/16 :goto_d

    .line 7096
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_f0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f4

    move v1, v2

    nop

    .line 7097
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f4
    if-eq v1, v2, :cond_1f5

    .line 7098
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7100
    goto/16 :goto_d

    .line 7101
    :cond_1f5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7104
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7105
    goto/16 :goto_d

    .line 7080
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f6

    move v1, v2

    nop

    .line 7081
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f6
    if-eq v1, v2, :cond_1f7

    .line 7082
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7084
    goto/16 :goto_d

    .line 7085
    :cond_1f7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7088
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7089
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7090
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7091
    goto/16 :goto_d

    .line 7064
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f8

    move v1, v2

    nop

    .line 7065
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f8
    if-eq v1, v2, :cond_1f9

    .line 7066
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7068
    goto/16 :goto_d

    .line 7069
    :cond_1f9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7072
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7073
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7074
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7075
    goto/16 :goto_d

    .line 7047
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fa

    move v1, v2

    nop

    .line 7048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fa
    if-eq v1, v2, :cond_1fb

    .line 7049
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7051
    goto/16 :goto_d

    .line 7052
    :cond_1fb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7055
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7056
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7057
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7058
    .local v4, "off":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7059
    goto/16 :goto_d

    .line 7032
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fc

    move v1, v2

    nop

    .line 7033
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fc
    if-eq v1, v2, :cond_1fd

    .line 7034
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7036
    goto/16 :goto_d

    .line 7037
    :cond_1fd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7040
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7041
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7042
    goto/16 :goto_d

    .line 7018
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fe

    move v1, v2

    nop

    .line 7019
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fe
    if-eq v1, v2, :cond_1ff

    .line 7020
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7022
    goto/16 :goto_d

    .line 7023
    :cond_1ff
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7025
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7026
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7027
    goto/16 :goto_d

    .line 7003
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_200

    move v1, v2

    nop

    .line 7004
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_200
    if-eq v1, v2, :cond_201

    .line 7005
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7006
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7007
    goto/16 :goto_d

    .line 7008
    :cond_201
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7011
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7012
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7013
    goto/16 :goto_d

    .line 6989
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_f7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_202

    move v1, v2

    nop

    .line 6990
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_202
    if-eq v1, v2, :cond_203

    .line 6991
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6993
    goto/16 :goto_d

    .line 6994
    :cond_203
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6997
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getTTYMode(I)V

    .line 6998
    goto/16 :goto_d

    .line 6974
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_204

    move v1, v2

    nop

    .line 6975
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_204
    if-eq v1, v2, :cond_205

    .line 6976
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6977
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6978
    goto/16 :goto_d

    .line 6979
    :cond_205
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6982
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6983
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setTTYMode(II)V

    .line 6984
    goto/16 :goto_d

    .line 6960
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_f9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_206

    move v1, v2

    nop

    .line 6961
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_206
    if-eq v1, v2, :cond_207

    .line 6962
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6964
    goto/16 :goto_d

    .line 6965
    :cond_207
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6968
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 6969
    goto/16 :goto_d

    .line 6945
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_208

    move v1, v2

    nop

    .line 6946
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_208
    if-eq v1, v2, :cond_209

    .line 6947
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6949
    goto/16 :goto_d

    .line 6950
    :cond_209
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6953
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6954
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 6955
    goto/16 :goto_d

    .line 6930
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_fb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20a

    move v1, v2

    nop

    .line 6931
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20a
    if-eq v1, v2, :cond_20b

    .line 6932
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6934
    goto/16 :goto_d

    .line 6935
    :cond_20b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6938
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6939
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6940
    goto/16 :goto_d

    .line 6915
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSub":I
    :pswitch_fc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20c

    move v1, v2

    nop

    .line 6916
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20c
    if-eq v1, v2, :cond_20d

    .line 6917
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6918
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6919
    goto/16 :goto_d

    .line 6920
    :cond_20d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6923
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6924
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6925
    goto/16 :goto_d

    .line 6901
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_fd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20e

    move v1, v2

    nop

    .line 6902
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20e
    if-eq v1, v2, :cond_20f

    .line 6903
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6905
    goto/16 :goto_d

    .line 6906
    :cond_20f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6909
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getNeighboringCids(I)V

    .line 6910
    goto/16 :goto_d

    .line 6887
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fe
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_210

    move v1, v2

    nop

    .line 6888
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_210
    if-eq v1, v2, :cond_211

    .line 6889
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6891
    goto/16 :goto_d

    .line 6892
    :cond_211
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6895
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6896
    goto/16 :goto_d

    .line 6872
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ff
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_212

    move v1, v2

    nop

    .line 6873
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_212
    if-eq v1, v2, :cond_213

    .line 6874
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6876
    goto/16 :goto_d

    .line 6877
    :cond_213
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6880
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6881
    .local v2, "nwType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6882
    goto/16 :goto_d

    .line 6858
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_100
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_214

    move v1, v2

    nop

    .line 6859
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_214
    if-eq v1, v2, :cond_215

    .line 6860
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6862
    goto/16 :goto_d

    .line 6863
    :cond_215
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6866
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6867
    goto/16 :goto_d

    .line 6843
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_101
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_216

    move v1, v2

    nop

    .line 6844
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_216
    if-eq v1, v2, :cond_217

    .line 6845
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6847
    goto/16 :goto_d

    .line 6848
    :cond_217
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6851
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6852
    .local v2, "accept":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6853
    goto/16 :goto_d

    .line 6828
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accept":Z
    :pswitch_102
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_218

    move v1, v2

    nop

    .line 6829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_218
    if-eq v1, v2, :cond_219

    .line 6830
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6832
    goto/16 :goto_d

    .line 6833
    :cond_219
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6836
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6837
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6838
    goto/16 :goto_d

    .line 6813
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_103
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21a

    move v1, v2

    nop

    .line 6814
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21a
    if-eq v1, v2, :cond_21b

    .line 6815
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6817
    goto/16 :goto_d

    .line 6818
    :cond_21b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6821
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6822
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6823
    goto/16 :goto_d

    .line 6799
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_104
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21c

    move v1, v2

    nop

    .line 6800
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21c
    if-eq v1, v2, :cond_21d

    .line 6801
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6802
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6803
    goto/16 :goto_d

    .line 6804
    :cond_21d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6807
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6808
    goto/16 :goto_d

    .line 6784
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_105
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21e

    move v1, v2

    nop

    .line 6785
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21e
    if-eq v1, v2, :cond_21f

    .line 6786
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6788
    goto/16 :goto_d

    .line 6789
    :cond_21f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6791
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6792
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6793
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setBandMode(II)V

    .line 6794
    goto/16 :goto_d

    .line 6769
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_106
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_220

    move v1, v2

    nop

    .line 6770
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_220
    if-eq v1, v2, :cond_221

    .line 6771
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6773
    goto/16 :goto_d

    .line 6774
    :cond_221
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6777
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6778
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6779
    goto/16 :goto_d

    .line 6753
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_107
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_222

    move v1, v2

    nop

    .line 6754
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_222
    if-eq v1, v2, :cond_223

    .line 6755
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6757
    goto/16 :goto_d

    .line 6758
    :cond_223
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6761
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6762
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6763
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6764
    goto/16 :goto_d

    .line 6738
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_108
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_224

    move v1, v2

    nop

    .line 6739
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_224
    if-eq v1, v2, :cond_225

    .line 6740
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6741
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6742
    goto/16 :goto_d

    .line 6743
    :cond_225
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6746
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6747
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6748
    goto/16 :goto_d

    .line 6724
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_109
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_226

    move v1, v2

    nop

    .line 6725
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_226
    if-eq v1, v2, :cond_227

    .line 6726
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6728
    goto/16 :goto_d

    .line 6729
    :cond_227
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6732
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDataCallList(I)V

    .line 6733
    goto/16 :goto_d

    .line 6710
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_228

    move v1, v2

    nop

    .line 6711
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_228
    if-eq v1, v2, :cond_229

    .line 6712
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6714
    goto/16 :goto_d

    .line 6715
    :cond_229
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6718
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getClip(I)V

    .line 6719
    goto/16 :goto_d

    .line 6696
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22a

    move v1, v2

    nop

    .line 6697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22a
    if-eq v1, v2, :cond_22b

    .line 6698
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6700
    goto/16 :goto_d

    .line 6701
    :cond_22b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6704
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getMute(I)V

    .line 6705
    goto/16 :goto_d

    .line 6681
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22c

    move v1, v2

    nop

    .line 6682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22c
    if-eq v1, v2, :cond_22d

    .line 6683
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6684
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6685
    goto/16 :goto_d

    .line 6686
    :cond_22d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6689
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6690
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setMute(IZ)V

    .line 6691
    goto/16 :goto_d

    .line 6666
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_10d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22e

    move v1, v2

    nop

    .line 6667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22e
    if-eq v1, v2, :cond_22f

    .line 6668
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6670
    goto/16 :goto_d

    .line 6671
    :cond_22f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6674
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6675
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->separateConnection(II)V

    .line 6676
    goto/16 :goto_d

    .line 6652
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_10e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_230

    move v1, v2

    nop

    .line 6653
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_230
    if-eq v1, v2, :cond_231

    .line 6654
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6655
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6656
    goto/16 :goto_d

    .line 6657
    :cond_231
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6660
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getBasebandVersion(I)V

    .line 6661
    goto/16 :goto_d

    .line 6638
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_232

    move v1, v2

    nop

    .line 6639
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_232
    if-eq v1, v2, :cond_233

    .line 6640
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6642
    goto/16 :goto_d

    .line 6643
    :cond_233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6646
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->stopDtmf(I)V

    .line 6647
    goto/16 :goto_d

    .line 6623
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_110
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_234

    move v1, v2

    nop

    .line 6624
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_234
    if-eq v1, v2, :cond_235

    .line 6625
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6627
    goto/16 :goto_d

    .line 6628
    :cond_235
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6631
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6632
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6633
    goto/16 :goto_d

    .line 6609
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_111
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_236

    move v1, v2

    nop

    .line 6610
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_236
    if-eq v1, v2, :cond_237

    .line 6611
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6612
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6613
    goto/16 :goto_d

    .line 6614
    :cond_237
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6617
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6618
    goto/16 :goto_d

    .line 6594
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_112
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_238

    move v1, v2

    nop

    .line 6595
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_238
    if-eq v1, v2, :cond_239

    .line 6596
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6597
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6598
    goto/16 :goto_d

    .line 6599
    :cond_239
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6602
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6603
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6604
    goto/16 :goto_d

    .line 6580
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_113
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23a

    move v1, v2

    nop

    .line 6581
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23a
    if-eq v1, v2, :cond_23b

    .line 6582
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6584
    goto/16 :goto_d

    .line 6585
    :cond_23b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6588
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6589
    goto/16 :goto_d

    .line 6566
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_114
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23c

    move v1, v2

    nop

    .line 6567
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23c
    if-eq v1, v2, :cond_23d

    .line 6568
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6570
    goto/16 :goto_d

    .line 6571
    :cond_23d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6574
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6575
    goto/16 :goto_d

    .line 6549
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_115
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23e

    move v1, v2

    nop

    .line 6550
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23e
    if-eq v1, v2, :cond_23f

    .line 6551
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6552
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6553
    goto/16 :goto_d

    .line 6554
    :cond_23f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6556
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6557
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6558
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6559
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6560
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6561
    goto/16 :goto_d

    .line 6530
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_116
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_240

    move v1, v2

    nop

    :cond_240
    move v7, v1

    .line 6531
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_241

    .line 6532
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6534
    goto/16 :goto_d

    .line 6535
    :cond_241
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6538
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6539
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6540
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6541
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6542
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6543
    .local v16, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6544
    goto/16 :goto_d

    .line 6512
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_117
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_242

    move v1, v2

    nop

    :cond_242
    move v6, v1

    .line 6513
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_243

    .line 6514
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6515
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6516
    goto/16 :goto_d

    .line 6517
    :cond_243
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6520
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6521
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6522
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6523
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6524
    .local v11, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6525
    goto/16 :goto_d

    .line 6496
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_118
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_244

    move v1, v2

    nop

    .line 6497
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v1, v2, :cond_245

    .line 6498
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6499
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6500
    goto/16 :goto_d

    .line 6501
    :cond_245
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6504
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6505
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6506
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6507
    goto/16 :goto_d

    .line 6482
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_119
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_246

    move v1, v2

    nop

    .line 6483
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_246
    if-eq v1, v2, :cond_247

    .line 6484
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6486
    goto/16 :goto_d

    .line 6487
    :cond_247
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6490
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acceptCall(I)V

    .line 6491
    goto/16 :goto_d

    .line 6466
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_248

    move v1, v2

    nop

    .line 6467
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_248
    if-eq v1, v2, :cond_249

    .line 6468
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6470
    goto/16 :goto_d

    .line 6471
    :cond_249
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6474
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6475
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6476
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6477
    goto/16 :goto_d

    .line 6450
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_11b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24a

    move v1, v2

    nop

    .line 6451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24a
    if-eq v1, v2, :cond_24b

    .line 6452
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6454
    goto/16 :goto_d

    .line 6455
    :cond_24b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6459
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6460
    .local v3, "serviceClass":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6461
    goto/16 :goto_d

    .line 6435
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_11c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24c

    move v1, v2

    nop

    .line 6436
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24c
    if-eq v1, v2, :cond_24d

    .line 6437
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6438
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6439
    goto/16 :goto_d

    .line 6440
    :cond_24d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6443
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6444
    .local v2, "serviceClass":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCallWaiting(II)V

    .line 6445
    goto/16 :goto_d

    .line 6419
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_11d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24e

    move v1, v2

    nop

    .line 6420
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24e
    if-eq v1, v2, :cond_24f

    .line 6421
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6423
    goto/16 :goto_d

    .line 6424
    :cond_24f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6427
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6428
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6429
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6430
    goto/16 :goto_d

    .line 6403
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_250

    move v1, v2

    nop

    .line 6404
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_250
    if-eq v1, v2, :cond_251

    .line 6405
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6407
    goto/16 :goto_d

    .line 6408
    :cond_251
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6410
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6411
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6412
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6413
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6414
    goto/16 :goto_d

    .line 6388
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_252

    move v1, v2

    nop

    .line 6389
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_252
    if-eq v1, v2, :cond_253

    .line 6390
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6392
    goto/16 :goto_d

    .line 6393
    :cond_253
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6396
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6397
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setClir(II)V

    .line 6398
    goto/16 :goto_d

    .line 6374
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_120
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_254

    move v1, v2

    nop

    .line 6375
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_254
    if-eq v1, v2, :cond_255

    .line 6376
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6377
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6378
    goto/16 :goto_d

    .line 6379
    :cond_255
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6382
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getClir(I)V

    .line 6383
    goto/16 :goto_d

    .line 6360
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_121
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_256

    move v1, v2

    nop

    .line 6361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_256
    if-eq v1, v2, :cond_257

    .line 6362
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6364
    goto/16 :goto_d

    .line 6365
    :cond_257
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6368
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6369
    goto/16 :goto_d

    .line 6345
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_122
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_258

    move v1, v2

    nop

    .line 6346
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_258
    if-eq v1, v2, :cond_259

    .line 6347
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6349
    goto/16 :goto_d

    .line 6350
    :cond_259
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6353
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6354
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6355
    goto/16 :goto_d

    .line 6329
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_123
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25a

    move v1, v2

    nop

    .line 6330
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25a
    if-eq v1, v2, :cond_25b

    .line 6331
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6332
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6333
    goto/16 :goto_d

    .line 6334
    :cond_25b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6336
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6337
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6338
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6339
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6340
    goto/16 :goto_d

    .line 6309
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_124
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25c

    move v1, v2

    nop

    :cond_25c
    move v7, v1

    .line 6310
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_25d

    .line 6311
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6313
    goto/16 :goto_d

    .line 6314
    :cond_25d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6317
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6318
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6319
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6321
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6322
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6323
    .local v16, "isRoaming":Z
    move-object v0, v13

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6324
    goto/16 :goto_d

    .line 6293
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_125
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25e

    move v1, v2

    nop

    .line 6294
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25e
    if-eq v1, v2, :cond_25f

    .line 6295
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6297
    goto/16 :goto_d

    .line 6298
    :cond_25f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6301
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6302
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6303
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6304
    goto/16 :goto_d

    .line 6277
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_126
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_260

    move v1, v2

    nop

    .line 6278
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_260
    if-eq v1, v2, :cond_261

    .line 6279
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6281
    goto/16 :goto_d

    .line 6282
    :cond_261
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6285
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6286
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6287
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6288
    goto/16 :goto_d

    .line 6262
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_127
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_262

    move v1, v2

    nop

    .line 6263
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_262
    if-eq v1, v2, :cond_263

    .line 6264
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6266
    goto/16 :goto_d

    .line 6267
    :cond_263
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6270
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6271
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6272
    goto/16 :goto_d

    .line 6247
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_128
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_264

    move v1, v2

    nop

    .line 6248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_264
    if-eq v1, v2, :cond_265

    .line 6249
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6251
    goto/16 :goto_d

    .line 6252
    :cond_265
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6255
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6256
    .local v2, "on":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setRadioPower(IZ)V

    .line 6257
    goto/16 :goto_d

    .line 6233
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_129
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_266

    move v1, v2

    nop

    .line 6234
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_266
    if-eq v1, v2, :cond_267

    .line 6235
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6237
    goto/16 :goto_d

    .line 6238
    :cond_267
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6241
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getOperator(I)V

    .line 6242
    goto/16 :goto_d

    .line 6219
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_268

    move v1, v2

    nop

    .line 6220
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_268
    if-eq v1, v2, :cond_269

    .line 6221
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6222
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6223
    goto/16 :goto_d

    .line 6224
    :cond_269
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6226
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6227
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6228
    goto/16 :goto_d

    .line 6205
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26a

    move v1, v2

    nop

    .line 6206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26a
    if-eq v1, v2, :cond_26b

    .line 6207
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6209
    goto/16 :goto_d

    .line 6210
    :cond_26b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6213
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6214
    goto/16 :goto_d

    .line 6191
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26c

    move v1, v2

    nop

    .line 6192
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26c
    if-eq v1, v2, :cond_26d

    .line 6193
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6194
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6195
    goto/16 :goto_d

    .line 6196
    :cond_26d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6199
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getSignalStrength(I)V

    .line 6200
    goto/16 :goto_d

    .line 6177
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26e

    move v1, v2

    nop

    .line 6178
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26e
    if-eq v1, v2, :cond_26f

    .line 6179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6181
    goto/16 :goto_d

    .line 6182
    :cond_26f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6185
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6186
    goto/16 :goto_d

    .line 6163
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_270

    move v1, v2

    nop

    .line 6164
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_270
    if-eq v1, v2, :cond_271

    .line 6165
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6167
    goto/16 :goto_d

    .line 6168
    :cond_271
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6171
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->rejectCall(I)V

    .line 6172
    goto/16 :goto_d

    .line 6149
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_272

    move v1, v2

    nop

    .line 6150
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_272
    if-eq v1, v2, :cond_273

    .line 6151
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6153
    goto/16 :goto_d

    .line 6154
    :cond_273
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6157
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->conference(I)V

    .line 6158
    goto/16 :goto_d

    .line 6135
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_130
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_274

    move v1, v2

    nop

    .line 6136
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_274
    if-eq v1, v2, :cond_275

    .line 6137
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6139
    goto/16 :goto_d

    .line 6140
    :cond_275
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6143
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6144
    goto/16 :goto_d

    .line 6121
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_131
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_276

    move v1, v2

    nop

    .line 6122
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_276
    if-eq v1, v2, :cond_277

    .line 6123
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6125
    goto/16 :goto_d

    .line 6126
    :cond_277
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6129
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6130
    goto/16 :goto_d

    .line 6107
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_132
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_278

    move v1, v2

    nop

    .line 6108
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_278
    if-eq v1, v2, :cond_279

    .line 6109
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6111
    goto/16 :goto_d

    .line 6112
    :cond_279
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6115
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6116
    goto/16 :goto_d

    .line 6092
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_133
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27a

    move v1, v2

    nop

    .line 6093
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27a
    if-eq v1, v2, :cond_27b

    .line 6094
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6095
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6096
    goto/16 :goto_d

    .line 6097
    :cond_27b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6100
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6101
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->hangup(II)V

    .line 6102
    goto/16 :goto_d

    .line 6077
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_134
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27c

    move v1, v2

    nop

    .line 6078
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27c
    if-eq v1, v2, :cond_27d

    .line 6079
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6081
    goto/16 :goto_d

    .line 6082
    :cond_27d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6085
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6086
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6087
    goto/16 :goto_d

    .line 6061
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_135
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27e

    move v1, v2

    nop

    .line 6062
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27e
    if-eq v1, v2, :cond_27f

    .line 6063
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6064
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6065
    goto/16 :goto_d

    .line 6066
    :cond_27f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6069
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6070
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6071
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6072
    goto/16 :goto_d

    .line 6047
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_136
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_280

    move v1, v2

    nop

    .line 6048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_280
    if-eq v1, v2, :cond_281

    .line 6049
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6051
    goto/16 :goto_d

    .line 6052
    :cond_281
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6055
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getCurrentCalls(I)V

    .line 6056
    goto/16 :goto_d

    .line 6032
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_137
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_282

    move v1, v2

    nop

    .line 6033
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_282
    if-eq v1, v2, :cond_283

    .line 6034
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6036
    goto/16 :goto_d

    .line 6037
    :cond_283
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6040
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6041
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6042
    goto/16 :goto_d

    .line 6015
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_138
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_284

    move v1, v2

    nop

    .line 6016
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_284
    if-eq v1, v2, :cond_285

    .line 6017
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6019
    goto/16 :goto_d

    .line 6020
    :cond_285
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6023
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6024
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6025
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6026
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6027
    goto/16 :goto_d

    .line 5998
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_139
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_286

    move v1, v2

    nop

    .line 5999
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_286
    if-eq v1, v2, :cond_287

    .line 6000
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6002
    goto/16 :goto_d

    .line 6003
    :cond_287
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6006
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6007
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6008
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6009
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6010
    goto/16 :goto_d

    .line 5981
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_288

    move v1, v2

    nop

    .line 5982
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_288
    if-eq v1, v2, :cond_289

    .line 5983
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5985
    goto/16 :goto_d

    .line 5986
    :cond_289
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5988
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5989
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5990
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5991
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5992
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5993
    goto/16 :goto_d

    .line 5965
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28a

    move v1, v2

    nop

    .line 5966
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28a
    if-eq v1, v2, :cond_28b

    .line 5967
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5968
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5969
    goto/16 :goto_d

    .line 5970
    :cond_28b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5973
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5974
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5975
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5976
    goto/16 :goto_d

    .line 5948
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28c

    move v1, v2

    nop

    .line 5949
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28c
    if-eq v1, v2, :cond_28d

    .line 5950
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5952
    goto/16 :goto_d

    .line 5953
    :cond_28d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5956
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5957
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5958
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5959
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5960
    goto/16 :goto_d

    .line 5932
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28e

    move v1, v2

    nop

    .line 5933
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28e
    if-eq v1, v2, :cond_28f

    .line 5934
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5936
    goto :goto_d

    .line 5937
    :cond_28f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5940
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5941
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5942
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5943
    goto :goto_d

    .line 5918
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_290

    move v1, v2

    nop

    .line 5919
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_290
    if-eq v1, v2, :cond_291

    .line 5920
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5922
    goto :goto_d

    .line 5923
    :cond_291
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5926
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->getIccCardStatus(I)V

    .line 5927
    goto :goto_d

    .line 5901
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_292

    goto :goto_c

    :cond_292
    move v2, v1

    .line 5902
    .local v2, "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_293

    .line 5903
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5904
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5905
    goto :goto_d

    .line 5906
    :cond_293
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 5909
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 5910
    .local v3, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5911
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5913
    nop

    .line 10981
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_13e
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

    .line 5854
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5880
    const-string v0, "vendor.mediatek.hardware.radio@3.6::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5881
    return-object p0

    .line 5883
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

    .line 5887
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5888
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5845
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5874
    const/4 v0, 0x1

    return v0
.end method
