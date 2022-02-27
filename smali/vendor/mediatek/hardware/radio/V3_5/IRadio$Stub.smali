.class public abstract Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_5/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_5/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5820
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5823
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5877
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5878
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5879
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5880
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5881
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

    .line 5847
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

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

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5828
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v5, "android.hardware.radio@1.2::IRadio"

    const-string v6, "android.hardware.radio@1.1::IRadio"

    const-string v7, "android.hardware.radio@1.0::IRadio"

    const-string v8, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 5841
    const-string v0, "vendor.mediatek.hardware.radio@3.5::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5866
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5886
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5887
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

    .line 5915
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    .line 10998
    :cond_0
    :goto_0
    move-object v14, v12

    goto/16 :goto_d

    .line 10989
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 10990
    .local v1, "_hidl_is_oneway":Z
    :cond_1
    if-eqz v1, :cond_0

    .line 10991
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10993
    goto :goto_0

    .line 10976
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 10977
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2
    if-eq v1, v2, :cond_3

    .line 10978
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10980
    goto :goto_0

    .line 10981
    :cond_3
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10983
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->notifySyspropsChanged()V

    .line 10984
    goto :goto_0

    .line 10960
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 10961
    .local v2, "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 10962
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10964
    goto :goto_0

    .line 10965
    :cond_5
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10967
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 10968
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10969
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 10970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10971
    goto :goto_0

    .line 10945
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 10946
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 10947
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10949
    goto :goto_0

    .line 10950
    :cond_7
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10952
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->ping()V

    .line 10953
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10955
    goto :goto_0

    .line 10935
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 10936
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eqz v1, :cond_0

    .line 10937
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10939
    goto :goto_0

    .line 10922
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9

    move v1, v2

    nop

    .line 10923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9
    if-eq v1, v2, :cond_a

    .line 10924
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10926
    goto/16 :goto_0

    .line 10927
    :cond_a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10929
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setHALInstrumentation()V

    .line 10930
    goto/16 :goto_0

    .line 10889
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    move v2, v1

    .line 10890
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_3
    if-eqz v2, :cond_c

    .line 10891
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10893
    goto/16 :goto_0

    .line 10894
    :cond_c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10896
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10897
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10899
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 10901
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 10902
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10903
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10904
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 10905
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_4
    if-ge v1, v4, :cond_d

    .line 10907
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 10908
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10909
    nop

    .line 10905
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10912
    .end local v1    # "_hidl_index_0":I
    :cond_d
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10914
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10916
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10917
    goto/16 :goto_0

    .line 10873
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    move v2, v1

    .line 10874
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_f

    .line 10875
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10877
    goto/16 :goto_0

    .line 10878
    :cond_f
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10880
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10881
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10882
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10883
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10884
    goto/16 :goto_0

    .line 10859
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    move v2, v1

    .line 10860
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_11

    .line 10861
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10863
    goto/16 :goto_0

    .line 10864
    :cond_11
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10866
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10868
    goto/16 :goto_0

    .line 10843
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    move v2, v1

    .line 10844
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_13

    .line 10845
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10847
    goto/16 :goto_0

    .line 10848
    :cond_13
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10850
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10851
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10852
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10853
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10854
    goto/16 :goto_0

    .line 10827
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14

    move v1, v2

    nop

    .line 10828
    .local v1, "_hidl_is_oneway":Z
    :cond_14
    if-eq v1, v2, :cond_15

    .line 10829
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10831
    goto/16 :goto_0

    .line 10832
    :cond_15
    const-string v0, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10835
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10836
    .local v2, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10837
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 10838
    goto/16 :goto_0

    .line 10812
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reqType":I
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16

    move v1, v2

    nop

    .line 10813
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v1, v2, :cond_17

    .line 10814
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10816
    goto/16 :goto_0

    .line 10817
    :cond_17
    const-string v0, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;

    move-result-object v0

    .line 10820
    .local v0, "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;

    move-result-object v2

    .line 10821
    .local v2, "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V

    .line 10822
    goto/16 :goto_0

    .line 10796
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18

    move v1, v2

    nop

    .line 10797
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v1, v2, :cond_19

    .line 10798
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10800
    goto/16 :goto_0

    .line 10801
    :cond_19
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10804
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10805
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10806
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->hangupWithReason(III)V

    .line 10807
    goto/16 :goto_0

    .line 10781
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    .end local v3    # "reason":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a

    move v1, v2

    nop

    .line 10782
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v1, v2, :cond_1b

    .line 10783
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10785
    goto/16 :goto_0

    .line 10786
    :cond_1b
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10789
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10790
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10791
    goto/16 :goto_0

    .line 10766
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c

    move v1, v2

    nop

    .line 10767
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v1, v2, :cond_1d

    .line 10768
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10770
    goto/16 :goto_0

    .line 10771
    :cond_1d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10774
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10775
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10776
    goto/16 :goto_0

    .line 10751
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e

    move v1, v2

    nop

    .line 10752
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v1, v2, :cond_1f

    .line 10753
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10755
    goto/16 :goto_0

    .line 10756
    :cond_1f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10759
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10760
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10761
    goto/16 :goto_0

    .line 10735
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20

    move v1, v2

    nop

    .line 10736
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v1, v2, :cond_21

    .line 10737
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10739
    goto/16 :goto_0

    .line 10740
    :cond_21
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10743
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10744
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10745
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10746
    goto/16 :goto_0

    .line 10719
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 10720
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_23

    .line 10721
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10723
    goto/16 :goto_0

    .line 10724
    :cond_23
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10727
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10728
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10729
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10730
    goto/16 :goto_0

    .line 10704
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24

    move v1, v2

    nop

    .line 10705
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v1, v2, :cond_25

    .line 10706
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10708
    goto/16 :goto_0

    .line 10709
    :cond_25
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10712
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10713
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10714
    goto/16 :goto_0

    .line 10689
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26

    move v1, v2

    nop

    .line 10690
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v1, v2, :cond_27

    .line 10691
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10692
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10693
    goto/16 :goto_0

    .line 10694
    :cond_27
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10697
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10698
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10699
    goto/16 :goto_0

    .line 10674
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28

    move v1, v2

    nop

    .line 10675
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v1, v2, :cond_29

    .line 10676
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10678
    goto/16 :goto_0

    .line 10679
    :cond_29
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
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSilentReboot(II)V

    .line 10684
    goto/16 :goto_0

    .line 10659
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2a

    move v1, v2

    nop

    .line 10660
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v1, v2, :cond_2b

    .line 10661
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10663
    goto/16 :goto_0

    .line 10664
    :cond_2b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10667
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10668
    .local v2, "simMode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->reportSimMode(II)V

    .line 10669
    goto/16 :goto_0

    .line 10644
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simMode":I
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2c

    move v1, v2

    nop

    .line 10645
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v1, v2, :cond_2d

    .line 10646
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10648
    goto/16 :goto_0

    .line 10649
    :cond_2d
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
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10654
    goto/16 :goto_0

    .line 10630
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2e

    move v1, v2

    nop

    .line 10631
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v1, v2, :cond_2f

    .line 10632
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10634
    goto/16 :goto_0

    .line 10635
    :cond_2f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10638
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10639
    goto/16 :goto_0

    .line 10615
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_30

    move v1, v2

    nop

    .line 10616
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v1, v2, :cond_31

    .line 10617
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10619
    goto/16 :goto_0

    .line 10620
    :cond_31
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10623
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10624
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10625
    goto/16 :goto_0

    .line 10601
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_32

    move v1, v2

    nop

    .line 10602
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v1, v2, :cond_33

    .line 10603
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10605
    goto/16 :goto_0

    .line 10606
    :cond_33
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10609
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->resetAllConnections(I)V

    .line 10610
    goto/16 :goto_0

    .line 10586
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_34

    move v1, v2

    nop

    .line 10587
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v1, v2, :cond_35

    .line 10588
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10590
    goto/16 :goto_0

    .line 10591
    :cond_35
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10594
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10595
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10596
    goto/16 :goto_0

    .line 10571
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_36

    move v1, v2

    nop

    .line 10572
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v1, v2, :cond_37

    .line 10573
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10575
    goto/16 :goto_0

    .line 10576
    :cond_37
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10579
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10580
    .restart local v2    # "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10581
    goto/16 :goto_0

    .line 10556
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    move v1, v2

    nop

    .line 10557
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v1, v2, :cond_39

    .line 10558
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10560
    goto/16 :goto_0

    .line 10561
    :cond_39
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10564
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10565
    .local v2, "featureId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10566
    goto/16 :goto_0

    .line 10540
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3a

    move v1, v2

    nop

    .line 10541
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v1, v2, :cond_3b

    .line 10542
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10544
    goto/16 :goto_0

    .line 10545
    :cond_3b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10548
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10549
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10550
    .local v3, "value":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10551
    goto/16 :goto_0

    .line 10525
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3c

    move v1, v2

    nop

    .line 10526
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v1, v2, :cond_3d

    .line 10527
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10529
    goto/16 :goto_0

    .line 10530
    :cond_3d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10533
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10534
    .local v2, "configId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10535
    goto/16 :goto_0

    .line 10509
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3e

    move v1, v2

    nop

    .line 10510
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v1, v2, :cond_3f

    .line 10511
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10513
    goto/16 :goto_0

    .line 10514
    :cond_3f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10517
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10518
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10519
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10520
    goto/16 :goto_0

    .line 10493
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_40

    move v1, v2

    nop

    .line 10494
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v1, v2, :cond_41

    .line 10495
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10497
    goto/16 :goto_0

    .line 10498
    :cond_41
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10501
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10502
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10503
    .local v3, "network":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10504
    goto/16 :goto_0

    .line 10475
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

    .line 10476
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_43

    .line 10477
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10479
    goto/16 :goto_0

    .line 10480
    :cond_43
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10483
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10484
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10485
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10486
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10487
    .local v11, "isLast":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10488
    goto/16 :goto_0

    .line 10460
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

    .line 10461
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v1, v2, :cond_45

    .line 10462
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10464
    goto/16 :goto_0

    .line 10465
    :cond_45
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10468
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10469
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10470
    goto/16 :goto_0

    .line 10446
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_46

    move v1, v2

    nop

    .line 10447
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v1, v2, :cond_47

    .line 10448
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10450
    goto/16 :goto_0

    .line 10451
    :cond_47
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10453
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10454
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getApcInfo(I)V

    .line 10455
    goto/16 :goto_0

    .line 10429
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_48

    move v1, v2

    nop

    .line 10430
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_48
    if-eq v1, v2, :cond_49

    .line 10431
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10433
    goto/16 :goto_0

    .line 10434
    :cond_49
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10437
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10438
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10439
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10440
    .local v4, "interval":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setApcMode(IIII)V

    .line 10441
    goto/16 :goto_0

    .line 10412
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

    .line 10413
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v1, v2, :cond_4b

    .line 10414
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10416
    goto/16 :goto_0

    .line 10417
    :cond_4b
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
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10422
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10423
    .local v4, "pktloss":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10424
    goto/16 :goto_0

    .line 10392
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

    .line 10393
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_4d

    .line 10394
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10396
    goto/16 :goto_0

    .line 10397
    :cond_4d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10400
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10401
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10402
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10403
    .local v16, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 10404
    .local v17, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10405
    .local v18, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 10406
    .local v19, "dstPort":I
    move-object v0, v13

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10407
    goto/16 :goto_0

    .line 10377
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

    .line 10378
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v1, v2, :cond_4f

    .line 10379
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10381
    goto/16 :goto_0

    .line 10382
    :cond_4f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10385
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10386
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10387
    goto/16 :goto_0

    .line 10352
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

    .line 10353
    .local v11, "_hidl_is_oneway":Z
    if-eq v11, v2, :cond_51

    .line 10354
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10356
    goto/16 :goto_0

    .line 10357
    :cond_51
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10360
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10361
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10362
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10363
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10364
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10365
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10366
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10367
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10368
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10369
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10370
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10371
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10372
    goto/16 :goto_d

    .line 10335
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

    .line 10336
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v1, v2, :cond_53

    .line 10337
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10339
    goto/16 :goto_d

    .line 10340
    :cond_53
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10342
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10343
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10344
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10345
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10346
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10347
    goto/16 :goto_d

    .line 10319
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

    .line 10320
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v1, v2, :cond_55

    .line 10321
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10323
    goto/16 :goto_d

    .line 10324
    :cond_55
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10326
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10327
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10328
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10329
    .local v3, "snr":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10330
    goto/16 :goto_d

    .line 10301
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

    .line 10302
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_57

    .line 10303
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10305
    goto/16 :goto_d

    .line 10306
    :cond_57
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10309
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10310
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10311
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10312
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10313
    .local v11, "apMac":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10314
    goto/16 :goto_d

    .line 10284
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

    .line 10285
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v1, v2, :cond_59

    .line 10286
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10288
    goto/16 :goto_d

    .line 10289
    :cond_59
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10292
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10293
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10294
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10295
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10296
    goto/16 :goto_d

    .line 10269
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

    .line 10270
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v1, v2, :cond_5b

    .line 10271
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10272
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10273
    goto/16 :goto_d

    .line 10274
    :cond_5b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10277
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10278
    .local v2, "vdp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10279
    goto/16 :goto_d

    .line 10254
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "vdp":I
    :pswitch_24
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    move v1, v2

    nop

    .line 10255
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v1, v2, :cond_5d

    .line 10256
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10257
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10258
    goto/16 :goto_d

    .line 10259
    :cond_5d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10262
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10263
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setE911State(II)V

    .line 10264
    goto/16 :goto_d

    .line 10238
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_25
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5e

    move v1, v2

    nop

    .line 10239
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v1, v2, :cond_5f

    .line 10240
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10241
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10242
    goto/16 :goto_d

    .line 10243
    :cond_5f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10246
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10247
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10248
    .local v3, "interfaceId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10249
    goto/16 :goto_d

    .line 10223
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

    .line 10224
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v1, v2, :cond_61

    .line 10225
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10226
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10227
    goto/16 :goto_d

    .line 10228
    :cond_61
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10231
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10232
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10233
    goto/16 :goto_d

    .line 10208
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_27
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_62

    move v1, v2

    nop

    .line 10209
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v1, v2, :cond_63

    .line 10210
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10212
    goto/16 :goto_d

    .line 10213
    :cond_63
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10216
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10217
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10218
    goto/16 :goto_d

    .line 10193
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_28
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_64

    move v1, v2

    nop

    .line 10194
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v1, v2, :cond_65

    .line 10195
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10196
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10197
    goto/16 :goto_d

    .line 10198
    :cond_65
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10201
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10202
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10203
    goto/16 :goto_d

    .line 10178
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_29
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_66

    move v1, v2

    nop

    .line 10179
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v1, v2, :cond_67

    .line 10180
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10182
    goto/16 :goto_d

    .line 10183
    :cond_67
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10186
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10187
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10188
    goto/16 :goto_d

    .line 10164
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_68

    move v1, v2

    nop

    .line 10165
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v1, v2, :cond_69

    .line 10166
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10168
    goto/16 :goto_d

    .line 10169
    :cond_69
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10172
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->restartRILD(I)V

    .line 10173
    goto/16 :goto_d

    .line 10150
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6a

    move v1, v2

    nop

    .line 10151
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v1, v2, :cond_6b

    .line 10152
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10154
    goto/16 :goto_d

    .line 10155
    :cond_6b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10157
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10158
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->resetRadio(I)V

    .line 10159
    goto/16 :goto_d

    .line 10135
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6c

    move v1, v2

    nop

    .line 10136
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v1, v2, :cond_6d

    .line 10137
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10139
    goto/16 :goto_d

    .line 10140
    :cond_6d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10143
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10144
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10145
    goto/16 :goto_d

    .line 10120
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6e

    move v1, v2

    nop

    .line 10121
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v1, v2, :cond_6f

    .line 10122
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10124
    goto/16 :goto_d

    .line 10125
    :cond_6f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v0

    .line 10128
    .local v0, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10129
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10130
    goto/16 :goto_d

    .line 10105
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_70

    move v1, v2

    nop

    .line 10106
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v1, v2, :cond_71

    .line 10107
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10109
    goto/16 :goto_d

    .line 10110
    :cond_71
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10113
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10114
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10115
    goto/16 :goto_d

    .line 10090
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_72

    move v1, v2

    nop

    .line 10091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v1, v2, :cond_73

    .line 10092
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10094
    goto/16 :goto_d

    .line 10095
    :cond_73
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10098
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10099
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10100
    goto/16 :goto_d

    .line 10075
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_30
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_74

    move v1, v2

    nop

    .line 10076
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v1, v2, :cond_75

    .line 10077
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10079
    goto/16 :goto_d

    .line 10080
    :cond_75
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10083
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10084
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10085
    goto/16 :goto_d

    .line 10060
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_31
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_76

    move v1, v2

    nop

    .line 10061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v1, v2, :cond_77

    .line 10062
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10064
    goto/16 :goto_d

    .line 10065
    :cond_77
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10068
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10069
    .local v2, "resultCode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10070
    goto/16 :goto_d

    .line 10045
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resultCode":I
    :pswitch_32
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_78

    move v1, v2

    nop

    .line 10046
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_78
    if-eq v1, v2, :cond_79

    .line 10047
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10049
    goto/16 :goto_d

    .line 10050
    :cond_79
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10053
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10054
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setTrm(II)V

    .line 10055
    goto/16 :goto_d

    .line 10028
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_33
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7a

    move v1, v2

    nop

    .line 10029
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v1, v2, :cond_7b

    .line 10030
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10031
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10032
    goto/16 :goto_d

    .line 10033
    :cond_7b
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
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10038
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10039
    .local v4, "param2":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setFdMode(IIII)V

    .line 10040
    goto/16 :goto_d

    .line 10011
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

    .line 10012
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v1, v2, :cond_7d

    .line 10013
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10015
    goto/16 :goto_d

    .line 10016
    :cond_7d
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
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10021
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10022
    .local v4, "nAct":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10023
    goto/16 :goto_d

    .line 9997
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

    .line 9998
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7e
    if-eq v1, v2, :cond_7f

    .line 9999
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10001
    goto/16 :goto_d

    .line 10002
    :cond_7f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10005
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCurrentPOLList(I)V

    .line 10006
    goto/16 :goto_d

    .line 9983
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_36
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 9984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eq v1, v2, :cond_81

    .line 9985
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9987
    goto/16 :goto_d

    .line 9988
    :cond_81
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9991
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getPOLCapability(I)V

    .line 9992
    goto/16 :goto_d

    .line 9968
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_37
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_82

    move v1, v2

    nop

    .line 9969
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_82
    if-eq v1, v2, :cond_83

    .line 9970
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9972
    goto/16 :goto_d

    .line 9973
    :cond_83
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9976
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9977
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getRxTestResult(II)V

    .line 9978
    goto/16 :goto_d

    .line 9953
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_38
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_84

    move v1, v2

    nop

    .line 9954
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v1, v2, :cond_85

    .line 9955
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9957
    goto/16 :goto_d

    .line 9958
    :cond_85
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9961
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9962
    .local v2, "antType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setRxTestConfig(II)V

    .line 9963
    goto/16 :goto_d

    .line 9933
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

    .line 9934
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_87

    .line 9935
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9937
    goto/16 :goto_d

    .line 9938
    :cond_87
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9941
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9942
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9943
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9944
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9945
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9946
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9947
    .local v18, "rilDataRegState":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9948
    goto/16 :goto_d

    .line 9918
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

    .line 9919
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v1, v2, :cond_89

    .line 9920
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9922
    goto/16 :goto_d

    .line 9923
    :cond_89
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9926
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9927
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9928
    goto/16 :goto_d

    .line 9904
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_3b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8a

    move v1, v2

    nop

    .line 9905
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v1, v2, :cond_8b

    .line 9906
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9908
    goto/16 :goto_d

    .line 9909
    :cond_8b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9912
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9913
    goto/16 :goto_d

    .line 9887
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8c

    move v1, v2

    nop

    .line 9888
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v1, v2, :cond_8d

    .line 9889
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9891
    goto/16 :goto_d

    .line 9892
    :cond_8d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9895
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9896
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9897
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9898
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9899
    goto/16 :goto_d

    .line 9873
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

    .line 9874
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v1, v2, :cond_8f

    .line 9875
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9877
    goto/16 :goto_d

    .line 9878
    :cond_8f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9881
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->abortFemtocellList(I)V

    .line 9882
    goto/16 :goto_d

    .line 9859
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 9860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_91

    .line 9861
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9863
    goto/16 :goto_d

    .line 9864
    :cond_91
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9867
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getFemtocellList(I)V

    .line 9868
    goto/16 :goto_d

    .line 9845
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_92

    move v1, v2

    nop

    .line 9846
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v1, v2, :cond_93

    .line 9847
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9849
    goto/16 :goto_d

    .line 9850
    :cond_93
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9853
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9854
    goto/16 :goto_d

    .line 9831
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_40
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_94

    move v1, v2

    nop

    .line 9832
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v1, v2, :cond_95

    .line 9833
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9835
    goto/16 :goto_d

    .line 9836
    :cond_95
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9839
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9840
    goto/16 :goto_d

    .line 9817
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_41
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_96

    move v1, v2

    nop

    .line 9818
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_96
    if-eq v1, v2, :cond_97

    .line 9819
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9821
    goto/16 :goto_d

    .line 9822
    :cond_97
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9825
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9826
    goto/16 :goto_d

    .line 9800
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_42
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_98

    move v1, v2

    nop

    .line 9801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_98
    if-eq v1, v2, :cond_99

    .line 9802
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9804
    goto/16 :goto_d

    .line 9805
    :cond_99
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9808
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9809
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9810
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9811
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9812
    goto/16 :goto_d

    .line 9786
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

    .line 9787
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9a
    if-eq v1, v2, :cond_9b

    .line 9788
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9790
    goto/16 :goto_d

    .line 9791
    :cond_9b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9794
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9795
    goto/16 :goto_d

    .line 9771
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_44
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9c

    move v1, v2

    nop

    .line 9772
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9c
    if-eq v1, v2, :cond_9d

    .line 9773
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9775
    goto/16 :goto_d

    .line 9776
    :cond_9d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9779
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9780
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->reloadModemType(II)V

    .line 9781
    goto/16 :goto_d

    .line 9756
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_45
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9e

    move v1, v2

    nop

    .line 9757
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9e
    if-eq v1, v2, :cond_9f

    .line 9758
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9760
    goto/16 :goto_d

    .line 9761
    :cond_9f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9764
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9765
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->storeModemType(II)V

    .line 9766
    goto/16 :goto_d

    .line 9741
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_46
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a0

    move v1, v2

    nop

    .line 9742
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a0
    if-eq v1, v2, :cond_a1

    .line 9743
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9745
    goto/16 :goto_d

    .line 9746
    :cond_a1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9749
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9750
    .local v2, "sessionId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResumeRegistration(II)V

    .line 9751
    goto/16 :goto_d

    .line 9726
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionId":I
    :pswitch_47
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a2

    move v1, v2

    nop

    .line 9727
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a2
    if-eq v1, v2, :cond_a3

    .line 9728
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9730
    goto/16 :goto_d

    .line 9731
    :cond_a3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9734
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9735
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9736
    goto/16 :goto_d

    .line 9711
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_48
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a4

    move v1, v2

    nop

    .line 9712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a4
    if-eq v1, v2, :cond_a5

    .line 9713
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9715
    goto/16 :goto_d

    .line 9716
    :cond_a5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9719
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9720
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9721
    goto/16 :goto_d

    .line 9695
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_49
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    move v1, v2

    nop

    .line 9696
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a6
    if-eq v1, v2, :cond_a7

    .line 9697
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9699
    goto/16 :goto_d

    .line 9700
    :cond_a7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9703
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9704
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9705
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9706
    goto/16 :goto_d

    .line 9679
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a8

    move v1, v2

    nop

    .line 9680
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a8
    if-eq v1, v2, :cond_a9

    .line 9681
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9683
    goto/16 :goto_d

    .line 9684
    :cond_a9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9687
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9688
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9689
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9690
    goto/16 :goto_d

    .line 9665
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

    .line 9666
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_aa
    if-eq v1, v2, :cond_ab

    .line 9667
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9669
    goto/16 :goto_d

    .line 9670
    :cond_ab
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9673
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9674
    goto/16 :goto_d

    .line 9649
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ac

    move v1, v2

    nop

    .line 9650
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ac
    if-eq v1, v2, :cond_ad

    .line 9651
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9653
    goto/16 :goto_d

    .line 9654
    :cond_ad
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9657
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9658
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9659
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9660
    goto/16 :goto_d

    .line 9635
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ae

    move v1, v2

    nop

    .line 9636
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ae
    if-eq v1, v2, :cond_af

    .line 9637
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9639
    goto/16 :goto_d

    .line 9640
    :cond_af
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9642
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9643
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9644
    goto/16 :goto_d

    .line 9621
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b0

    move v1, v2

    nop

    .line 9622
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b0
    if-eq v1, v2, :cond_b1

    .line 9623
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9625
    goto/16 :goto_d

    .line 9626
    :cond_b1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9629
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9630
    goto/16 :goto_d

    .line 9606
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b2

    move v1, v2

    nop

    .line 9607
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b2
    if-eq v1, v2, :cond_b3

    .line 9608
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9610
    goto/16 :goto_d

    .line 9611
    :cond_b3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9614
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9615
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9616
    goto/16 :goto_d

    .line 9590
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_50
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b4

    move v1, v2

    nop

    .line 9591
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b4
    if-eq v1, v2, :cond_b5

    .line 9592
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9594
    goto/16 :goto_d

    .line 9595
    :cond_b5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9598
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9599
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9600
    .local v3, "serialId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->removeCbMsg(III)V

    .line 9601
    goto/16 :goto_d

    .line 9575
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

    .line 9576
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b6
    if-eq v1, v2, :cond_b7

    .line 9577
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9579
    goto/16 :goto_d

    .line 9580
    :cond_b7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9583
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9584
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setEtws(II)V

    .line 9585
    goto/16 :goto_d

    .line 9561
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_52
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b8

    move v1, v2

    nop

    .line 9562
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b8
    if-eq v1, v2, :cond_b9

    .line 9563
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9564
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9565
    goto/16 :goto_d

    .line 9566
    :cond_b9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9569
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9570
    goto/16 :goto_d

    .line 9545
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_53
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ba

    move v1, v2

    nop

    .line 9546
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ba
    if-eq v1, v2, :cond_bb

    .line 9547
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9549
    goto/16 :goto_d

    .line 9550
    :cond_bb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9553
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9554
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9555
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9556
    goto/16 :goto_d

    .line 9531
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_54
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bc

    move v1, v2

    nop

    .line 9532
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bc
    if-eq v1, v2, :cond_bd

    .line 9533
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9535
    goto/16 :goto_d

    .line 9536
    :cond_bd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9539
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getSmsParameters(I)V

    .line 9540
    goto/16 :goto_d

    .line 9512
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

    .line 9513
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_bf

    .line 9514
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9515
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9516
    goto/16 :goto_d

    .line 9517
    :cond_bf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9520
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9521
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9522
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9523
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9524
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9525
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, v13

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9526
    goto/16 :goto_d

    .line 9495
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

    .line 9496
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c0
    if-eq v1, v2, :cond_c1

    .line 9497
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9499
    goto/16 :goto_d

    .line 9500
    :cond_c1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9503
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9504
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9505
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9506
    .local v4, "simType":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9507
    goto/16 :goto_d

    .line 9479
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

    .line 9480
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v1, v2, :cond_c3

    .line 9481
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9483
    goto/16 :goto_d

    .line 9484
    :cond_c3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9487
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9488
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9489
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9490
    goto/16 :goto_d

    .line 9459
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

    .line 9460
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_c5

    .line 9461
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9463
    goto/16 :goto_d

    .line 9464
    :cond_c5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9467
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9468
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9469
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9470
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9471
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9472
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9473
    .local v18, "gid2":Ljava/lang/String;
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9474
    goto/16 :goto_d

    .line 9444
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

    .line 9445
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c6
    if-eq v1, v2, :cond_c7

    .line 9446
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9448
    goto/16 :goto_d

    .line 9449
    :cond_c7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9452
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9453
    .local v2, "category":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->queryNetworkLock(II)V

    .line 9454
    goto/16 :goto_d

    .line 9428
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "category":I
    :pswitch_5a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c8

    move v1, v2

    nop

    .line 9429
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c8
    if-eq v1, v2, :cond_c9

    .line 9430
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9432
    goto/16 :goto_d

    .line 9433
    :cond_c9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9436
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9437
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9438
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9439
    goto/16 :goto_d

    .line 9413
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_5b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ca

    move v1, v2

    nop

    .line 9414
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ca
    if-eq v1, v2, :cond_cb

    .line 9415
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9417
    goto/16 :goto_d

    .line 9418
    :cond_cb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9420
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9421
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9422
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSimPower(II)V

    .line 9423
    goto/16 :goto_d

    .line 9399
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cc

    move v1, v2

    nop

    .line 9400
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cc
    if-eq v1, v2, :cond_cd

    .line 9401
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9403
    goto/16 :goto_d

    .line 9404
    :cond_cd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9407
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getIccid(I)V

    .line 9408
    goto/16 :goto_d

    .line 9385
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ce

    move v1, v2

    nop

    .line 9386
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ce
    if-eq v1, v2, :cond_cf

    .line 9387
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9389
    goto/16 :goto_d

    .line 9390
    :cond_cf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9393
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getATR(I)V

    .line 9394
    goto/16 :goto_d

    .line 9370
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d0

    move v1, v2

    nop

    .line 9371
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d0
    if-eq v1, v2, :cond_d1

    .line 9372
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9374
    goto/16 :goto_d

    .line 9375
    :cond_d1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9378
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9379
    .restart local v2    # "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9380
    goto/16 :goto_d

    .line 9355
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d2

    move v1, v2

    nop

    .line 9356
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d2
    if-eq v1, v2, :cond_d3

    .line 9357
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9358
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9359
    goto/16 :goto_d

    .line 9360
    :cond_d3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9362
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9363
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9364
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setModemPower(IZ)V

    .line 9365
    goto/16 :goto_d

    .line 9340
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_60
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d4

    move v1, v2

    nop

    .line 9341
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d4
    if-eq v1, v2, :cond_d5

    .line 9342
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9343
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9344
    goto/16 :goto_d

    .line 9345
    :cond_d5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9348
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9349
    .local v2, "ready":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPhonebookReady(II)V

    .line 9350
    goto/16 :goto_d

    .line 9324
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ready":I
    :pswitch_61
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d6

    move v1, v2

    nop

    .line 9325
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d6
    if-eq v1, v2, :cond_d7

    .line 9326
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9328
    goto/16 :goto_d

    .line 9329
    :cond_d7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9332
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9333
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9334
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readUPBAasList(III)V

    .line 9335
    goto/16 :goto_d

    .line 9308
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

    .line 9309
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d8
    if-eq v1, v2, :cond_d9

    .line 9310
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9312
    goto/16 :goto_d

    .line 9313
    :cond_d9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9316
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9317
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9318
    .local v3, "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9319
    goto/16 :goto_d

    .line 9292
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

    .line 9293
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_da
    if-eq v1, v2, :cond_db

    .line 9294
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9296
    goto/16 :goto_d

    .line 9297
    :cond_db
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9300
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9301
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9302
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9303
    goto/16 :goto_d

    .line 9276
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

    .line 9277
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dc
    if-eq v1, v2, :cond_dd

    .line 9278
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9280
    goto/16 :goto_d

    .line 9281
    :cond_dd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9284
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9285
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9286
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9287
    goto/16 :goto_d

    .line 9260
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

    .line 9261
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_de
    if-eq v1, v2, :cond_df

    .line 9262
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9264
    goto/16 :goto_d

    .line 9265
    :cond_df
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9268
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9269
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9270
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9271
    goto/16 :goto_d

    .line 9244
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

    .line 9245
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e0
    if-eq v1, v2, :cond_e1

    .line 9246
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9248
    goto/16 :goto_d

    .line 9249
    :cond_e1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9252
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9253
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9254
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9255
    goto/16 :goto_d

    .line 9228
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_67
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e2

    move v1, v2

    nop

    .line 9229
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e2
    if-eq v1, v2, :cond_e3

    .line 9230
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9231
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9232
    goto/16 :goto_d

    .line 9233
    :cond_e3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9236
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9237
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9238
    .local v3, "index2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9239
    goto/16 :goto_d

    .line 9212
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

    .line 9213
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e4
    if-eq v1, v2, :cond_e5

    .line 9214
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9216
    goto/16 :goto_d

    .line 9217
    :cond_e5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9220
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9221
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9222
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9223
    goto/16 :goto_d

    .line 9198
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

    .line 9199
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e6
    if-eq v1, v2, :cond_e7

    .line 9200
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9202
    goto/16 :goto_d

    .line 9203
    :cond_e7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9206
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9207
    goto/16 :goto_d

    .line 9184
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e8

    move v1, v2

    nop

    .line 9185
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e8
    if-eq v1, v2, :cond_e9

    .line 9186
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9188
    goto/16 :goto_d

    .line 9189
    :cond_e9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9192
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9193
    goto/16 :goto_d

    .line 9168
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ea

    move v1, v2

    nop

    .line 9169
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ea
    if-eq v1, v2, :cond_eb

    .line 9170
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9172
    goto/16 :goto_d

    .line 9173
    :cond_eb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9176
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9177
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9178
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9179
    goto/16 :goto_d

    .line 9153
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

    .line 9154
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ec
    if-eq v1, v2, :cond_ed

    .line 9155
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9157
    goto/16 :goto_d

    .line 9158
    :cond_ed
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9161
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9162
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9163
    goto/16 :goto_d

    .line 9137
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    :pswitch_6d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ee

    move v1, v2

    nop

    .line 9138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ee
    if-eq v1, v2, :cond_ef

    .line 9139
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9141
    goto/16 :goto_d

    .line 9142
    :cond_ef
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9145
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9146
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9147
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readUPBGasList(III)V

    .line 9148
    goto/16 :goto_d

    .line 9120
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

    .line 9121
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f0
    if-eq v1, v2, :cond_f1

    .line 9122
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9124
    goto/16 :goto_d

    .line 9125
    :cond_f1
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
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9130
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9131
    .local v4, "entryIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9132
    goto/16 :goto_d

    .line 9105
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

    .line 9106
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f2
    if-eq v1, v2, :cond_f3

    .line 9107
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9109
    goto/16 :goto_d

    .line 9110
    :cond_f3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9113
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9114
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9115
    goto/16 :goto_d

    .line 9091
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_70
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f4

    move v1, v2

    nop

    .line 9092
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f4
    if-eq v1, v2, :cond_f5

    .line 9093
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9095
    goto/16 :goto_d

    .line 9096
    :cond_f5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9099
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->queryUPBCapability(I)V

    .line 9100
    goto/16 :goto_d

    .line 9074
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_71
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f6

    move v1, v2

    nop

    .line 9075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f6
    if-eq v1, v2, :cond_f7

    .line 9076
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9078
    goto/16 :goto_d

    .line 9079
    :cond_f7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9082
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9083
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9084
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9085
    .local v4, "eIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9086
    goto/16 :goto_d

    .line 9058
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

    .line 9059
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v1, v2, :cond_f9

    .line 9060
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9062
    goto/16 :goto_d

    .line 9063
    :cond_f9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9066
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9067
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9068
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9069
    goto/16 :goto_d

    .line 9043
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_73
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fa

    move v1, v2

    nop

    .line 9044
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fa
    if-eq v1, v2, :cond_fb

    .line 9045
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9046
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9047
    goto/16 :goto_d

    .line 9048
    :cond_fb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9050
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9051
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9052
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9053
    goto/16 :goto_d

    .line 9029
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_74
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fc

    move v1, v2

    nop

    .line 9030
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fc
    if-eq v1, v2, :cond_fd

    .line 9031
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9033
    goto/16 :goto_d

    .line 9034
    :cond_fd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9037
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getEccNum(I)V

    .line 9038
    goto/16 :goto_d

    .line 9013
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_75
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    move v1, v2

    nop

    .line 9014
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fe
    if-eq v1, v2, :cond_ff

    .line 9015
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9017
    goto/16 :goto_d

    .line 9018
    :cond_ff
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9021
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9022
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9023
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9024
    goto/16 :goto_d

    .line 8998
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

    .line 8999
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_100
    if-eq v1, v2, :cond_101

    .line 9000
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9002
    goto/16 :goto_d

    .line 9003
    :cond_101
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
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 9008
    goto/16 :goto_d

    .line 8983
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_77
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_102

    move v1, v2

    nop

    .line 8984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_102
    if-eq v1, v2, :cond_103

    .line 8985
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8987
    goto/16 :goto_d

    .line 8988
    :cond_103
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8991
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8992
    .local v2, "phoneType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->eccPreferredRat(II)V

    .line 8993
    goto/16 :goto_d

    .line 8967
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneType":I
    :pswitch_78
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_104

    move v1, v2

    nop

    .line 8968
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_104
    if-eq v1, v2, :cond_105

    .line 8969
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8971
    goto/16 :goto_d

    .line 8972
    :cond_105
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8975
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8976
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8977
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->currentStatus(III)V

    .line 8978
    goto/16 :goto_d

    .line 8951
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

    .line 8952
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_106
    if-eq v1, v2, :cond_107

    .line 8953
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8955
    goto/16 :goto_d

    .line 8956
    :cond_107
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8959
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8960
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8961
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 8962
    goto/16 :goto_d

    .line 8936
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

    .line 8937
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_108
    if-eq v1, v2, :cond_109

    .line 8938
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8940
    goto/16 :goto_d

    .line 8941
    :cond_109
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8944
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8945
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8946
    goto/16 :goto_d

    .line 8920
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceCategory":I
    :pswitch_7b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10a

    move v1, v2

    nop

    .line 8921
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10a
    if-eq v1, v2, :cond_10b

    .line 8922
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8924
    goto/16 :goto_d

    .line 8925
    :cond_10b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8927
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8928
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8929
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8930
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8931
    goto/16 :goto_d

    .line 8903
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10c

    move v1, v2

    nop

    .line 8904
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10c
    if-eq v1, v2, :cond_10d

    .line 8905
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8907
    goto/16 :goto_d

    .line 8908
    :cond_10d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8911
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8912
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8913
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8914
    .local v4, "seqNumber":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCallIndication(IIII)V

    .line 8915
    goto/16 :goto_d

    .line 8889
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

    .line 8890
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10e
    if-eq v1, v2, :cond_10f

    .line 8891
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8893
    goto/16 :goto_d

    .line 8894
    :cond_10f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8897
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->hangupAll(I)V

    .line 8898
    goto/16 :goto_d

    .line 8874
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_110

    move v1, v2

    nop

    .line 8875
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_110
    if-eq v1, v2, :cond_111

    .line 8876
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8878
    goto/16 :goto_d

    .line 8879
    :cond_111
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8882
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8883
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8884
    goto/16 :goto_d

    .line 8860
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_112

    move v1, v2

    nop

    .line 8861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_112
    if-eq v1, v2, :cond_113

    .line 8862
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8864
    goto/16 :goto_d

    .line 8865
    :cond_113
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8868
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->resetSuppServ(I)V

    .line 8869
    goto/16 :goto_d

    .line 8846
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_80
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_114

    move v1, v2

    nop

    .line 8847
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_114
    if-eq v1, v2, :cond_115

    .line 8848
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8850
    goto/16 :goto_d

    .line 8851
    :cond_115
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8853
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8854
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getXcapStatus(I)V

    .line 8855
    goto/16 :goto_d

    .line 8832
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_81
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_116

    move v1, v2

    nop

    .line 8833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_116
    if-eq v1, v2, :cond_117

    .line 8834
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8836
    goto/16 :goto_d

    .line 8837
    :cond_117
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8840
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->cancelUssi(I)V

    .line 8841
    goto/16 :goto_d

    .line 8816
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_82
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_118

    move v1, v2

    nop

    .line 8817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_118
    if-eq v1, v2, :cond_119

    .line 8818
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8820
    goto/16 :goto_d

    .line 8821
    :cond_119
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8824
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8825
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8826
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8827
    goto/16 :goto_d

    .line 8798
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

    .line 8799
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_11b

    .line 8800
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8801
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8802
    goto/16 :goto_d

    .line 8803
    :cond_11b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8806
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8807
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8808
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8809
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8810
    .local v11, "netId":I
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8811
    goto/16 :goto_d

    .line 8782
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

    .line 8783
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11c
    if-eq v1, v2, :cond_11d

    .line 8784
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8786
    goto/16 :goto_d

    .line 8787
    :cond_11d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8790
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8791
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8792
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8793
    goto/16 :goto_d

    .line 8766
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_85
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11e

    move v1, v2

    nop

    .line 8767
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11e
    if-eq v1, v2, :cond_11f

    .line 8768
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8770
    goto/16 :goto_d

    .line 8771
    :cond_11f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8774
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8775
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8776
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8777
    goto/16 :goto_d

    .line 8751
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_86
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_120

    move v1, v2

    nop

    .line 8752
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_120
    if-eq v1, v2, :cond_121

    .line 8753
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8755
    goto/16 :goto_d

    .line 8756
    :cond_121
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8759
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8760
    .local v2, "colrEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setColr(II)V

    .line 8761
    goto/16 :goto_d

    .line 8736
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrEnable":I
    :pswitch_87
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_122

    move v1, v2

    nop

    .line 8737
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_122
    if-eq v1, v2, :cond_123

    .line 8738
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8740
    goto/16 :goto_d

    .line 8741
    :cond_123
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8744
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8745
    .local v2, "colpEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setColp(II)V

    .line 8746
    goto/16 :goto_d

    .line 8721
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colpEnable":I
    :pswitch_88
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_124

    move v1, v2

    nop

    .line 8722
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_124
    if-eq v1, v2, :cond_125

    .line 8723
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8725
    goto/16 :goto_d

    .line 8726
    :cond_125
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8729
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8730
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8731
    goto/16 :goto_d

    .line 8707
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_89
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_126

    move v1, v2

    nop

    .line 8708
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_126
    if-eq v1, v2, :cond_127

    .line 8709
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8711
    goto/16 :goto_d

    .line 8712
    :cond_127
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8715
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getColr(I)V

    .line 8716
    goto/16 :goto_d

    .line 8693
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_128

    move v1, v2

    nop

    .line 8694
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_128
    if-eq v1, v2, :cond_129

    .line 8695
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8697
    goto/16 :goto_d

    .line 8698
    :cond_129
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8701
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getColp(I)V

    .line 8702
    goto/16 :goto_d

    .line 8678
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12a

    move v1, v2

    nop

    .line 8679
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12a
    if-eq v1, v2, :cond_12b

    .line 8680
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8682
    goto/16 :goto_d

    .line 8683
    :cond_12b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8686
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8687
    .local v2, "clipEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setClip(II)V

    .line 8688
    goto/16 :goto_d

    .line 8660
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

    .line 8661
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_12d

    .line 8662
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8663
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8664
    goto/16 :goto_d

    .line 8665
    :cond_12d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8668
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8669
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8670
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8671
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8672
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8673
    goto/16 :goto_d

    .line 8645
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

    .line 8646
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12e
    if-eq v1, v2, :cond_12f

    .line 8647
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8649
    goto/16 :goto_d

    .line 8650
    :cond_12f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8653
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8654
    .local v2, "phoneId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getRoamingEnable(II)V

    .line 8655
    goto/16 :goto_d

    .line 8630
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    :pswitch_8e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_130

    move v1, v2

    nop

    .line 8631
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_130
    if-eq v1, v2, :cond_131

    .line 8632
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8634
    goto/16 :goto_d

    .line 8635
    :cond_131
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8638
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8639
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8640
    goto/16 :goto_d

    .line 8615
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_132

    move v1, v2

    nop

    .line 8616
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_132
    if-eq v1, v2, :cond_133

    .line 8617
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8619
    goto/16 :goto_d

    .line 8620
    :cond_133
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8623
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8624
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8625
    goto/16 :goto_d

    .line 8601
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_90
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_134

    move v1, v2

    nop

    .line 8602
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_134
    if-eq v1, v2, :cond_135

    .line 8603
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8605
    goto/16 :goto_d

    .line 8606
    :cond_135
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8609
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8610
    goto/16 :goto_d

    .line 8585
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_91
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_136

    move v1, v2

    nop

    .line 8586
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_136
    if-eq v1, v2, :cond_137

    .line 8587
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8589
    goto/16 :goto_d

    .line 8590
    :cond_137
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8593
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8594
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8595
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8596
    goto/16 :goto_d

    .line 8568
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

    .line 8569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_138
    if-eq v1, v2, :cond_139

    .line 8570
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8572
    goto/16 :goto_d

    .line 8573
    :cond_139
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8576
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8577
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8578
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8579
    .local v4, "timer":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8580
    goto/16 :goto_d

    .line 8552
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

    .line 8553
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13a
    if-eq v1, v2, :cond_13b

    .line 8554
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8556
    goto/16 :goto_d

    .line 8557
    :cond_13b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8560
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8561
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8562
    .local v3, "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8563
    goto/16 :goto_d

    .line 8536
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

    .line 8537
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13c
    if-eq v1, v2, :cond_13d

    .line 8538
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8540
    goto/16 :goto_d

    .line 8541
    :cond_13d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8544
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8545
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8546
    .restart local v3    # "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8547
    goto/16 :goto_d

    .line 8521
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

    .line 8522
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13e
    if-eq v1, v2, :cond_13f

    .line 8523
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8525
    goto/16 :goto_d

    .line 8526
    :cond_13f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8529
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8530
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->forceReleaseCall(II)V

    .line 8531
    goto/16 :goto_d

    .line 8505
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_96
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_140

    move v1, v2

    nop

    .line 8506
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_140
    if-eq v1, v2, :cond_141

    .line 8507
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8509
    goto/16 :goto_d

    .line 8510
    :cond_141
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8513
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8514
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8515
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8516
    goto/16 :goto_d

    .line 8490
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_97
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    move v1, v2

    nop

    .line 8491
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_142
    if-eq v1, v2, :cond_143

    .line 8492
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8494
    goto/16 :goto_d

    .line 8495
    :cond_143
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8498
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8499
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8500
    goto/16 :goto_d

    .line 8475
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_98
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_144

    move v1, v2

    nop

    .line 8476
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_144
    if-eq v1, v2, :cond_145

    .line 8477
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8479
    goto/16 :goto_d

    .line 8480
    :cond_145
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8483
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8484
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8485
    goto/16 :goto_d

    .line 8458
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_99
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_146

    move v1, v2

    nop

    .line 8459
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_146
    if-eq v1, v2, :cond_147

    .line 8460
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8462
    goto/16 :goto_d

    .line 8463
    :cond_147
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
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8468
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8469
    .local v4, "type":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8470
    goto/16 :goto_d

    .line 8442
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

    .line 8443
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_148
    if-eq v1, v2, :cond_149

    .line 8444
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8446
    goto/16 :goto_d

    .line 8447
    :cond_149
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8450
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8451
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8452
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8453
    goto/16 :goto_d

    .line 8427
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_9b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14a

    move v1, v2

    nop

    .line 8428
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14a
    if-eq v1, v2, :cond_14b

    .line 8429
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8431
    goto/16 :goto_d

    .line 8432
    :cond_14b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8435
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8436
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setWfcProfile(II)V

    .line 8437
    goto/16 :goto_d

    .line 8410
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "wfcPreference":I
    :pswitch_9c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14c

    move v1, v2

    nop

    .line 8411
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14c
    if-eq v1, v2, :cond_14d

    .line 8412
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8414
    goto/16 :goto_d

    .line 8415
    :cond_14d
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
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8420
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8421
    .local v4, "callToRemove":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8422
    goto/16 :goto_d

    .line 8393
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

    .line 8394
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14e
    if-eq v1, v2, :cond_14f

    .line 8395
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8397
    goto/16 :goto_d

    .line 8398
    :cond_14f
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
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8403
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8404
    .local v4, "callToAdd":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8405
    goto/16 :goto_d

    .line 8377
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

    .line 8378
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_150
    if-eq v1, v2, :cond_151

    .line 8379
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8381
    goto/16 :goto_d

    .line 8382
    :cond_151
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8385
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8386
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8387
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8388
    goto/16 :goto_d

    .line 8362
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

    .line 8363
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_152
    if-eq v1, v2, :cond_153

    .line 8364
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8366
    goto/16 :goto_d

    .line 8367
    :cond_153
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8370
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8371
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8372
    goto/16 :goto_d

    .line 8342
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

    .line 8343
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_155

    .line 8344
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8346
    goto/16 :goto_d

    .line 8347
    :cond_155
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8350
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8351
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8352
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8353
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8354
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8355
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8356
    .local v18, "eimsEnable":Z
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8357
    goto/16 :goto_d

    .line 8327
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

    .line 8328
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_156
    if-eq v1, v2, :cond_157

    .line 8329
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8330
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8331
    goto/16 :goto_d

    .line 8332
    :cond_157
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8335
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8336
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8337
    goto/16 :goto_d

    .line 8312
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_158

    move v1, v2

    nop

    .line 8313
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_158
    if-eq v1, v2, :cond_159

    .line 8314
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8316
    goto/16 :goto_d

    .line 8317
    :cond_159
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8320
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8321
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8322
    goto/16 :goto_d

    .line 8297
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15a

    move v1, v2

    nop

    .line 8298
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15a
    if-eq v1, v2, :cond_15b

    .line 8299
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8300
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8301
    goto/16 :goto_d

    .line 8302
    :cond_15b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8304
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8305
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8306
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8307
    goto/16 :goto_d

    .line 8282
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15c

    move v1, v2

    nop

    .line 8283
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15c
    if-eq v1, v2, :cond_15d

    .line 8284
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8286
    goto/16 :goto_d

    .line 8287
    :cond_15d
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
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8292
    goto/16 :goto_d

    .line 8267
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15e

    move v1, v2

    nop

    .line 8268
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15e
    if-eq v1, v2, :cond_15f

    .line 8269
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8271
    goto/16 :goto_d

    .line 8272
    :cond_15f
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
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8277
    goto/16 :goto_d

    .line 8252
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_160

    move v1, v2

    nop

    .line 8253
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_160
    if-eq v1, v2, :cond_161

    .line 8254
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8256
    goto/16 :goto_d

    .line 8257
    :cond_161
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
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8262
    goto/16 :goto_d

    .line 8237
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_162

    move v1, v2

    nop

    .line 8238
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_162
    if-eq v1, v2, :cond_163

    .line 8239
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8241
    goto/16 :goto_d

    .line 8242
    :cond_163
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
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8247
    goto/16 :goto_d

    .line 8222
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_164

    move v1, v2

    nop

    .line 8223
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_164
    if-eq v1, v2, :cond_165

    .line 8224
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8226
    goto/16 :goto_d

    .line 8227
    :cond_165
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
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setImsEnable(IZ)V

    .line 8232
    goto/16 :goto_d

    .line 8207
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    move v1, v2

    nop

    .line 8208
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_166
    if-eq v1, v2, :cond_167

    .line 8209
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8210
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8211
    goto/16 :goto_d

    .line 8212
    :cond_167
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8215
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8216
    .local v2, "cause":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->imsDeregNotification(II)V

    .line 8217
    goto/16 :goto_d

    .line 8192
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cause":I
    :pswitch_aa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_168

    move v1, v2

    nop

    .line 8193
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_168
    if-eq v1, v2, :cond_169

    .line 8194
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8196
    goto/16 :goto_d

    .line 8197
    :cond_169
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8200
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8201
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->resumeCall(II)V

    .line 8202
    goto/16 :goto_d

    .line 8177
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_ab
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16a

    move v1, v2

    nop

    .line 8178
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16a
    if-eq v1, v2, :cond_16b

    .line 8179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8181
    goto/16 :goto_d

    .line 8182
    :cond_16b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8185
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8186
    .restart local v2    # "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->holdCall(II)V

    .line 8187
    goto/16 :goto_d

    .line 8161
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_ac
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16c

    move v1, v2

    nop

    .line 8162
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16c
    if-eq v1, v2, :cond_16d

    .line 8163
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8165
    goto/16 :goto_d

    .line 8166
    :cond_16d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8169
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8170
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8171
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8172
    goto/16 :goto_d

    .line 8145
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

    .line 8146
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16e
    if-eq v1, v2, :cond_16f

    .line 8147
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8149
    goto/16 :goto_d

    .line 8150
    :cond_16f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8153
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8154
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8155
    .local v3, "callId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->videoCallAccept(III)V

    .line 8156
    goto/16 :goto_d

    .line 8128
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

    .line 8129
    .local v2, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_171

    .line 8130
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8132
    goto/16 :goto_d

    .line 8133
    :cond_171
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v0

    .line 8136
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v3

    .line 8137
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8138
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8140
    goto/16 :goto_d

    .line 8111
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

    .line 8112
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_173

    .line 8113
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8114
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8115
    goto/16 :goto_d

    .line 8116
    :cond_173
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v0

    .line 8119
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v3

    .line 8120
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8121
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8123
    goto/16 :goto_d

    .line 8094
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

    .line 8095
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_175

    .line 8096
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8098
    goto/16 :goto_d

    .line 8099
    :cond_175
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v0

    .line 8102
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v3

    .line 8103
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8104
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8106
    goto/16 :goto_d

    .line 8077
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

    .line 8078
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_177

    .line 8079
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8081
    goto/16 :goto_d

    .line 8082
    :cond_177
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v0

    .line 8085
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v3

    .line 8086
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8087
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8089
    goto/16 :goto_d

    .line 8061
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_178

    move v1, v2

    nop

    .line 8062
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_178
    if-eq v1, v2, :cond_179

    .line 8063
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8064
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8065
    goto/16 :goto_d

    .line 8066
    :cond_179
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8069
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8070
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8071
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8072
    goto/16 :goto_d

    .line 8038
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

    .line 8039
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_17b

    .line 8040
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8042
    goto/16 :goto_d

    .line 8043
    :cond_17b
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8046
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8047
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8048
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8050
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8051
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8052
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8053
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8054
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8055
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
    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8056
    goto/16 :goto_d

    .line 8018
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

    .line 8019
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_17d

    .line 8020
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8022
    goto/16 :goto_d

    .line 8023
    :cond_17d
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8025
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8026
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8027
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8028
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8029
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8030
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8031
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8032
    .local v18, "accessNetwork":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8033
    goto/16 :goto_d

    .line 8000
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

    .line 8001
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_17f

    .line 8002
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8004
    goto/16 :goto_d

    .line 8005
    :cond_17f
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8008
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8009
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8010
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8011
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8012
    .local v11, "accessNetwork":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 8013
    goto/16 :goto_d

    .line 7985
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

    .line 7986
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_180
    if-eq v1, v2, :cond_181

    .line 7987
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7989
    goto/16 :goto_d

    .line 7990
    :cond_181
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7993
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7994
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 7995
    goto/16 :goto_d

    .line 7969
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_182

    move v1, v2

    nop

    .line 7970
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_182
    if-eq v1, v2, :cond_183

    .line 7971
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7973
    goto/16 :goto_d

    .line 7974
    :cond_183
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7977
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 7978
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7979
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 7980
    goto/16 :goto_d

    .line 7954
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_184

    move v1, v2

    nop

    .line 7955
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_184
    if-eq v1, v2, :cond_185

    .line 7956
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7957
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7958
    goto/16 :goto_d

    .line 7959
    :cond_185
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7962
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7963
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->stopKeepalive(II)V

    .line 7964
    goto/16 :goto_d

    .line 7938
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionHandle":I
    :pswitch_b9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_186

    move v1, v2

    nop

    .line 7939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_186
    if-eq v1, v2, :cond_187

    .line 7940
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7942
    goto/16 :goto_d

    .line 7943
    :cond_187
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7946
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7947
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7948
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7949
    goto/16 :goto_d

    .line 7924
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_ba
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_188

    move v1, v2

    nop

    .line 7925
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_188
    if-eq v1, v2, :cond_189

    .line 7926
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7928
    goto/16 :goto_d

    .line 7929
    :cond_189
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7932
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->stopNetworkScan(I)V

    .line 7933
    goto/16 :goto_d

    .line 7908
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    move v1, v2

    nop

    .line 7909
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18a
    if-eq v1, v2, :cond_18b

    .line 7910
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7912
    goto/16 :goto_d

    .line 7913
    :cond_18b
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7916
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7917
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7918
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7919
    goto/16 :goto_d

    .line 7893
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_bc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18c

    move v1, v2

    nop

    .line 7894
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18c
    if-eq v1, v2, :cond_18d

    .line 7895
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7896
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7897
    goto/16 :goto_d

    .line 7898
    :cond_18d
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7901
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7902
    .local v2, "powerUp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7903
    goto/16 :goto_d

    .line 7877
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":I
    :pswitch_bd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18e

    move v1, v2

    nop

    .line 7878
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18e
    if-eq v1, v2, :cond_18f

    .line 7879
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7881
    goto/16 :goto_d

    .line 7882
    :cond_18f
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7885
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7886
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7887
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7888
    goto/16 :goto_d

    .line 7864
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_be
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_190

    move v1, v2

    nop

    .line 7865
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_190
    if-eq v1, v2, :cond_191

    .line 7866
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7868
    goto/16 :goto_d

    .line 7869
    :cond_191
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7871
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->responseAcknowledgement()V

    .line 7872
    goto/16 :goto_d

    .line 7849
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_192

    move v1, v2

    nop

    .line 7850
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_192
    if-eq v1, v2, :cond_193

    .line 7851
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7853
    goto/16 :goto_d

    .line 7854
    :cond_193
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7857
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7858
    .local v2, "powerUp":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7859
    goto/16 :goto_d

    .line 7834
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":Z
    :pswitch_c0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_194

    move v1, v2

    nop

    .line 7835
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_194
    if-eq v1, v2, :cond_195

    .line 7836
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7838
    goto/16 :goto_d

    .line 7839
    :cond_195
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7841
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7842
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7843
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setIndicationFilter(II)V

    .line 7844
    goto/16 :goto_d

    .line 7818
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_c1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_196

    move v1, v2

    nop

    .line 7819
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_196
    if-eq v1, v2, :cond_197

    .line 7820
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7822
    goto/16 :goto_d

    .line 7823
    :cond_197
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7826
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7827
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7828
    .local v3, "state":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7829
    goto/16 :goto_d

    .line 7804
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

    .line 7805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_198
    if-eq v1, v2, :cond_199

    .line 7806
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7808
    goto/16 :goto_d

    .line 7809
    :cond_199
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7812
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7813
    goto/16 :goto_d

    .line 7787
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19a

    move v1, v2

    nop

    .line 7788
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19a
    if-eq v1, v2, :cond_19b

    .line 7789
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7791
    goto/16 :goto_d

    .line 7792
    :cond_19b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7795
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7796
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7797
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v15}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7798
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7799
    goto/16 :goto_d

    .line 7773
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

    .line 7774
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19c
    if-eq v1, v2, :cond_19d

    .line 7775
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7777
    goto/16 :goto_d

    .line 7778
    :cond_19d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7781
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7782
    goto/16 :goto_d

    .line 7759
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19e

    move v1, v2

    nop

    .line 7760
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19e
    if-eq v1, v2, :cond_19f

    .line 7761
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7763
    goto/16 :goto_d

    .line 7764
    :cond_19f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7767
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->pullLceData(I)V

    .line 7768
    goto/16 :goto_d

    .line 7745
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a0

    move v1, v2

    nop

    .line 7746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a0
    if-eq v1, v2, :cond_1a1

    .line 7747
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7749
    goto/16 :goto_d

    .line 7750
    :cond_1a1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7753
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->stopLceService(I)V

    .line 7754
    goto/16 :goto_d

    .line 7729
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a2

    move v1, v2

    nop

    .line 7730
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a2
    if-eq v1, v2, :cond_1a3

    .line 7731
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7733
    goto/16 :goto_d

    .line 7734
    :cond_1a3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7737
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7738
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7739
    .local v3, "pullMode":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->startLceService(IIZ)V

    .line 7740
    goto/16 :goto_d

    .line 7713
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

    .line 7714
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a4
    if-eq v1, v2, :cond_1a5

    .line 7715
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7717
    goto/16 :goto_d

    .line 7718
    :cond_1a5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7721
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7722
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7723
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7724
    goto/16 :goto_d

    .line 7699
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a6

    move v1, v2

    nop

    .line 7700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a6
    if-eq v1, v2, :cond_1a7

    .line 7701
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7703
    goto/16 :goto_d

    .line 7704
    :cond_1a7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7707
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getRadioCapability(I)V

    .line 7708
    goto/16 :goto_d

    .line 7685
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ca
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a8

    move v1, v2

    nop

    .line 7686
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a8
    if-eq v1, v2, :cond_1a9

    .line 7687
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7688
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7689
    goto/16 :goto_d

    .line 7690
    :cond_1a9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7693
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->requestShutdown(I)V

    .line 7694
    goto/16 :goto_d

    .line 7669
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_cb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1aa

    move v1, v2

    nop

    .line 7670
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1aa
    if-eq v1, v2, :cond_1ab

    .line 7671
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7673
    goto/16 :goto_d

    .line 7674
    :cond_1ab
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7677
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7678
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7679
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7680
    goto/16 :goto_d

    .line 7652
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

    .line 7653
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ac
    if-eq v1, v2, :cond_1ad

    .line 7654
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7655
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7656
    goto/16 :goto_d

    .line 7657
    :cond_1ad
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7660
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7661
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7662
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7663
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7664
    goto/16 :goto_d

    .line 7638
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

    .line 7639
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ae
    if-eq v1, v2, :cond_1af

    .line 7640
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7642
    goto/16 :goto_d

    .line 7643
    :cond_1af
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7646
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getHardwareConfig(I)V

    .line 7647
    goto/16 :goto_d

    .line 7623
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ce
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b0

    move v1, v2

    nop

    .line 7624
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b0
    if-eq v1, v2, :cond_1b1

    .line 7625
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7627
    goto/16 :goto_d

    .line 7628
    :cond_1b1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7631
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7632
    .local v2, "allow":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7633
    goto/16 :goto_d

    .line 7607
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allow":Z
    :pswitch_cf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b2

    move v1, v2

    nop

    .line 7608
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b2
    if-eq v1, v2, :cond_1b3

    .line 7609
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7611
    goto/16 :goto_d

    .line 7612
    :cond_1b3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7615
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7616
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7617
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7618
    goto/16 :goto_d

    .line 7592
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_d0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b4

    move v1, v2

    nop

    .line 7593
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b4
    if-eq v1, v2, :cond_1b5

    .line 7594
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7596
    goto/16 :goto_d

    .line 7597
    :cond_1b5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7600
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7601
    .local v2, "resetType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->nvResetConfig(II)V

    .line 7602
    goto/16 :goto_d

    .line 7577
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resetType":I
    :pswitch_d1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b6

    move v1, v2

    nop

    .line 7578
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b6
    if-eq v1, v2, :cond_1b7

    .line 7579
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7581
    goto/16 :goto_d

    .line 7582
    :cond_1b7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7585
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7586
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7587
    goto/16 :goto_d

    .line 7561
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b8

    move v1, v2

    nop

    .line 7562
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b8
    if-eq v1, v2, :cond_1b9

    .line 7563
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7564
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7565
    goto/16 :goto_d

    .line 7566
    :cond_1b9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7569
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7570
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7571
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7572
    goto/16 :goto_d

    .line 7546
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ba

    move v1, v2

    nop

    .line 7547
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ba
    if-eq v1, v2, :cond_1bb

    .line 7548
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7549
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7550
    goto/16 :goto_d

    .line 7551
    :cond_1bb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7553
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7554
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7555
    .local v2, "itemId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->nvReadItem(II)V

    .line 7556
    goto/16 :goto_d

    .line 7530
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "itemId":I
    :pswitch_d4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bc

    move v1, v2

    nop

    .line 7531
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bc
    if-eq v1, v2, :cond_1bd

    .line 7532
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7534
    goto/16 :goto_d

    .line 7535
    :cond_1bd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7538
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7539
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7540
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7541
    goto/16 :goto_d

    .line 7515
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1be

    move v1, v2

    nop

    .line 7516
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1be
    if-eq v1, v2, :cond_1bf

    .line 7517
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7519
    goto/16 :goto_d

    .line 7520
    :cond_1bf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7523
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7524
    .local v2, "channelId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7525
    goto/16 :goto_d

    .line 7499
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    :pswitch_d6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c0

    move v1, v2

    nop

    .line 7500
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c0
    if-eq v1, v2, :cond_1c1

    .line 7501
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7503
    goto/16 :goto_d

    .line 7504
    :cond_1c1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7507
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7508
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7509
    .local v3, "p2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7510
    goto/16 :goto_d

    .line 7483
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

    .line 7484
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c2
    if-eq v1, v2, :cond_1c3

    .line 7485
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7487
    goto/16 :goto_d

    .line 7488
    :cond_1c3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7491
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7492
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7493
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7494
    goto/16 :goto_d

    .line 7467
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c4

    move v1, v2

    nop

    .line 7468
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c4
    if-eq v1, v2, :cond_1c5

    .line 7469
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7471
    goto/16 :goto_d

    .line 7472
    :cond_1c5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7475
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7476
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7477
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7478
    goto/16 :goto_d

    .line 7453
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c6

    move v1, v2

    nop

    .line 7454
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c6
    if-eq v1, v2, :cond_1c7

    .line 7455
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7457
    goto/16 :goto_d

    .line 7458
    :cond_1c7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7461
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7462
    goto/16 :goto_d

    .line 7435
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_da
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c8

    move v1, v2

    nop

    .line 7436
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c8
    if-eq v1, v2, :cond_1c9

    .line 7437
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7438
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7439
    goto/16 :goto_d

    .line 7440
    :cond_1c9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7443
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7444
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7446
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7447
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7448
    goto/16 :goto_d

    .line 7420
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

    .line 7421
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ca
    if-eq v1, v2, :cond_1cb

    .line 7422
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7424
    goto/16 :goto_d

    .line 7425
    :cond_1cb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7428
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7429
    .local v2, "rate":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7430
    goto/16 :goto_d

    .line 7406
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rate":I
    :pswitch_dc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cc

    move v1, v2

    nop

    .line 7407
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cc
    if-eq v1, v2, :cond_1cd

    .line 7408
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7410
    goto/16 :goto_d

    .line 7411
    :cond_1cd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7414
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCellInfoList(I)V

    .line 7415
    goto/16 :goto_d

    .line 7392
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_dd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ce

    move v1, v2

    nop

    .line 7393
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ce
    if-eq v1, v2, :cond_1cf

    .line 7394
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7396
    goto/16 :goto_d

    .line 7397
    :cond_1cf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7400
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7401
    goto/16 :goto_d

    .line 7377
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_de
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d0

    move v1, v2

    nop

    .line 7378
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d0
    if-eq v1, v2, :cond_1d1

    .line 7379
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7381
    goto/16 :goto_d

    .line 7382
    :cond_1d1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7385
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7386
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7387
    goto/16 :goto_d

    .line 7361
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_df
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d2

    move v1, v2

    nop

    .line 7362
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d2
    if-eq v1, v2, :cond_1d3

    .line 7363
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7365
    goto/16 :goto_d

    .line 7366
    :cond_1d3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7369
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7370
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7371
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7372
    goto/16 :goto_d

    .line 7346
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

    .line 7347
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d4
    if-eq v1, v2, :cond_1d5

    .line 7348
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7350
    goto/16 :goto_d

    .line 7351
    :cond_1d5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7354
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7355
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7356
    goto/16 :goto_d

    .line 7332
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_e1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d6

    move v1, v2

    nop

    .line 7333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d6
    if-eq v1, v2, :cond_1d7

    .line 7334
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7336
    goto/16 :goto_d

    .line 7337
    :cond_1d7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7340
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7341
    goto/16 :goto_d

    .line 7318
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d8

    move v1, v2

    nop

    .line 7319
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d8
    if-eq v1, v2, :cond_1d9

    .line 7320
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7322
    goto/16 :goto_d

    .line 7323
    :cond_1d9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7326
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7327
    goto/16 :goto_d

    .line 7303
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1da

    move v1, v2

    nop

    .line 7304
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1da
    if-eq v1, v2, :cond_1db

    .line 7305
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7306
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7307
    goto/16 :goto_d

    .line 7308
    :cond_1db
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7311
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7312
    .local v2, "available":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7313
    goto/16 :goto_d

    .line 7288
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "available":Z
    :pswitch_e4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1dc

    move v1, v2

    nop

    .line 7289
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1dc
    if-eq v1, v2, :cond_1dd

    .line 7290
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7292
    goto/16 :goto_d

    .line 7293
    :cond_1dd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7296
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7297
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7298
    goto/16 :goto_d

    .line 7274
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1de

    move v1, v2

    nop

    .line 7275
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1de
    if-eq v1, v2, :cond_1df

    .line 7276
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7278
    goto/16 :goto_d

    .line 7279
    :cond_1df
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7282
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getSmscAddress(I)V

    .line 7283
    goto/16 :goto_d

    .line 7260
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e0

    move v1, v2

    nop

    .line 7261
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e0
    if-eq v1, v2, :cond_1e1

    .line 7262
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7264
    goto/16 :goto_d

    .line 7265
    :cond_1e1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7268
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7269
    goto/16 :goto_d

    .line 7246
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e2

    move v1, v2

    nop

    .line 7247
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e2
    if-eq v1, v2, :cond_1e3

    .line 7248
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7249
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7250
    goto/16 :goto_d

    .line 7251
    :cond_1e3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7253
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7254
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7255
    goto/16 :goto_d

    .line 7231
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e4

    move v1, v2

    nop

    .line 7232
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e4
    if-eq v1, v2, :cond_1e5

    .line 7233
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7234
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7235
    goto/16 :goto_d

    .line 7236
    :cond_1e5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7239
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7240
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7241
    goto/16 :goto_d

    .line 7215
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_e9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e6

    move v1, v2

    nop

    .line 7216
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e6
    if-eq v1, v2, :cond_1e7

    .line 7217
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7219
    goto/16 :goto_d

    .line 7220
    :cond_1e7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7223
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7224
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7225
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7226
    goto/16 :goto_d

    .line 7201
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_ea
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e8

    move v1, v2

    nop

    .line 7202
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e8
    if-eq v1, v2, :cond_1e9

    .line 7203
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7205
    goto/16 :goto_d

    .line 7206
    :cond_1e9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7209
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCDMASubscription(I)V

    .line 7210
    goto/16 :goto_d

    .line 7186
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_eb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ea

    move v1, v2

    nop

    .line 7187
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ea
    if-eq v1, v2, :cond_1eb

    .line 7188
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7190
    goto/16 :goto_d

    .line 7191
    :cond_1eb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7194
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7195
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7196
    goto/16 :goto_d

    .line 7171
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_ec
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ec

    move v1, v2

    nop

    .line 7172
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ec
    if-eq v1, v2, :cond_1ed

    .line 7173
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7174
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7175
    goto/16 :goto_d

    .line 7176
    :cond_1ed
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7179
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7180
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7181
    goto/16 :goto_d

    .line 7157
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ee

    move v1, v2

    nop

    .line 7158
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ee
    if-eq v1, v2, :cond_1ef

    .line 7159
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7161
    goto/16 :goto_d

    .line 7162
    :cond_1ef
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7164
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7165
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7166
    goto/16 :goto_d

    .line 7142
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ee
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f0

    move v1, v2

    nop

    .line 7143
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f0
    if-eq v1, v2, :cond_1f1

    .line 7144
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7145
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7146
    goto/16 :goto_d

    .line 7147
    :cond_1f1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7150
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7151
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7152
    goto/16 :goto_d

    .line 7127
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_ef
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f2

    move v1, v2

    nop

    .line 7128
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f2
    if-eq v1, v2, :cond_1f3

    .line 7129
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7131
    goto/16 :goto_d

    .line 7132
    :cond_1f3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7134
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7135
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7136
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7137
    goto/16 :goto_d

    .line 7113
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_f0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f4

    move v1, v2

    nop

    .line 7114
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f4
    if-eq v1, v2, :cond_1f5

    .line 7115
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7117
    goto/16 :goto_d

    .line 7118
    :cond_1f5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7121
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7122
    goto/16 :goto_d

    .line 7097
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f6

    move v1, v2

    nop

    .line 7098
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f6
    if-eq v1, v2, :cond_1f7

    .line 7099
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7101
    goto/16 :goto_d

    .line 7102
    :cond_1f7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7105
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7106
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7107
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7108
    goto/16 :goto_d

    .line 7081
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f8

    move v1, v2

    nop

    .line 7082
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f8
    if-eq v1, v2, :cond_1f9

    .line 7083
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7085
    goto/16 :goto_d

    .line 7086
    :cond_1f9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7089
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7090
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7091
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7092
    goto/16 :goto_d

    .line 7064
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fa

    move v1, v2

    nop

    .line 7065
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fa
    if-eq v1, v2, :cond_1fb

    .line 7066
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7068
    goto/16 :goto_d

    .line 7069
    :cond_1fb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7072
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7073
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7074
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7075
    .local v4, "off":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7076
    goto/16 :goto_d

    .line 7049
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

    .line 7050
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fc
    if-eq v1, v2, :cond_1fd

    .line 7051
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7053
    goto/16 :goto_d

    .line 7054
    :cond_1fd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7058
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7059
    goto/16 :goto_d

    .line 7035
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fe

    move v1, v2

    nop

    .line 7036
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fe
    if-eq v1, v2, :cond_1ff

    .line 7037
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7038
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7039
    goto/16 :goto_d

    .line 7040
    :cond_1ff
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7043
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7044
    goto/16 :goto_d

    .line 7020
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_200

    move v1, v2

    nop

    .line 7021
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_200
    if-eq v1, v2, :cond_201

    .line 7022
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7023
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7024
    goto/16 :goto_d

    .line 7025
    :cond_201
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7028
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7029
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7030
    goto/16 :goto_d

    .line 7006
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_f7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_202

    move v1, v2

    nop

    .line 7007
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_202
    if-eq v1, v2, :cond_203

    .line 7008
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7010
    goto/16 :goto_d

    .line 7011
    :cond_203
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7014
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getTTYMode(I)V

    .line 7015
    goto/16 :goto_d

    .line 6991
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_204

    move v1, v2

    nop

    .line 6992
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_204
    if-eq v1, v2, :cond_205

    .line 6993
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6995
    goto/16 :goto_d

    .line 6996
    :cond_205
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6999
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7000
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setTTYMode(II)V

    .line 7001
    goto/16 :goto_d

    .line 6977
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_f9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_206

    move v1, v2

    nop

    .line 6978
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_206
    if-eq v1, v2, :cond_207

    .line 6979
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6981
    goto/16 :goto_d

    .line 6982
    :cond_207
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6985
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 6986
    goto/16 :goto_d

    .line 6962
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_208

    move v1, v2

    nop

    .line 6963
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_208
    if-eq v1, v2, :cond_209

    .line 6964
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6966
    goto/16 :goto_d

    .line 6967
    :cond_209
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6970
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6971
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 6972
    goto/16 :goto_d

    .line 6947
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_fb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20a

    move v1, v2

    nop

    .line 6948
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20a
    if-eq v1, v2, :cond_20b

    .line 6949
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6951
    goto/16 :goto_d

    .line 6952
    :cond_20b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6955
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6956
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6957
    goto/16 :goto_d

    .line 6932
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSub":I
    :pswitch_fc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20c

    move v1, v2

    nop

    .line 6933
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20c
    if-eq v1, v2, :cond_20d

    .line 6934
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6936
    goto/16 :goto_d

    .line 6937
    :cond_20d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6940
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6941
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6942
    goto/16 :goto_d

    .line 6918
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_fd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20e

    move v1, v2

    nop

    .line 6919
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20e
    if-eq v1, v2, :cond_20f

    .line 6920
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6922
    goto/16 :goto_d

    .line 6923
    :cond_20f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6926
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getNeighboringCids(I)V

    .line 6927
    goto/16 :goto_d

    .line 6904
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fe
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_210

    move v1, v2

    nop

    .line 6905
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_210
    if-eq v1, v2, :cond_211

    .line 6906
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6908
    goto/16 :goto_d

    .line 6909
    :cond_211
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6912
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6913
    goto/16 :goto_d

    .line 6889
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ff
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_212

    move v1, v2

    nop

    .line 6890
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_212
    if-eq v1, v2, :cond_213

    .line 6891
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6893
    goto/16 :goto_d

    .line 6894
    :cond_213
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6897
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6898
    .local v2, "nwType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6899
    goto/16 :goto_d

    .line 6875
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_100
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_214

    move v1, v2

    nop

    .line 6876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_214
    if-eq v1, v2, :cond_215

    .line 6877
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6879
    goto/16 :goto_d

    .line 6880
    :cond_215
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6883
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6884
    goto/16 :goto_d

    .line 6860
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_101
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_216

    move v1, v2

    nop

    .line 6861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_216
    if-eq v1, v2, :cond_217

    .line 6862
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6864
    goto/16 :goto_d

    .line 6865
    :cond_217
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6868
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6869
    .local v2, "accept":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6870
    goto/16 :goto_d

    .line 6845
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accept":Z
    :pswitch_102
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_218

    move v1, v2

    nop

    .line 6846
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_218
    if-eq v1, v2, :cond_219

    .line 6847
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6849
    goto/16 :goto_d

    .line 6850
    :cond_219
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6853
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6854
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6855
    goto/16 :goto_d

    .line 6830
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_103
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21a

    move v1, v2

    nop

    .line 6831
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21a
    if-eq v1, v2, :cond_21b

    .line 6832
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6834
    goto/16 :goto_d

    .line 6835
    :cond_21b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6838
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6839
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6840
    goto/16 :goto_d

    .line 6816
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_104
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21c

    move v1, v2

    nop

    .line 6817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21c
    if-eq v1, v2, :cond_21d

    .line 6818
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6820
    goto/16 :goto_d

    .line 6821
    :cond_21d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6824
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6825
    goto/16 :goto_d

    .line 6801
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_105
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21e

    move v1, v2

    nop

    .line 6802
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21e
    if-eq v1, v2, :cond_21f

    .line 6803
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6805
    goto/16 :goto_d

    .line 6806
    :cond_21f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6809
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6810
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setBandMode(II)V

    .line 6811
    goto/16 :goto_d

    .line 6786
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_106
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_220

    move v1, v2

    nop

    .line 6787
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_220
    if-eq v1, v2, :cond_221

    .line 6788
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6790
    goto/16 :goto_d

    .line 6791
    :cond_221
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6794
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6795
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6796
    goto/16 :goto_d

    .line 6770
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_107
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_222

    move v1, v2

    nop

    .line 6771
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_222
    if-eq v1, v2, :cond_223

    .line 6772
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6774
    goto/16 :goto_d

    .line 6775
    :cond_223
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6778
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6779
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6780
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6781
    goto/16 :goto_d

    .line 6755
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_108
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_224

    move v1, v2

    nop

    .line 6756
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_224
    if-eq v1, v2, :cond_225

    .line 6757
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6759
    goto/16 :goto_d

    .line 6760
    :cond_225
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6763
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6764
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6765
    goto/16 :goto_d

    .line 6741
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_109
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_226

    move v1, v2

    nop

    .line 6742
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_226
    if-eq v1, v2, :cond_227

    .line 6743
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6745
    goto/16 :goto_d

    .line 6746
    :cond_227
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6749
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getDataCallList(I)V

    .line 6750
    goto/16 :goto_d

    .line 6727
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_228

    move v1, v2

    nop

    .line 6728
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_228
    if-eq v1, v2, :cond_229

    .line 6729
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6731
    goto/16 :goto_d

    .line 6732
    :cond_229
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6735
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getClip(I)V

    .line 6736
    goto/16 :goto_d

    .line 6713
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22a

    move v1, v2

    nop

    .line 6714
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22a
    if-eq v1, v2, :cond_22b

    .line 6715
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6717
    goto/16 :goto_d

    .line 6718
    :cond_22b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6721
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getMute(I)V

    .line 6722
    goto/16 :goto_d

    .line 6698
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22c

    move v1, v2

    nop

    .line 6699
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22c
    if-eq v1, v2, :cond_22d

    .line 6700
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6701
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6702
    goto/16 :goto_d

    .line 6703
    :cond_22d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6706
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6707
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setMute(IZ)V

    .line 6708
    goto/16 :goto_d

    .line 6683
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_10d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22e

    move v1, v2

    nop

    .line 6684
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22e
    if-eq v1, v2, :cond_22f

    .line 6685
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6687
    goto/16 :goto_d

    .line 6688
    :cond_22f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6691
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6692
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->separateConnection(II)V

    .line 6693
    goto/16 :goto_d

    .line 6669
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_10e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_230

    move v1, v2

    nop

    .line 6670
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_230
    if-eq v1, v2, :cond_231

    .line 6671
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6673
    goto/16 :goto_d

    .line 6674
    :cond_231
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6677
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getBasebandVersion(I)V

    .line 6678
    goto/16 :goto_d

    .line 6655
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_232

    move v1, v2

    nop

    .line 6656
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_232
    if-eq v1, v2, :cond_233

    .line 6657
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6659
    goto/16 :goto_d

    .line 6660
    :cond_233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6663
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->stopDtmf(I)V

    .line 6664
    goto/16 :goto_d

    .line 6640
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_110
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_234

    move v1, v2

    nop

    .line 6641
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_234
    if-eq v1, v2, :cond_235

    .line 6642
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6644
    goto/16 :goto_d

    .line 6645
    :cond_235
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6648
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6649
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6650
    goto/16 :goto_d

    .line 6626
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_111
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_236

    move v1, v2

    nop

    .line 6627
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_236
    if-eq v1, v2, :cond_237

    .line 6628
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6629
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6630
    goto/16 :goto_d

    .line 6631
    :cond_237
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6633
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6634
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6635
    goto/16 :goto_d

    .line 6611
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_112
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_238

    move v1, v2

    nop

    .line 6612
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_238
    if-eq v1, v2, :cond_239

    .line 6613
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6615
    goto/16 :goto_d

    .line 6616
    :cond_239
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6619
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6620
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6621
    goto/16 :goto_d

    .line 6597
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_113
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23a

    move v1, v2

    nop

    .line 6598
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23a
    if-eq v1, v2, :cond_23b

    .line 6599
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6600
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6601
    goto/16 :goto_d

    .line 6602
    :cond_23b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6605
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6606
    goto/16 :goto_d

    .line 6583
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_114
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23c

    move v1, v2

    nop

    .line 6584
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23c
    if-eq v1, v2, :cond_23d

    .line 6585
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6587
    goto/16 :goto_d

    .line 6588
    :cond_23d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6591
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6592
    goto/16 :goto_d

    .line 6566
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_115
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23e

    move v1, v2

    nop

    .line 6567
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23e
    if-eq v1, v2, :cond_23f

    .line 6568
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6570
    goto/16 :goto_d

    .line 6571
    :cond_23f
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
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6576
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6577
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6578
    goto/16 :goto_d

    .line 6547
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

    .line 6548
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_241

    .line 6549
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6551
    goto/16 :goto_d

    .line 6552
    :cond_241
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6555
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6556
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6557
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6558
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6559
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6560
    .local v16, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6561
    goto/16 :goto_d

    .line 6529
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

    .line 6530
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_243

    .line 6531
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6533
    goto/16 :goto_d

    .line 6534
    :cond_243
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6537
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6538
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6539
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6540
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6541
    .local v11, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6542
    goto/16 :goto_d

    .line 6513
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

    .line 6514
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v1, v2, :cond_245

    .line 6515
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6517
    goto/16 :goto_d

    .line 6518
    :cond_245
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6521
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6522
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6523
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6524
    goto/16 :goto_d

    .line 6499
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

    .line 6500
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_246
    if-eq v1, v2, :cond_247

    .line 6501
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6503
    goto/16 :goto_d

    .line 6504
    :cond_247
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6507
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->acceptCall(I)V

    .line 6508
    goto/16 :goto_d

    .line 6483
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_248

    move v1, v2

    nop

    .line 6484
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_248
    if-eq v1, v2, :cond_249

    .line 6485
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6487
    goto/16 :goto_d

    .line 6488
    :cond_249
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6491
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6492
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6493
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6494
    goto/16 :goto_d

    .line 6467
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

    .line 6468
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24a
    if-eq v1, v2, :cond_24b

    .line 6469
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6471
    goto/16 :goto_d

    .line 6472
    :cond_24b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6475
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6476
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6477
    .local v3, "serviceClass":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6478
    goto/16 :goto_d

    .line 6452
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

    .line 6453
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24c
    if-eq v1, v2, :cond_24d

    .line 6454
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6456
    goto/16 :goto_d

    .line 6457
    :cond_24d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6460
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6461
    .local v2, "serviceClass":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCallWaiting(II)V

    .line 6462
    goto/16 :goto_d

    .line 6436
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_11d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24e

    move v1, v2

    nop

    .line 6437
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24e
    if-eq v1, v2, :cond_24f

    .line 6438
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6440
    goto/16 :goto_d

    .line 6441
    :cond_24f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6444
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6445
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6446
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6447
    goto/16 :goto_d

    .line 6420
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_250

    move v1, v2

    nop

    .line 6421
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_250
    if-eq v1, v2, :cond_251

    .line 6422
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6424
    goto/16 :goto_d

    .line 6425
    :cond_251
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6428
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6429
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6430
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6431
    goto/16 :goto_d

    .line 6405
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_252

    move v1, v2

    nop

    .line 6406
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_252
    if-eq v1, v2, :cond_253

    .line 6407
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6408
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6409
    goto/16 :goto_d

    .line 6410
    :cond_253
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6412
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6413
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6414
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setClir(II)V

    .line 6415
    goto/16 :goto_d

    .line 6391
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_120
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_254

    move v1, v2

    nop

    .line 6392
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_254
    if-eq v1, v2, :cond_255

    .line 6393
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6394
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6395
    goto/16 :goto_d

    .line 6396
    :cond_255
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6399
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getClir(I)V

    .line 6400
    goto/16 :goto_d

    .line 6377
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_121
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_256

    move v1, v2

    nop

    .line 6378
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_256
    if-eq v1, v2, :cond_257

    .line 6379
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6381
    goto/16 :goto_d

    .line 6382
    :cond_257
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6385
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6386
    goto/16 :goto_d

    .line 6362
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_122
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_258

    move v1, v2

    nop

    .line 6363
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_258
    if-eq v1, v2, :cond_259

    .line 6364
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6366
    goto/16 :goto_d

    .line 6367
    :cond_259
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6370
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6371
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6372
    goto/16 :goto_d

    .line 6346
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_123
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25a

    move v1, v2

    nop

    .line 6347
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25a
    if-eq v1, v2, :cond_25b

    .line 6348
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6350
    goto/16 :goto_d

    .line 6351
    :cond_25b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6354
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6355
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6356
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6357
    goto/16 :goto_d

    .line 6326
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

    .line 6327
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_25d

    .line 6328
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6330
    goto/16 :goto_d

    .line 6331
    :cond_25d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6334
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6335
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6336
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6338
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6339
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6340
    .local v16, "isRoaming":Z
    move-object v0, v13

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6341
    goto/16 :goto_d

    .line 6310
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

    .line 6311
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25e
    if-eq v1, v2, :cond_25f

    .line 6312
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6314
    goto/16 :goto_d

    .line 6315
    :cond_25f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6318
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6319
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6320
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6321
    goto/16 :goto_d

    .line 6294
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_126
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_260

    move v1, v2

    nop

    .line 6295
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_260
    if-eq v1, v2, :cond_261

    .line 6296
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6298
    goto/16 :goto_d

    .line 6299
    :cond_261
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6302
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6303
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6304
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6305
    goto/16 :goto_d

    .line 6279
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_127
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_262

    move v1, v2

    nop

    .line 6280
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_262
    if-eq v1, v2, :cond_263

    .line 6281
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6283
    goto/16 :goto_d

    .line 6284
    :cond_263
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6287
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6288
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6289
    goto/16 :goto_d

    .line 6264
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_128
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_264

    move v1, v2

    nop

    .line 6265
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_264
    if-eq v1, v2, :cond_265

    .line 6266
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6268
    goto/16 :goto_d

    .line 6269
    :cond_265
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6272
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6273
    .local v2, "on":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setRadioPower(IZ)V

    .line 6274
    goto/16 :goto_d

    .line 6250
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_129
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_266

    move v1, v2

    nop

    .line 6251
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_266
    if-eq v1, v2, :cond_267

    .line 6252
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6254
    goto/16 :goto_d

    .line 6255
    :cond_267
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6258
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getOperator(I)V

    .line 6259
    goto/16 :goto_d

    .line 6236
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_268

    move v1, v2

    nop

    .line 6237
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_268
    if-eq v1, v2, :cond_269

    .line 6238
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6240
    goto/16 :goto_d

    .line 6241
    :cond_269
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6244
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6245
    goto/16 :goto_d

    .line 6222
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26a

    move v1, v2

    nop

    .line 6223
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26a
    if-eq v1, v2, :cond_26b

    .line 6224
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6226
    goto/16 :goto_d

    .line 6227
    :cond_26b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6230
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6231
    goto/16 :goto_d

    .line 6208
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26c

    move v1, v2

    nop

    .line 6209
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26c
    if-eq v1, v2, :cond_26d

    .line 6210
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6212
    goto/16 :goto_d

    .line 6213
    :cond_26d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6216
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getSignalStrength(I)V

    .line 6217
    goto/16 :goto_d

    .line 6194
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26e

    move v1, v2

    nop

    .line 6195
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26e
    if-eq v1, v2, :cond_26f

    .line 6196
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6198
    goto/16 :goto_d

    .line 6199
    :cond_26f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6202
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6203
    goto/16 :goto_d

    .line 6180
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_270

    move v1, v2

    nop

    .line 6181
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_270
    if-eq v1, v2, :cond_271

    .line 6182
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6184
    goto/16 :goto_d

    .line 6185
    :cond_271
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6188
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->rejectCall(I)V

    .line 6189
    goto/16 :goto_d

    .line 6166
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_272

    move v1, v2

    nop

    .line 6167
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_272
    if-eq v1, v2, :cond_273

    .line 6168
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6170
    goto/16 :goto_d

    .line 6171
    :cond_273
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6174
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->conference(I)V

    .line 6175
    goto/16 :goto_d

    .line 6152
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_130
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_274

    move v1, v2

    nop

    .line 6153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_274
    if-eq v1, v2, :cond_275

    .line 6154
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6156
    goto/16 :goto_d

    .line 6157
    :cond_275
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6160
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6161
    goto/16 :goto_d

    .line 6138
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_131
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_276

    move v1, v2

    nop

    .line 6139
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_276
    if-eq v1, v2, :cond_277

    .line 6140
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6142
    goto/16 :goto_d

    .line 6143
    :cond_277
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6146
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6147
    goto/16 :goto_d

    .line 6124
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_132
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_278

    move v1, v2

    nop

    .line 6125
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_278
    if-eq v1, v2, :cond_279

    .line 6126
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6127
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6128
    goto/16 :goto_d

    .line 6129
    :cond_279
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6132
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6133
    goto/16 :goto_d

    .line 6109
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_133
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27a

    move v1, v2

    nop

    .line 6110
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27a
    if-eq v1, v2, :cond_27b

    .line 6111
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6112
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6113
    goto/16 :goto_d

    .line 6114
    :cond_27b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6117
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6118
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->hangup(II)V

    .line 6119
    goto/16 :goto_d

    .line 6094
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_134
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27c

    move v1, v2

    nop

    .line 6095
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27c
    if-eq v1, v2, :cond_27d

    .line 6096
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6098
    goto/16 :goto_d

    .line 6099
    :cond_27d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6102
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6103
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6104
    goto/16 :goto_d

    .line 6078
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_135
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27e

    move v1, v2

    nop

    .line 6079
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27e
    if-eq v1, v2, :cond_27f

    .line 6080
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6082
    goto/16 :goto_d

    .line 6083
    :cond_27f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6086
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6087
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6088
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6089
    goto/16 :goto_d

    .line 6064
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_136
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_280

    move v1, v2

    nop

    .line 6065
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_280
    if-eq v1, v2, :cond_281

    .line 6066
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6068
    goto/16 :goto_d

    .line 6069
    :cond_281
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6072
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getCurrentCalls(I)V

    .line 6073
    goto/16 :goto_d

    .line 6049
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_137
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_282

    move v1, v2

    nop

    .line 6050
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_282
    if-eq v1, v2, :cond_283

    .line 6051
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6053
    goto/16 :goto_d

    .line 6054
    :cond_283
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
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6059
    goto/16 :goto_d

    .line 6032
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_138
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_284

    move v1, v2

    nop

    .line 6033
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_284
    if-eq v1, v2, :cond_285

    .line 6034
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6036
    goto/16 :goto_d

    .line 6037
    :cond_285
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
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6042
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6043
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6044
    goto/16 :goto_d

    .line 6015
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

    .line 6016
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_286
    if-eq v1, v2, :cond_287

    .line 6017
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6019
    goto/16 :goto_d

    .line 6020
    :cond_287
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
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6025
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6026
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6027
    goto/16 :goto_d

    .line 5998
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

    .line 5999
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_288
    if-eq v1, v2, :cond_289

    .line 6000
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6002
    goto/16 :goto_d

    .line 6003
    :cond_289
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
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6008
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6009
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6010
    goto/16 :goto_d

    .line 5982
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

    .line 5983
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28a
    if-eq v1, v2, :cond_28b

    .line 5984
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5986
    goto/16 :goto_d

    .line 5987
    :cond_28b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5990
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5991
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5992
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5993
    goto/16 :goto_d

    .line 5965
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

    .line 5966
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28c
    if-eq v1, v2, :cond_28d

    .line 5967
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5968
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5969
    goto/16 :goto_d

    .line 5970
    :cond_28d
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
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5975
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5976
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5977
    goto/16 :goto_d

    .line 5949
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

    .line 5950
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28e
    if-eq v1, v2, :cond_28f

    .line 5951
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5953
    goto :goto_d

    .line 5954
    :cond_28f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5957
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5958
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5959
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5960
    goto :goto_d

    .line 5935
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

    .line 5936
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_290
    if-eq v1, v2, :cond_291

    .line 5937
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5939
    goto :goto_d

    .line 5940
    :cond_291
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5943
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->getIccCardStatus(I)V

    .line 5944
    goto :goto_d

    .line 5918
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_292

    goto :goto_c

    :cond_292
    move v2, v1

    .line 5919
    .local v2, "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_293

    .line 5920
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5922
    goto :goto_d

    .line 5923
    :cond_293
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 5926
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 5927
    .local v3, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5928
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5929
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5930
    nop

    .line 10998
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

    .line 5871
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5897
    const-string v0, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5898
    return-object p0

    .line 5900
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

    .line 5904
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5905
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5862
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5891
    const/4 v0, 0x1

    return v0
.end method
