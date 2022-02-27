.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5655
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5658
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5706
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5707
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5708
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5709
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5710
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

    .line 5679
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

    .line 5663
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

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

    .line 5673
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5695
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5715
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5716
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

    .line 5744
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 9889
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 9890
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_211

    .line 9891
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9893
    goto/16 :goto_7

    .line 9876
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 9877
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 9878
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9880
    goto/16 :goto_7

    .line 9881
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9883
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 9884
    goto/16 :goto_7

    .line 9860
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 9861
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 9862
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9864
    goto/16 :goto_7

    .line 9865
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9867
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 9868
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9869
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 9870
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9871
    goto/16 :goto_7

    .line 9845
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 9846
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 9847
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9849
    goto/16 :goto_7

    .line 9850
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9852
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->ping()V

    .line 9853
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9854
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9855
    goto/16 :goto_7

    .line 9835
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 9836
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_211

    .line 9837
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9838
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9839
    goto/16 :goto_7

    .line 9822
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 9823
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 9824
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9826
    goto/16 :goto_7

    .line 9827
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9829
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 9830
    goto/16 :goto_7

    .line 9789
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 9790
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 9791
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9793
    goto/16 :goto_7

    .line 9794
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9796
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 9797
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9799
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 9801
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9802
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 9803
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 9804
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 9805
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 9807
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 9808
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 9809
    nop

    .line 9805
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9812
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 9814
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 9816
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9817
    goto/16 :goto_7

    .line 9773
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 9774
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 9775
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9777
    goto/16 :goto_7

    .line 9778
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9780
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 9781
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9782
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 9783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9784
    goto/16 :goto_7

    .line 9759
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 9760
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 9761
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9763
    goto/16 :goto_7

    .line 9764
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9766
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9767
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9768
    goto/16 :goto_7

    .line 9743
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 9744
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 9745
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9747
    goto/16 :goto_7

    .line 9748
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9750
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 9751
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9752
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 9753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9754
    goto/16 :goto_7

    .line 9727
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 9728
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 9729
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9731
    goto/16 :goto_7

    .line 9732
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9734
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9735
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9737
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 9738
    goto/16 :goto_7

    .line 9711
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 9712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 9713
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9715
    goto/16 :goto_7

    .line 9716
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9718
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9719
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9721
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 9722
    goto/16 :goto_7

    .line 9696
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 9697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 9698
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9700
    goto/16 :goto_7

    .line 9701
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9703
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9704
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9705
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9706
    goto/16 :goto_7

    .line 9681
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 9682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 9683
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9684
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9685
    goto/16 :goto_7

    .line 9686
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9688
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9689
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9690
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setOperatorConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9691
    goto/16 :goto_7

    .line 9666
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 9667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 9668
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9670
    goto/16 :goto_7

    .line 9671
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9673
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9674
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9675
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPropImsHandoverResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9676
    goto/16 :goto_7

    .line 9651
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 9652
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 9653
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9655
    goto/16 :goto_7

    .line 9656
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9658
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9659
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9660
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9661
    goto/16 :goto_7

    .line 9636
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 9637
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 9638
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9640
    goto/16 :goto_7

    .line 9641
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9643
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9644
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9645
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSilentRebootResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9646
    goto/16 :goto_7

    .line 9621
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 9622
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 9623
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9625
    goto/16 :goto_7

    .line 9626
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9628
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9629
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9630
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->reportSimModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9631
    goto/16 :goto_7

    .line 9606
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 9607
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 9608
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9610
    goto/16 :goto_7

    .line 9611
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9613
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9614
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9615
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->reportAirplaneModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9616
    goto/16 :goto_7

    .line 9590
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 9591
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 9592
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9594
    goto/16 :goto_7

    .line 9595
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9597
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9598
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9600
    .local v2, "mode":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 9601
    goto/16 :goto_7

    .line 9575
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 9576
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 9577
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9579
    goto/16 :goto_7

    .line 9580
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9582
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9583
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9584
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9585
    goto/16 :goto_7

    .line 9560
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 9561
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 9562
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9563
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9564
    goto/16 :goto_7

    .line 9565
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9567
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9568
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9569
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9570
    goto/16 :goto_7

    .line 9545
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 9546
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 9547
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9549
    goto/16 :goto_7

    .line 9550
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9552
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9553
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9554
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9555
    goto/16 :goto_7

    .line 9530
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 9531
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 9532
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9534
    goto/16 :goto_7

    .line 9535
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9537
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9538
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9539
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9540
    goto/16 :goto_7

    .line 9514
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 9515
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 9516
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9518
    goto/16 :goto_7

    .line 9519
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9521
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9522
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9524
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 9525
    goto/16 :goto_7

    .line 9499
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 9500
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 9501
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9503
    goto/16 :goto_7

    .line 9504
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9506
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9507
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9508
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9509
    goto/16 :goto_7

    .line 9484
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 9485
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 9486
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9488
    goto/16 :goto_7

    .line 9489
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9491
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9492
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9493
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setE911StateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9494
    goto/16 :goto_7

    .line 9469
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 9470
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 9471
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9473
    goto/16 :goto_7

    .line 9474
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9476
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9477
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9478
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setLteUplinkDataTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9479
    goto/16 :goto_7

    .line 9454
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 9455
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 9456
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9458
    goto/16 :goto_7

    .line 9459
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9461
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9462
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9463
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setLteAccessStratumReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9464
    goto/16 :goto_7

    .line 9439
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 9440
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 9441
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9443
    goto/16 :goto_7

    .line 9444
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9446
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9447
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9448
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9449
    goto/16 :goto_7

    .line 9424
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 9425
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 9426
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9428
    goto/16 :goto_7

    .line 9429
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9431
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9432
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9433
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9434
    goto/16 :goto_7

    .line 9409
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 9410
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 9411
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9413
    goto/16 :goto_7

    .line 9414
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9416
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9417
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9418
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9419
    goto/16 :goto_7

    .line 9394
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 9395
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 9396
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9398
    goto/16 :goto_7

    .line 9399
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9401
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9402
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9403
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9404
    goto/16 :goto_7

    .line 9379
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 9380
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 9381
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9383
    goto/16 :goto_7

    .line 9384
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9386
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9387
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9388
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->resetRadioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9389
    goto/16 :goto_7

    .line 9364
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 9365
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 9366
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9367
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9368
    goto/16 :goto_7

    .line 9369
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9371
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9372
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9373
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPdnNameReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9374
    goto/16 :goto_7

    .line 9349
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 9350
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 9351
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9352
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9353
    goto/16 :goto_7

    .line 9354
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9356
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9357
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9358
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setOverrideApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9359
    goto/16 :goto_7

    .line 9334
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 9335
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 9336
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9338
    goto/16 :goto_7

    .line 9339
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9341
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9342
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9343
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPdnReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9344
    goto/16 :goto_7

    .line 9319
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 9320
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 9321
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9323
    goto/16 :goto_7

    .line 9324
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9326
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9327
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9328
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9329
    goto/16 :goto_7

    .line 9304
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 9305
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 9306
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9308
    goto/16 :goto_7

    .line 9309
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9311
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9312
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9313
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9314
    goto/16 :goto_7

    .line 9289
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 9290
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 9291
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9292
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9293
    goto/16 :goto_7

    .line 9294
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9296
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9297
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9298
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9299
    goto/16 :goto_7

    .line 9274
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 9275
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 9276
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9278
    goto/16 :goto_7

    .line 9279
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9281
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9282
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9283
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9284
    goto/16 :goto_7

    .line 9258
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 9259
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 9260
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9262
    goto/16 :goto_7

    .line 9263
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9265
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9266
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9268
    .local v2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 9269
    goto/16 :goto_7

    .line 9242
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 9243
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 9244
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9246
    goto/16 :goto_7

    .line 9247
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9249
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9250
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9252
    .local v2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 9253
    goto/16 :goto_7

    .line 9226
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 9227
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 9228
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9230
    goto/16 :goto_7

    .line 9231
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9233
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9234
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9236
    .local v2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 9237
    goto/16 :goto_7

    .line 9210
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 9211
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 9212
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9213
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9214
    goto/16 :goto_7

    .line 9215
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9217
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9218
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9220
    .local v2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 9221
    goto/16 :goto_7

    .line 9195
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 9196
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 9197
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9199
    goto/16 :goto_7

    .line 9200
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9202
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9203
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9204
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9205
    goto/16 :goto_7

    .line 9180
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 9181
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 9182
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9184
    goto/16 :goto_7

    .line 9185
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9187
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9188
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9189
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9190
    goto/16 :goto_7

    .line 9164
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 9165
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 9166
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9168
    goto/16 :goto_7

    .line 9169
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9171
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9172
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9174
    .local v2, "mode":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 9175
    goto/16 :goto_7

    .line 9149
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 9150
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 9151
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9153
    goto/16 :goto_7

    .line 9154
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9156
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9157
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9158
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9159
    goto/16 :goto_7

    .line 9134
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 9135
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 9136
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9138
    goto/16 :goto_7

    .line 9139
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9141
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9142
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9143
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9144
    goto/16 :goto_7

    .line 9118
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 9119
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 9120
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9121
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9122
    goto/16 :goto_7

    .line 9123
    :cond_64
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9125
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9126
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9128
    .local v2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 9129
    goto/16 :goto_7

    .line 9103
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 9104
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 9105
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9107
    goto/16 :goto_7

    .line 9108
    :cond_66
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9110
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9111
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9112
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9113
    goto/16 :goto_7

    .line 9086
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 9087
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 9088
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9089
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9090
    goto/16 :goto_7

    .line 9091
    :cond_68
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9093
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9094
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9095
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 9096
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9097
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 9098
    goto/16 :goto_7

    .line 9070
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 9071
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 9072
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9074
    goto/16 :goto_7

    .line 9075
    :cond_6a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9077
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9078
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9079
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 9080
    .local v2, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 9081
    goto/16 :goto_7

    .line 9055
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 9056
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 9057
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9059
    goto/16 :goto_7

    .line 9060
    :cond_6c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9062
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9063
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9064
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9065
    goto/16 :goto_7

    .line 9038
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 9039
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 9040
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9042
    goto/16 :goto_7

    .line 9043
    :cond_6e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9045
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9046
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9047
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 9048
    .local v2, "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9049
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 9050
    goto/16 :goto_7

    .line 9023
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 9024
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 9025
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9027
    goto/16 :goto_7

    .line 9028
    :cond_70
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9030
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9031
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9032
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->reloadModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9033
    goto/16 :goto_7

    .line 9008
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 9009
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 9010
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9012
    goto/16 :goto_7

    .line 9013
    :cond_72
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9015
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9016
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9017
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->storeModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9018
    goto/16 :goto_7

    .line 8993
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 8994
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 8995
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8997
    goto/16 :goto_7

    .line 8998
    :cond_74
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9000
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 9001
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9002
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 9003
    goto/16 :goto_7

    .line 8977
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 8978
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 8979
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8981
    goto/16 :goto_7

    .line 8982
    :cond_76
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8984
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8985
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8987
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8988
    goto/16 :goto_7

    .line 8961
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 8962
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 8963
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8965
    goto/16 :goto_7

    .line 8966
    :cond_78
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8968
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8969
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8971
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8972
    goto/16 :goto_7

    .line 8946
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 8947
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 8948
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8950
    goto/16 :goto_7

    .line 8951
    :cond_7a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8953
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8954
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8955
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSmsFwkReadyRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8956
    goto/16 :goto_7

    .line 8930
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 8931
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 8932
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8934
    goto/16 :goto_7

    .line 8935
    :cond_7c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8937
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8938
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8940
    .local v2, "active":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8941
    goto/16 :goto_7

    .line 8914
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "active":I
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 8915
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 8916
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8918
    goto/16 :goto_7

    .line 8919
    :cond_7e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8921
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8922
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8924
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8925
    goto/16 :goto_7

    .line 8899
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 8900
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 8901
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8903
    goto/16 :goto_7

    .line 8904
    :cond_80
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8906
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8907
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8908
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8909
    goto/16 :goto_7

    .line 8884
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 8885
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 8886
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8887
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8888
    goto/16 :goto_7

    .line 8889
    :cond_82
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8891
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8892
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8893
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8894
    goto/16 :goto_7

    .line 8869
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 8870
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 8871
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8873
    goto/16 :goto_7

    .line 8874
    :cond_84
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8876
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8877
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8878
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8879
    goto/16 :goto_7

    .line 8852
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 8853
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 8854
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8855
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8856
    goto/16 :goto_7

    .line 8857
    :cond_86
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8859
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8860
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8861
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 8862
    .local v2, "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8863
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 8864
    goto/16 :goto_7

    .line 8837
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 8838
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 8839
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8841
    goto/16 :goto_7

    .line 8842
    :cond_88
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8844
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8845
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8846
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8847
    goto/16 :goto_7

    .line 8820
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 8821
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 8822
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8823
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8824
    goto/16 :goto_7

    .line 8825
    :cond_8a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8827
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8828
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8829
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 8830
    .local v2, "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8831
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 8832
    goto/16 :goto_7

    .line 8805
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 8806
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 8807
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8808
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8809
    goto/16 :goto_7

    .line 8810
    :cond_8c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8812
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8813
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8814
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8815
    goto/16 :goto_7

    .line 8788
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 8789
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 8790
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8792
    goto/16 :goto_7

    .line 8793
    :cond_8e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8795
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8796
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8797
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;-><init>()V

    .line 8798
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8799
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;)V

    .line 8800
    goto/16 :goto_7

    .line 8772
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 8773
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 8774
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8776
    goto/16 :goto_7

    .line 8777
    :cond_90
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8779
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8780
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8782
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8783
    goto/16 :goto_7

    .line 8757
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 8758
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 8759
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8761
    goto/16 :goto_7

    .line 8762
    :cond_92
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8764
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8765
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8766
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8767
    goto/16 :goto_7

    .line 8735
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    :cond_93
    move v12, v1

    .line 8736
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v2, :cond_94

    .line 8737
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8739
    goto/16 :goto_7

    .line 8740
    :cond_94
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8742
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v13, v0

    .line 8743
    .local v13, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v13, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 8745
    .local v14, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 8746
    .local v15, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 8747
    .local v16, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 8748
    .local v17, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8749
    .local v18, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8750
    .local v19, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 8751
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 8752
    goto/16 :goto_7

    .line 8720
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v14    # "catagory":I
    .end local v15    # "state":I
    .end local v16    # "retry_cnt":I
    .end local v17    # "autolock_cnt":I
    .end local v18    # "num_set":I
    .end local v19    # "total_set":I
    .end local v20    # "key_state":I
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 8721
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 8722
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8724
    goto/16 :goto_7

    .line 8725
    :cond_96
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8727
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8728
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8729
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8730
    goto/16 :goto_7

    .line 8704
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 8705
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 8706
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8708
    goto/16 :goto_7

    .line 8709
    :cond_98
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8711
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8712
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8714
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8715
    goto/16 :goto_7

    .line 8688
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 8689
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 8690
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8692
    goto/16 :goto_7

    .line 8693
    :cond_9a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8695
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8696
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8697
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8698
    .restart local v2    # "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8699
    goto/16 :goto_7

    .line 8673
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 8674
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 8675
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8677
    goto/16 :goto_7

    .line 8678
    :cond_9c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8680
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8681
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8682
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8683
    goto/16 :goto_7

    .line 8658
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 8659
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 8660
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8662
    goto/16 :goto_7

    .line 8663
    :cond_9e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8665
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8666
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8667
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8668
    goto/16 :goto_7

    .line 8643
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 8644
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 8645
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8647
    goto/16 :goto_7

    .line 8648
    :cond_a0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8650
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8651
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8652
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8653
    goto/16 :goto_7

    .line 8628
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 8629
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 8630
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8632
    goto/16 :goto_7

    .line 8633
    :cond_a2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8635
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8636
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8637
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8638
    goto/16 :goto_7

    .line 8613
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 8614
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 8615
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8617
    goto/16 :goto_7

    .line 8618
    :cond_a4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8620
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8621
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8622
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8623
    goto/16 :goto_7

    .line 8598
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 8599
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 8600
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8602
    goto/16 :goto_7

    .line 8603
    :cond_a6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8605
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8606
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8607
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8608
    goto/16 :goto_7

    .line 8583
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 8584
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 8585
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8587
    goto/16 :goto_7

    .line 8588
    :cond_a8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8590
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8591
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8592
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->currentStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8593
    goto/16 :goto_7

    .line 8568
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 8569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 8570
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8572
    goto/16 :goto_7

    .line 8573
    :cond_aa
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8575
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8576
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8577
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setEccListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8578
    goto/16 :goto_7

    .line 8553
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 8554
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 8555
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8557
    goto/16 :goto_7

    .line 8558
    :cond_ac
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8560
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8561
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8562
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setEccServiceCategoryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8563
    goto/16 :goto_7

    .line 8538
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 8539
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 8540
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8542
    goto/16 :goto_7

    .line 8543
    :cond_ae
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8545
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8546
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8547
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8548
    goto/16 :goto_7

    .line 8523
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 8524
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 8525
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8527
    goto/16 :goto_7

    .line 8528
    :cond_b0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8530
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8531
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8532
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8533
    goto/16 :goto_7

    .line 8508
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 8509
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 8510
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8511
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8512
    goto/16 :goto_7

    .line 8513
    :cond_b2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8515
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8516
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8517
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8518
    goto/16 :goto_7

    .line 8492
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 8493
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 8494
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8496
    goto/16 :goto_7

    .line 8497
    :cond_b4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8499
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8500
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8501
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8502
    .local v2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8503
    goto/16 :goto_7

    .line 8477
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 8478
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 8479
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8481
    goto/16 :goto_7

    .line 8482
    :cond_b6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8484
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8485
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8486
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8487
    goto/16 :goto_7

    .line 8461
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 8462
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 8463
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8464
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8465
    goto/16 :goto_7

    .line 8466
    :cond_b8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8468
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8469
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8470
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8471
    .local v2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8472
    goto/16 :goto_7

    .line 8446
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 8447
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 8448
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8450
    goto/16 :goto_7

    .line 8451
    :cond_ba
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8453
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8454
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8455
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8456
    goto/16 :goto_7

    .line 8431
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 8432
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 8433
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8434
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8435
    goto/16 :goto_7

    .line 8436
    :cond_bc
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8438
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8439
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8440
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8441
    goto/16 :goto_7

    .line 8414
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 8415
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 8416
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8418
    goto/16 :goto_7

    .line 8419
    :cond_be
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8421
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8422
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8424
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8425
    .local v3, "m":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 8426
    goto/16 :goto_7

    .line 8398
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 8399
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 8400
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8401
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8402
    goto/16 :goto_7

    .line 8403
    :cond_c0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8405
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8406
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8408
    .restart local v2    # "n":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8409
    goto/16 :goto_7

    .line 8381
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 8382
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 8383
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8385
    goto/16 :goto_7

    .line 8386
    :cond_c2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8388
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8389
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8391
    .restart local v2    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8392
    .restart local v3    # "m":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 8393
    goto/16 :goto_7

    .line 8366
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 8367
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 8368
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8369
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8370
    goto/16 :goto_7

    .line 8371
    :cond_c4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8373
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8374
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8375
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8376
    goto/16 :goto_7

    .line 8351
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 8352
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 8353
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8354
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8355
    goto/16 :goto_7

    .line 8356
    :cond_c6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8358
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8359
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8360
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8361
    goto/16 :goto_7

    .line 8335
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 8336
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 8337
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8339
    goto/16 :goto_7

    .line 8340
    :cond_c8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8342
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8343
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8345
    .local v2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8346
    goto/16 :goto_7

    .line 8319
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 8320
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 8321
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8323
    goto/16 :goto_7

    .line 8324
    :cond_ca
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8326
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8327
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8328
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8329
    .local v2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8330
    goto/16 :goto_7

    .line 8303
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 8304
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 8305
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8306
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8307
    goto/16 :goto_7

    .line 8308
    :cond_cc
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8310
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8311
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8313
    .local v2, "sne":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8314
    goto/16 :goto_7

    .line 8287
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sne":Ljava/lang/String;
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 8288
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 8289
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8291
    goto/16 :goto_7

    .line 8292
    :cond_ce
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8294
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8295
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8297
    .local v2, "email":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8298
    goto/16 :goto_7

    .line 8271
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "email":Ljava/lang/String;
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 8272
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 8273
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8275
    goto/16 :goto_7

    .line 8276
    :cond_d0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8278
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8279
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8281
    .local v2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8282
    goto/16 :goto_7

    .line 8256
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 8257
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 8258
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8260
    goto/16 :goto_7

    .line 8261
    :cond_d2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8263
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8264
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8265
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8266
    goto/16 :goto_7

    .line 8240
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 8241
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 8242
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8244
    goto/16 :goto_7

    .line 8245
    :cond_d4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8247
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8248
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8249
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8250
    .local v2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8251
    goto/16 :goto_7

    .line 8225
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 8226
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 8227
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8229
    goto/16 :goto_7

    .line 8230
    :cond_d6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8232
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8233
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8234
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8235
    goto/16 :goto_7

    .line 8208
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 8209
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 8210
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8212
    goto/16 :goto_7

    .line 8213
    :cond_d8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8215
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8216
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8217
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;-><init>()V

    .line 8218
    .local v2, "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8219
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;)V

    .line 8220
    goto/16 :goto_7

    .line 8192
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 8193
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 8194
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8196
    goto/16 :goto_7

    .line 8197
    :cond_da
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8199
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8200
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8202
    .local v2, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8203
    goto/16 :goto_7

    .line 8177
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    .line 8178
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_db
    if-eq v1, v2, :cond_dc

    .line 8179
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8181
    goto/16 :goto_7

    .line 8182
    :cond_dc
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8184
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8185
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8186
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8187
    goto/16 :goto_7

    .line 8161
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    .line 8162
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dd
    if-eq v1, v2, :cond_de

    .line 8163
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8165
    goto/16 :goto_7

    .line 8166
    :cond_de
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8168
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8169
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8171
    .local v2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8172
    goto/16 :goto_7

    .line 8145
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 8146
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 8147
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8149
    goto/16 :goto_7

    .line 8150
    :cond_e0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8152
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8153
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8155
    .local v2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8156
    goto/16 :goto_7

    .line 8130
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 8131
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 8132
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8134
    goto/16 :goto_7

    .line 8135
    :cond_e2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8137
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8138
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8139
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8140
    goto/16 :goto_7

    .line 8115
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 8116
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 8117
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8119
    goto/16 :goto_7

    .line 8120
    :cond_e4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8122
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8123
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8124
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8125
    goto/16 :goto_7

    .line 8099
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 8100
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 8101
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8103
    goto/16 :goto_7

    .line 8104
    :cond_e6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8106
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8107
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8109
    .local v2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8110
    goto/16 :goto_7

    .line 8083
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 8084
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 8085
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8087
    goto/16 :goto_7

    .line 8088
    :cond_e8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8090
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8091
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8092
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8093
    .local v2, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8094
    goto/16 :goto_7

    .line 8068
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 8069
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 8070
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8071
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8072
    goto/16 :goto_7

    .line 8073
    :cond_ea
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8075
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8076
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8077
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8078
    goto/16 :goto_7

    .line 8052
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 8053
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 8054
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8056
    goto/16 :goto_7

    .line 8057
    :cond_ec
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8059
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8060
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8061
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8062
    .local v2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8063
    goto/16 :goto_7

    .line 8036
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 8037
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 8038
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8040
    goto/16 :goto_7

    .line 8041
    :cond_ee
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8043
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8044
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8046
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8047
    goto/16 :goto_7

    .line 8021
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 8022
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 8023
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8025
    goto/16 :goto_7

    .line 8026
    :cond_f0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8028
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8029
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8030
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8031
    goto/16 :goto_7

    .line 8005
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 8006
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 8007
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8009
    goto/16 :goto_7

    .line 8010
    :cond_f2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8012
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8013
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8015
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8016
    goto/16 :goto_7

    .line 7988
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 7989
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 7990
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7991
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7992
    goto/16 :goto_7

    .line 7993
    :cond_f4
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7995
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7996
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7997
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 7998
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7999
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 8000
    goto/16 :goto_7

    .line 7971
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 7972
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 7973
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7975
    goto/16 :goto_7

    .line 7976
    :cond_f6
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7978
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7979
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7980
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 7981
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7982
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 7983
    goto/16 :goto_7

    .line 7954
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    .line 7955
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 7956
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7957
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7958
    goto/16 :goto_7

    .line 7959
    :cond_f8
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7961
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7962
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7963
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 7964
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7965
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 7966
    goto/16 :goto_7

    .line 7938
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    .line 7939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 7940
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7942
    goto/16 :goto_7

    .line 7943
    :cond_fa
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7945
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7946
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7947
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7948
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7949
    goto/16 :goto_7

    .line 7923
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 7924
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 7925
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7927
    goto/16 :goto_7

    .line 7928
    :cond_fc
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7930
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7931
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7932
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7933
    goto/16 :goto_7

    .line 7908
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_75
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fd

    move v1, v2

    nop

    .line 7909
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 7910
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7912
    goto/16 :goto_7

    .line 7913
    :cond_fe
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7915
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7916
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7917
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7918
    goto/16 :goto_7

    .line 7891
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_76
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ff

    move v1, v2

    nop

    .line 7892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ff
    if-eq v1, v2, :cond_100

    .line 7893
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7895
    goto/16 :goto_7

    .line 7896
    :cond_100
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7898
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7899
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7900
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 7901
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7902
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 7903
    goto/16 :goto_7

    .line 7875
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :pswitch_77
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    move v1, v2

    nop

    .line 7876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_101
    if-eq v1, v2, :cond_102

    .line 7877
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7879
    goto/16 :goto_7

    .line 7880
    :cond_102
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7882
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7883
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7884
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7885
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7886
    goto/16 :goto_7

    .line 7860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_78
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_103

    move v1, v2

    nop

    .line 7861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_103
    if-eq v1, v2, :cond_104

    .line 7862
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7864
    goto/16 :goto_7

    .line 7865
    :cond_104
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7867
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7868
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7869
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7870
    goto/16 :goto_7

    .line 7843
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_79
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_105

    move v1, v2

    nop

    .line 7844
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_105
    if-eq v1, v2, :cond_106

    .line 7845
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7847
    goto/16 :goto_7

    .line 7848
    :cond_106
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7850
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7851
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7852
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 7853
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7854
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 7855
    goto/16 :goto_7

    .line 7828
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_107

    move v1, v2

    nop

    .line 7829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_107
    if-eq v1, v2, :cond_108

    .line 7830
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7832
    goto/16 :goto_7

    .line 7833
    :cond_108
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7835
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7836
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7837
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7838
    goto/16 :goto_7

    .line 7813
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_109

    move v1, v2

    nop

    .line 7814
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_109
    if-eq v1, v2, :cond_10a

    .line 7815
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7817
    goto/16 :goto_7

    .line 7818
    :cond_10a
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7820
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7821
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7822
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7823
    goto/16 :goto_7

    .line 7798
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10b

    move v1, v2

    nop

    .line 7799
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10b
    if-eq v1, v2, :cond_10c

    .line 7800
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7801
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7802
    goto/16 :goto_7

    .line 7803
    :cond_10c
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7805
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7806
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7807
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7808
    goto/16 :goto_7

    .line 7783
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10d

    move v1, v2

    nop

    .line 7784
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10d
    if-eq v1, v2, :cond_10e

    .line 7785
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7787
    goto/16 :goto_7

    .line 7788
    :cond_10e
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7790
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7791
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7792
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7793
    goto/16 :goto_7

    .line 7769
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10f

    move v1, v2

    nop

    .line 7770
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10f
    if-eq v1, v2, :cond_110

    .line 7771
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7773
    goto/16 :goto_7

    .line 7774
    :cond_110
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7777
    .local v0, "serial":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 7778
    goto/16 :goto_7

    .line 7754
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_111

    move v1, v2

    nop

    .line 7755
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_111
    if-eq v1, v2, :cond_112

    .line 7756
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7758
    goto/16 :goto_7

    .line 7759
    :cond_112
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7761
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7762
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7763
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7764
    goto/16 :goto_7

    .line 7739
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_80
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_113

    move v1, v2

    nop

    .line 7740
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_113
    if-eq v1, v2, :cond_114

    .line 7741
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7743
    goto/16 :goto_7

    .line 7744
    :cond_114
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7746
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7747
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7748
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7749
    goto/16 :goto_7

    .line 7724
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_81
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_115

    move v1, v2

    nop

    .line 7725
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_115
    if-eq v1, v2, :cond_116

    .line 7726
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7728
    goto/16 :goto_7

    .line 7729
    :cond_116
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7731
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7732
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7733
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7734
    goto/16 :goto_7

    .line 7706
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_82
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_117

    move v1, v2

    nop

    .line 7707
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_117
    if-eq v1, v2, :cond_118

    .line 7708
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7710
    goto/16 :goto_7

    .line 7711
    :cond_118
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7713
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7714
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7716
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7717
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7718
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7719
    goto/16 :goto_7

    .line 7690
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_83
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_119

    move v1, v2

    nop

    .line 7691
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_119
    if-eq v1, v2, :cond_11a

    .line 7692
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7694
    goto/16 :goto_7

    .line 7695
    :cond_11a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7697
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7698
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7700
    .local v2, "numAllowed":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7701
    goto/16 :goto_7

    .line 7673
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "numAllowed":I
    :pswitch_84
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11b

    move v1, v2

    nop

    .line 7674
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11b
    if-eq v1, v2, :cond_11c

    .line 7675
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7677
    goto/16 :goto_7

    .line 7678
    :cond_11c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7680
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7681
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7682
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 7683
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7684
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 7685
    goto/16 :goto_7

    .line 7656
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :pswitch_85
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11d

    move v1, v2

    nop

    .line 7657
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11d
    if-eq v1, v2, :cond_11e

    .line 7658
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7659
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7660
    goto/16 :goto_7

    .line 7661
    :cond_11e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7663
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7664
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7665
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 7666
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7667
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 7668
    goto/16 :goto_7

    .line 7639
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_86
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11f

    move v1, v2

    nop

    .line 7640
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11f
    if-eq v1, v2, :cond_120

    .line 7641
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7643
    goto/16 :goto_7

    .line 7644
    :cond_120
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7646
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7647
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7648
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 7649
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7650
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 7651
    goto/16 :goto_7

    .line 7622
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_87
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_121

    move v1, v2

    nop

    .line 7623
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_121
    if-eq v1, v2, :cond_122

    .line 7624
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7626
    goto/16 :goto_7

    .line 7627
    :cond_122
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7629
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7630
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7631
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 7632
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7633
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 7634
    goto/16 :goto_7

    .line 7605
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_88
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_123

    move v1, v2

    nop

    .line 7606
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_123
    if-eq v1, v2, :cond_124

    .line 7607
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7609
    goto/16 :goto_7

    .line 7610
    :cond_124
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7612
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7613
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7614
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7615
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7616
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7617
    goto/16 :goto_7

    .line 7588
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_89
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    move v1, v2

    nop

    .line 7589
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_125
    if-eq v1, v2, :cond_126

    .line 7590
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7592
    goto/16 :goto_7

    .line 7593
    :cond_126
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7595
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7596
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7597
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7598
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7599
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7600
    goto/16 :goto_7

    .line 7573
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_127

    move v1, v2

    nop

    .line 7574
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_127
    if-eq v1, v2, :cond_128

    .line 7575
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7577
    goto/16 :goto_7

    .line 7578
    :cond_128
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7580
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7581
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7582
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7583
    goto/16 :goto_7

    .line 7558
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_129

    move v1, v2

    nop

    .line 7559
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_129
    if-eq v1, v2, :cond_12a

    .line 7560
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7562
    goto/16 :goto_7

    .line 7563
    :cond_12a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7565
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7566
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7567
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7568
    goto/16 :goto_7

    .line 7541
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12b

    move v1, v2

    nop

    .line 7542
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12b
    if-eq v1, v2, :cond_12c

    .line 7543
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7545
    goto/16 :goto_7

    .line 7546
    :cond_12c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7548
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7549
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7550
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 7551
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7552
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 7553
    goto/16 :goto_7

    .line 7525
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_8d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12d

    move v1, v2

    nop

    .line 7526
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12d
    if-eq v1, v2, :cond_12e

    .line 7527
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7529
    goto/16 :goto_7

    .line 7530
    :cond_12e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7532
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7533
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7534
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7535
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7536
    goto/16 :goto_7

    .line 7510
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_8e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12f

    move v1, v2

    nop

    .line 7511
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12f
    if-eq v1, v2, :cond_130

    .line 7512
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7513
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7514
    goto/16 :goto_7

    .line 7515
    :cond_130
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7517
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7518
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7519
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7520
    goto/16 :goto_7

    .line 7495
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_131

    move v1, v2

    nop

    .line 7496
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_131
    if-eq v1, v2, :cond_132

    .line 7497
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7499
    goto/16 :goto_7

    .line 7500
    :cond_132
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7502
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7503
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7504
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7505
    goto/16 :goto_7

    .line 7480
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_90
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_133

    move v1, v2

    nop

    .line 7481
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_133
    if-eq v1, v2, :cond_134

    .line 7482
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7484
    goto/16 :goto_7

    .line 7485
    :cond_134
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7487
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7488
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7489
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7490
    goto/16 :goto_7

    .line 7465
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_91
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_135

    move v1, v2

    nop

    .line 7466
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_135
    if-eq v1, v2, :cond_136

    .line 7467
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7468
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7469
    goto/16 :goto_7

    .line 7470
    :cond_136
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7472
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7473
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7474
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7475
    goto/16 :goto_7

    .line 7450
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_92
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_137

    move v1, v2

    nop

    .line 7451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_137
    if-eq v1, v2, :cond_138

    .line 7452
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7454
    goto/16 :goto_7

    .line 7455
    :cond_138
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7457
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7458
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7459
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7460
    goto/16 :goto_7

    .line 7434
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_93
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_139

    move v1, v2

    nop

    .line 7435
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_139
    if-eq v1, v2, :cond_13a

    .line 7436
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7438
    goto/16 :goto_7

    .line 7439
    :cond_13a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7441
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7442
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7444
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7445
    goto/16 :goto_7

    .line 7417
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_94
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13b

    move v1, v2

    nop

    .line 7418
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13b
    if-eq v1, v2, :cond_13c

    .line 7419
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7421
    goto/16 :goto_7

    .line 7422
    :cond_13c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7424
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7425
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7426
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 7427
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7428
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 7429
    goto/16 :goto_7

    .line 7402
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_95
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13d

    move v1, v2

    nop

    .line 7403
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13d
    if-eq v1, v2, :cond_13e

    .line 7404
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7406
    goto/16 :goto_7

    .line 7407
    :cond_13e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7409
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7410
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7411
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7412
    goto/16 :goto_7

    .line 7385
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_96
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13f

    move v1, v2

    nop

    .line 7386
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13f
    if-eq v1, v2, :cond_140

    .line 7387
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7389
    goto/16 :goto_7

    .line 7390
    :cond_140
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7392
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7393
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7395
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 7396
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 7397
    goto/16 :goto_7

    .line 7368
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_97
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_141

    move v1, v2

    nop

    .line 7369
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_141
    if-eq v1, v2, :cond_142

    .line 7370
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7372
    goto/16 :goto_7

    .line 7373
    :cond_142
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7375
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7376
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7377
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 7378
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7379
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 7380
    goto/16 :goto_7

    .line 7351
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_98
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_143

    move v1, v2

    nop

    .line 7352
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_143
    if-eq v1, v2, :cond_144

    .line 7353
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7354
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7355
    goto/16 :goto_7

    .line 7356
    :cond_144
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7358
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7359
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7360
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 7361
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7362
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 7363
    goto/16 :goto_7

    .line 7334
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_99
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_145

    move v1, v2

    nop

    .line 7335
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_145
    if-eq v1, v2, :cond_146

    .line 7336
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7338
    goto/16 :goto_7

    .line 7339
    :cond_146
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7341
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7342
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7344
    .local v2, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7345
    .local v3, "ratFamily":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 7346
    goto/16 :goto_7

    .line 7319
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :pswitch_9a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_147

    move v1, v2

    nop

    .line 7320
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_147
    if-eq v1, v2, :cond_148

    .line 7321
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7323
    goto/16 :goto_7

    .line 7324
    :cond_148
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7326
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7327
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7328
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7329
    goto/16 :goto_7

    .line 7304
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_149

    move v1, v2

    nop

    .line 7305
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_149
    if-eq v1, v2, :cond_14a

    .line 7306
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7308
    goto/16 :goto_7

    .line 7309
    :cond_14a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7311
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7312
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7313
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7314
    goto/16 :goto_7

    .line 7288
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14b

    move v1, v2

    nop

    .line 7289
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14b
    if-eq v1, v2, :cond_14c

    .line 7290
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7292
    goto/16 :goto_7

    .line 7293
    :cond_14c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7295
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7296
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7297
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7298
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7299
    goto/16 :goto_7

    .line 7272
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_9d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14d

    move v1, v2

    nop

    .line 7273
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14d
    if-eq v1, v2, :cond_14e

    .line 7274
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7276
    goto/16 :goto_7

    .line 7277
    :cond_14e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7279
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7280
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7282
    .local v2, "rat":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7283
    goto/16 :goto_7

    .line 7255
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_9e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14f

    move v1, v2

    nop

    .line 7256
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14f
    if-eq v1, v2, :cond_150

    .line 7257
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7259
    goto/16 :goto_7

    .line 7260
    :cond_150
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7262
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7263
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7264
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 7265
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7266
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 7267
    goto/16 :goto_7

    .line 7240
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_9f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_151

    move v1, v2

    nop

    .line 7241
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_151
    if-eq v1, v2, :cond_152

    .line 7242
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7244
    goto/16 :goto_7

    .line 7245
    :cond_152
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7247
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7248
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7249
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7250
    goto/16 :goto_7

    .line 7224
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_153

    move v1, v2

    nop

    .line 7225
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_153
    if-eq v1, v2, :cond_154

    .line 7226
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7228
    goto/16 :goto_7

    .line 7229
    :cond_154
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7231
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7232
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7234
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7235
    goto/16 :goto_7

    .line 7208
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_a1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_155

    move v1, v2

    nop

    .line 7209
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_155
    if-eq v1, v2, :cond_156

    .line 7210
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7212
    goto/16 :goto_7

    .line 7213
    :cond_156
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7215
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7216
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7218
    .local v2, "source":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7219
    goto/16 :goto_7

    .line 7193
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "source":I
    :pswitch_a2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_157

    move v1, v2

    nop

    .line 7194
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_157
    if-eq v1, v2, :cond_158

    .line 7195
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7196
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7197
    goto/16 :goto_7

    .line 7198
    :cond_158
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7200
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7201
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7202
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7203
    goto/16 :goto_7

    .line 7178
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_159

    move v1, v2

    nop

    .line 7179
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_159
    if-eq v1, v2, :cond_15a

    .line 7180
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7182
    goto/16 :goto_7

    .line 7183
    :cond_15a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7185
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7186
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7187
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7188
    goto/16 :goto_7

    .line 7163
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15b

    move v1, v2

    nop

    .line 7164
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15b
    if-eq v1, v2, :cond_15c

    .line 7165
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7167
    goto/16 :goto_7

    .line 7168
    :cond_15c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7170
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7171
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7172
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7173
    goto/16 :goto_7

    .line 7147
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15d

    move v1, v2

    nop

    .line 7148
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15d
    if-eq v1, v2, :cond_15e

    .line 7149
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7151
    goto/16 :goto_7

    .line 7152
    :cond_15e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7154
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7155
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7157
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7158
    goto/16 :goto_7

    .line 7132
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_a6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15f

    move v1, v2

    nop

    .line 7133
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15f
    if-eq v1, v2, :cond_160

    .line 7134
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7136
    goto/16 :goto_7

    .line 7137
    :cond_160
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7139
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7140
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7141
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7142
    goto/16 :goto_7

    .line 7113
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_161

    move v1, v2

    nop

    :cond_161
    move v6, v1

    .line 7114
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_162

    .line 7115
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7117
    goto/16 :goto_7

    .line 7118
    :cond_162
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7120
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v7, v0

    .line 7121
    .local v7, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v7, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7123
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7124
    .local v12, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 7125
    .local v13, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 7126
    .local v14, "meid":Ljava/lang/String;
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7127
    goto/16 :goto_7

    .line 7098
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v12    # "imeisv":Ljava/lang/String;
    .end local v13    # "esn":Ljava/lang/String;
    .end local v14    # "meid":Ljava/lang/String;
    :pswitch_a8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_163

    move v1, v2

    nop

    .line 7099
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_163
    if-eq v1, v2, :cond_164

    .line 7100
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7102
    goto/16 :goto_7

    .line 7103
    :cond_164
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7105
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7106
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7107
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7108
    goto/16 :goto_7

    .line 7082
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_165

    move v1, v2

    nop

    .line 7083
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_165
    if-eq v1, v2, :cond_166

    .line 7084
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7086
    goto/16 :goto_7

    .line 7087
    :cond_166
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7089
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7090
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7092
    .local v2, "index":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7093
    goto/16 :goto_7

    .line 7062
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_aa
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_167

    move v1, v2

    nop

    :cond_167
    move v7, v1

    .line 7063
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_168

    .line 7064
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7066
    goto/16 :goto_7

    .line 7067
    :cond_168
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7069
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v8, v0

    .line 7070
    .local v8, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v8, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7072
    .local v12, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 7073
    .local v13, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 7074
    .local v14, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 7075
    .local v15, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7076
    .local v16, "prl":Ljava/lang/String;
    move-object v0, v9

    move-object v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7077
    goto/16 :goto_7

    .line 7047
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v12    # "mdn":Ljava/lang/String;
    .end local v13    # "hSid":Ljava/lang/String;
    .end local v14    # "hNid":Ljava/lang/String;
    .end local v15    # "min":Ljava/lang/String;
    .end local v16    # "prl":Ljava/lang/String;
    :pswitch_ab
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_169

    move v1, v2

    nop

    .line 7048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_169
    if-eq v1, v2, :cond_16a

    .line 7049
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7051
    goto/16 :goto_7

    .line 7052
    :cond_16a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7054
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7055
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7056
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7057
    goto/16 :goto_7

    .line 7032
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ac
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16b

    move v1, v2

    nop

    .line 7033
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16b
    if-eq v1, v2, :cond_16c

    .line 7034
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7036
    goto/16 :goto_7

    .line 7037
    :cond_16c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7039
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7040
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7041
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7042
    goto/16 :goto_7

    .line 7016
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ad
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16d

    move v1, v2

    nop

    .line 7017
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16d
    if-eq v1, v2, :cond_16e

    .line 7018
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7020
    goto/16 :goto_7

    .line 7021
    :cond_16e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7023
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7024
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7025
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7026
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7027
    goto/16 :goto_7

    .line 7001
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ae
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16f

    move v1, v2

    nop

    .line 7002
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16f
    if-eq v1, v2, :cond_170

    .line 7003
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7005
    goto/16 :goto_7

    .line 7006
    :cond_170
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7008
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7009
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7010
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7011
    goto/16 :goto_7

    .line 6986
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_af
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_171

    move v1, v2

    nop

    .line 6987
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_171
    if-eq v1, v2, :cond_172

    .line 6988
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6989
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6990
    goto/16 :goto_7

    .line 6991
    :cond_172
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6993
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6994
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6995
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6996
    goto/16 :goto_7

    .line 6970
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_173

    move v1, v2

    nop

    .line 6971
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_173
    if-eq v1, v2, :cond_174

    .line 6972
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6974
    goto/16 :goto_7

    .line 6975
    :cond_174
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6977
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6978
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6979
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6980
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6981
    goto/16 :goto_7

    .line 6955
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_b1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_175

    move v1, v2

    nop

    .line 6956
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_175
    if-eq v1, v2, :cond_176

    .line 6957
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6958
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6959
    goto/16 :goto_7

    .line 6960
    :cond_176
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6962
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6963
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6964
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6965
    goto/16 :goto_7

    .line 6938
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_177

    move v1, v2

    nop

    .line 6939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_177
    if-eq v1, v2, :cond_178

    .line 6940
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6942
    goto/16 :goto_7

    .line 6943
    :cond_178
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6945
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6946
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6947
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6948
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6949
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6950
    goto/16 :goto_7

    .line 6923
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_b3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_179

    move v1, v2

    nop

    .line 6924
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_179
    if-eq v1, v2, :cond_17a

    .line 6925
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6927
    goto/16 :goto_7

    .line 6928
    :cond_17a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6930
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6931
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6932
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6933
    goto/16 :goto_7

    .line 6908
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17b

    move v1, v2

    nop

    .line 6909
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17b
    if-eq v1, v2, :cond_17c

    .line 6910
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6912
    goto/16 :goto_7

    .line 6913
    :cond_17c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6915
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6916
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6917
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6918
    goto/16 :goto_7

    .line 6892
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17d

    move v1, v2

    nop

    .line 6893
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17d
    if-eq v1, v2, :cond_17e

    .line 6894
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6896
    goto/16 :goto_7

    .line 6897
    :cond_17e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6899
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6900
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6902
    .local v2, "enable":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 6903
    goto/16 :goto_7

    .line 6877
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_b6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17f

    move v1, v2

    nop

    .line 6878
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17f
    if-eq v1, v2, :cond_180

    .line 6879
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6881
    goto/16 :goto_7

    .line 6882
    :cond_180
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6884
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6885
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6886
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6887
    goto/16 :goto_7

    .line 6861
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_181

    move v1, v2

    nop

    .line 6862
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_181
    if-eq v1, v2, :cond_182

    .line 6863
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6864
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6865
    goto/16 :goto_7

    .line 6866
    :cond_182
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6868
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6869
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6870
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6871
    .local v2, "mode":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6872
    goto/16 :goto_7

    .line 6846
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_b8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_183

    move v1, v2

    nop

    .line 6847
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_183
    if-eq v1, v2, :cond_184

    .line 6848
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6850
    goto/16 :goto_7

    .line 6851
    :cond_184
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6853
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6854
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6855
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6856
    goto/16 :goto_7

    .line 6830
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_185

    move v1, v2

    nop

    .line 6831
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_185
    if-eq v1, v2, :cond_186

    .line 6832
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6834
    goto/16 :goto_7

    .line 6835
    :cond_186
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6837
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6838
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6840
    .local v2, "type":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6841
    goto/16 :goto_7

    .line 6815
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_ba
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_187

    move v1, v2

    nop

    .line 6816
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_187
    if-eq v1, v2, :cond_188

    .line 6817
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6819
    goto/16 :goto_7

    .line 6820
    :cond_188
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6822
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6823
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6824
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6825
    goto/16 :goto_7

    .line 6800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_189

    move v1, v2

    nop

    .line 6801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_189
    if-eq v1, v2, :cond_18a

    .line 6802
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6804
    goto/16 :goto_7

    .line 6805
    :cond_18a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6807
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6808
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6809
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6810
    goto/16 :goto_7

    .line 6785
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18b

    move v1, v2

    nop

    .line 6786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18b
    if-eq v1, v2, :cond_18c

    .line 6787
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6789
    goto/16 :goto_7

    .line 6790
    :cond_18c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6792
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6793
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6794
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6795
    goto/16 :goto_7

    .line 6769
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18d

    move v1, v2

    nop

    .line 6770
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18d
    if-eq v1, v2, :cond_18e

    .line 6771
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6773
    goto/16 :goto_7

    .line 6774
    :cond_18e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6776
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6777
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6778
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6779
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6780
    goto/16 :goto_7

    .line 6753
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :pswitch_be
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18f

    move v1, v2

    nop

    .line 6754
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18f
    if-eq v1, v2, :cond_190

    .line 6755
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6757
    goto/16 :goto_7

    .line 6758
    :cond_190
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6760
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6761
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6763
    .local v2, "nwType":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6764
    goto/16 :goto_7

    .line 6738
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_bf
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_191

    move v1, v2

    nop

    .line 6739
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_191
    if-eq v1, v2, :cond_192

    .line 6740
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6741
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6742
    goto/16 :goto_7

    .line 6743
    :cond_192
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6745
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6746
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6747
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6748
    goto/16 :goto_7

    .line 6723
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_193

    move v1, v2

    nop

    .line 6724
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_193
    if-eq v1, v2, :cond_194

    .line 6725
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6727
    goto/16 :goto_7

    .line 6728
    :cond_194
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6730
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6731
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6732
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6733
    goto/16 :goto_7

    .line 6708
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_195

    move v1, v2

    nop

    .line 6709
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_195
    if-eq v1, v2, :cond_196

    .line 6710
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6712
    goto/16 :goto_7

    .line 6713
    :cond_196
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6715
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6716
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6717
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6718
    goto/16 :goto_7

    .line 6693
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_197

    move v1, v2

    nop

    .line 6694
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_197
    if-eq v1, v2, :cond_198

    .line 6695
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6697
    goto/16 :goto_7

    .line 6698
    :cond_198
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6700
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6701
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6702
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6703
    goto/16 :goto_7

    .line 6677
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_199

    move v1, v2

    nop

    .line 6678
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_199
    if-eq v1, v2, :cond_19a

    .line 6679
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6681
    goto/16 :goto_7

    .line 6682
    :cond_19a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6684
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6685
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6687
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6688
    goto/16 :goto_7

    .line 6661
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_c4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19b

    move v1, v2

    nop

    .line 6662
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19b
    if-eq v1, v2, :cond_19c

    .line 6663
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6665
    goto/16 :goto_7

    .line 6666
    :cond_19c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6668
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6669
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6670
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6671
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6672
    goto/16 :goto_7

    .line 6646
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19d

    move v1, v2

    nop

    .line 6647
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19d
    if-eq v1, v2, :cond_19e

    .line 6648
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6649
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6650
    goto/16 :goto_7

    .line 6651
    :cond_19e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6653
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6654
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6655
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6656
    goto/16 :goto_7

    .line 6631
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19f

    move v1, v2

    nop

    .line 6632
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19f
    if-eq v1, v2, :cond_1a0

    .line 6633
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6635
    goto/16 :goto_7

    .line 6636
    :cond_1a0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6638
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6639
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6640
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6641
    goto/16 :goto_7

    .line 6615
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a1

    move v1, v2

    nop

    .line 6616
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a1
    if-eq v1, v2, :cond_1a2

    .line 6617
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6619
    goto/16 :goto_7

    .line 6620
    :cond_1a2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6622
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6623
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6625
    .local v2, "index":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6626
    goto/16 :goto_7

    .line 6600
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_c8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a3

    move v1, v2

    nop

    .line 6601
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a3
    if-eq v1, v2, :cond_1a4

    .line 6602
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6604
    goto/16 :goto_7

    .line 6605
    :cond_1a4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6607
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6608
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6609
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6610
    goto/16 :goto_7

    .line 6584
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a5

    move v1, v2

    nop

    .line 6585
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a5
    if-eq v1, v2, :cond_1a6

    .line 6586
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6588
    goto/16 :goto_7

    .line 6589
    :cond_1a6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6591
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6592
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6593
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6594
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6595
    goto/16 :goto_7

    .line 6568
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_ca
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a7

    move v1, v2

    nop

    .line 6569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a7
    if-eq v1, v2, :cond_1a8

    .line 6570
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6572
    goto/16 :goto_7

    .line 6573
    :cond_1a8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6575
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6576
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6578
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6579
    goto/16 :goto_7

    .line 6552
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_cb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a9

    move v1, v2

    nop

    .line 6553
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a9
    if-eq v1, v2, :cond_1aa

    .line 6554
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6556
    goto/16 :goto_7

    .line 6557
    :cond_1aa
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6559
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6560
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6562
    .local v2, "enable":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 6563
    goto/16 :goto_7

    .line 6537
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_cc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ab

    move v1, v2

    nop

    .line 6538
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ab
    if-eq v1, v2, :cond_1ac

    .line 6539
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6541
    goto/16 :goto_7

    .line 6542
    :cond_1ac
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6544
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6545
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6546
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6547
    goto/16 :goto_7

    .line 6522
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_cd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ad

    move v1, v2

    nop

    .line 6523
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ad
    if-eq v1, v2, :cond_1ae

    .line 6524
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6526
    goto/16 :goto_7

    .line 6527
    :cond_1ae
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6529
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6530
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6531
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6532
    goto/16 :goto_7

    .line 6506
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ce
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1af

    move v1, v2

    nop

    .line 6507
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1af
    if-eq v1, v2, :cond_1b0

    .line 6508
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6509
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6510
    goto/16 :goto_7

    .line 6511
    :cond_1b0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6513
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6514
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6516
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6517
    goto/16 :goto_7

    .line 6491
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_cf
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b1

    move v1, v2

    nop

    .line 6492
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b1
    if-eq v1, v2, :cond_1b2

    .line 6493
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6495
    goto/16 :goto_7

    .line 6496
    :cond_1b2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6498
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6499
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6500
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6501
    goto/16 :goto_7

    .line 6476
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b3

    move v1, v2

    nop

    .line 6477
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b3
    if-eq v1, v2, :cond_1b4

    .line 6478
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6480
    goto/16 :goto_7

    .line 6481
    :cond_1b4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6483
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6484
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6485
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6486
    goto/16 :goto_7

    .line 6460
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b5

    move v1, v2

    nop

    .line 6461
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b5
    if-eq v1, v2, :cond_1b6

    .line 6462
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6464
    goto/16 :goto_7

    .line 6465
    :cond_1b6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6467
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6468
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6469
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6470
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6471
    goto/16 :goto_7

    .line 6445
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :pswitch_d2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b7

    move v1, v2

    nop

    .line 6446
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b7
    if-eq v1, v2, :cond_1b8

    .line 6447
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6449
    goto/16 :goto_7

    .line 6450
    :cond_1b8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6452
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6453
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6454
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6455
    goto/16 :goto_7

    .line 6430
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b9

    move v1, v2

    nop

    .line 6431
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b9
    if-eq v1, v2, :cond_1ba

    .line 6432
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6434
    goto/16 :goto_7

    .line 6435
    :cond_1ba
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6437
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6438
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6439
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6440
    goto/16 :goto_7

    .line 6414
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bb

    move v1, v2

    nop

    .line 6415
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bb
    if-eq v1, v2, :cond_1bc

    .line 6416
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6418
    goto/16 :goto_7

    .line 6419
    :cond_1bc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6421
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6422
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6424
    .local v2, "manual":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 6425
    goto/16 :goto_7

    .line 6399
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "manual":Z
    :pswitch_d5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bd

    move v1, v2

    nop

    .line 6400
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bd
    if-eq v1, v2, :cond_1be

    .line 6401
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6403
    goto/16 :goto_7

    .line 6404
    :cond_1be
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6406
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6407
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6408
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6409
    goto/16 :goto_7

    .line 6383
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bf

    move v1, v2

    nop

    .line 6384
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bf
    if-eq v1, v2, :cond_1c0

    .line 6385
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6387
    goto/16 :goto_7

    .line 6388
    :cond_1c0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6390
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6391
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6393
    .local v2, "retry":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6394
    goto/16 :goto_7

    .line 6367
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "retry":I
    :pswitch_d7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c1

    move v1, v2

    nop

    .line 6368
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c1
    if-eq v1, v2, :cond_1c2

    .line 6369
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6371
    goto/16 :goto_7

    .line 6372
    :cond_1c2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6374
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6375
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6377
    .local v2, "response":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6378
    goto/16 :goto_7

    .line 6352
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":I
    :pswitch_d8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c3

    move v1, v2

    nop

    .line 6353
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c3
    if-eq v1, v2, :cond_1c4

    .line 6354
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6356
    goto/16 :goto_7

    .line 6357
    :cond_1c4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6359
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6360
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6361
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6362
    goto/16 :goto_7

    .line 6337
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c5

    move v1, v2

    nop

    .line 6338
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c5
    if-eq v1, v2, :cond_1c6

    .line 6339
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6341
    goto/16 :goto_7

    .line 6342
    :cond_1c6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6344
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6345
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6346
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6347
    goto/16 :goto_7

    .line 6322
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_da
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c7

    move v1, v2

    nop

    .line 6323
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c7
    if-eq v1, v2, :cond_1c8

    .line 6324
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6326
    goto/16 :goto_7

    .line 6327
    :cond_1c8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6329
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6330
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6331
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6332
    goto/16 :goto_7

    .line 6307
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_db
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c9

    move v1, v2

    nop

    .line 6308
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c9
    if-eq v1, v2, :cond_1ca

    .line 6309
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6311
    goto/16 :goto_7

    .line 6312
    :cond_1ca
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6314
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6315
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6316
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6317
    goto/16 :goto_7

    .line 6290
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_dc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cb

    move v1, v2

    nop

    .line 6291
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cb
    if-eq v1, v2, :cond_1cc

    .line 6292
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6294
    goto/16 :goto_7

    .line 6295
    :cond_1cc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6297
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6298
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6300
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6301
    .local v3, "serviceClass":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 6302
    goto/16 :goto_7

    .line 6275
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_dd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cd

    move v1, v2

    nop

    .line 6276
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cd
    if-eq v1, v2, :cond_1ce

    .line 6277
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6279
    goto/16 :goto_7

    .line 6280
    :cond_1ce
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6282
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6283
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6284
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6285
    goto/16 :goto_7

    .line 6259
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_de
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cf

    move v1, v2

    nop

    .line 6260
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cf
    if-eq v1, v2, :cond_1d0

    .line 6261
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6262
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6263
    goto/16 :goto_7

    .line 6264
    :cond_1d0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6266
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6267
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6268
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6269
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6270
    goto/16 :goto_7

    .line 6244
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :pswitch_df
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d1

    move v1, v2

    nop

    .line 6245
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d1
    if-eq v1, v2, :cond_1d2

    .line 6246
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6248
    goto/16 :goto_7

    .line 6249
    :cond_1d2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6251
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6252
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6253
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6254
    goto/16 :goto_7

    .line 6227
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d3

    move v1, v2

    nop

    .line 6228
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d3
    if-eq v1, v2, :cond_1d4

    .line 6229
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6230
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6231
    goto/16 :goto_7

    .line 6232
    :cond_1d4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6234
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6235
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6237
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6238
    .local v3, "m":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 6239
    goto/16 :goto_7

    .line 6212
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_e1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d5

    move v1, v2

    nop

    .line 6213
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d5
    if-eq v1, v2, :cond_1d6

    .line 6214
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6216
    goto/16 :goto_7

    .line 6217
    :cond_1d6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6219
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6220
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6221
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6222
    goto/16 :goto_7

    .line 6197
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d7

    move v1, v2

    nop

    .line 6198
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d7
    if-eq v1, v2, :cond_1d8

    .line 6199
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6201
    goto/16 :goto_7

    .line 6202
    :cond_1d8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6204
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6205
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6206
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6207
    goto/16 :goto_7

    .line 6180
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d9

    move v1, v2

    nop

    .line 6181
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d9
    if-eq v1, v2, :cond_1da

    .line 6182
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6184
    goto/16 :goto_7

    .line 6185
    :cond_1da
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6187
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6188
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6189
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6190
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6191
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6192
    goto/16 :goto_7

    .line 6163
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_e4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1db

    move v1, v2

    nop

    .line 6164
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1db
    if-eq v1, v2, :cond_1dc

    .line 6165
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6167
    goto/16 :goto_7

    .line 6168
    :cond_1dc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6170
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6171
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6172
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 6173
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6174
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 6175
    goto/16 :goto_7

    .line 6146
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :pswitch_e5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1dd

    move v1, v2

    nop

    .line 6147
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1dd
    if-eq v1, v2, :cond_1de

    .line 6148
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6149
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6150
    goto/16 :goto_7

    .line 6151
    :cond_1de
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6153
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6154
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6155
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6156
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6157
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6158
    goto/16 :goto_7

    .line 6129
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1df

    move v1, v2

    nop

    .line 6130
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1df
    if-eq v1, v2, :cond_1e0

    .line 6131
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6133
    goto/16 :goto_7

    .line 6134
    :cond_1e0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6136
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6137
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6138
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6139
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6140
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6141
    goto/16 :goto_7

    .line 6114
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e1

    move v1, v2

    nop

    .line 6115
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e1
    if-eq v1, v2, :cond_1e2

    .line 6116
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6118
    goto/16 :goto_7

    .line 6119
    :cond_1e2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6121
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6122
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6123
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6124
    goto/16 :goto_7

    .line 6099
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e3

    move v1, v2

    nop

    .line 6100
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e3
    if-eq v1, v2, :cond_1e4

    .line 6101
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6103
    goto/16 :goto_7

    .line 6104
    :cond_1e4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6106
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6107
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6108
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6109
    goto/16 :goto_7

    .line 6081
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e5

    move v1, v2

    nop

    .line 6082
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e5
    if-eq v1, v2, :cond_1e6

    .line 6083
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6085
    goto/16 :goto_7

    .line 6086
    :cond_1e6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6088
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6089
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6091
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6092
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6093
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6094
    goto/16 :goto_7

    .line 6064
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :pswitch_ea
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e7

    move v1, v2

    nop

    .line 6065
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e7
    if-eq v1, v2, :cond_1e8

    .line 6066
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6068
    goto/16 :goto_7

    .line 6069
    :cond_1e8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6071
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6072
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6073
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 6074
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6075
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 6076
    goto/16 :goto_7

    .line 6047
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :pswitch_eb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e9

    move v1, v2

    nop

    .line 6048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e9
    if-eq v1, v2, :cond_1ea

    .line 6049
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6051
    goto/16 :goto_7

    .line 6052
    :cond_1ea
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6054
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6055
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6056
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 6057
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6058
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 6059
    goto/16 :goto_7

    .line 6030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :pswitch_ec
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1eb

    move v1, v2

    nop

    .line 6031
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1eb
    if-eq v1, v2, :cond_1ec

    .line 6032
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6034
    goto/16 :goto_7

    .line 6035
    :cond_1ec
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6037
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6038
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6039
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 6040
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6041
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 6042
    goto/16 :goto_7

    .line 6013
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_ed
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ed

    move v1, v2

    nop

    .line 6014
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ed
    if-eq v1, v2, :cond_1ee

    .line 6015
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6017
    goto/16 :goto_7

    .line 6018
    :cond_1ee
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6020
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6021
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6022
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 6023
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6024
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 6025
    goto/16 :goto_7

    .line 5998
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :pswitch_ee
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ef

    move v1, v2

    nop

    .line 5999
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ef
    if-eq v1, v2, :cond_1f0

    .line 6000
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6002
    goto/16 :goto_7

    .line 6003
    :cond_1f0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6005
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6006
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6007
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6008
    goto/16 :goto_7

    .line 5983
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ef
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f1

    move v1, v2

    nop

    .line 5984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f1
    if-eq v1, v2, :cond_1f2

    .line 5985
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5987
    goto/16 :goto_7

    .line 5988
    :cond_1f2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5990
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5991
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5992
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5993
    goto/16 :goto_7

    .line 5968
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f3

    move v1, v2

    nop

    .line 5969
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f3
    if-eq v1, v2, :cond_1f4

    .line 5970
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5972
    goto/16 :goto_7

    .line 5973
    :cond_1f4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5975
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5976
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5977
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5978
    goto/16 :goto_7

    .line 5953
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f5

    move v1, v2

    nop

    .line 5954
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f5
    if-eq v1, v2, :cond_1f6

    .line 5955
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5957
    goto/16 :goto_7

    .line 5958
    :cond_1f6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5960
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5961
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5962
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5963
    goto/16 :goto_7

    .line 5938
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f7

    move v1, v2

    nop

    .line 5939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f7
    if-eq v1, v2, :cond_1f8

    .line 5940
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5942
    goto/16 :goto_7

    .line 5943
    :cond_1f8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5945
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5946
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5947
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5948
    goto/16 :goto_7

    .line 5923
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f9

    move v1, v2

    nop

    .line 5924
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f9
    if-eq v1, v2, :cond_1fa

    .line 5925
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5927
    goto/16 :goto_7

    .line 5928
    :cond_1fa
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5930
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5931
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5932
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5933
    goto/16 :goto_7

    .line 5907
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fb

    move v1, v2

    nop

    .line 5908
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fb
    if-eq v1, v2, :cond_1fc

    .line 5909
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5910
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5911
    goto/16 :goto_7

    .line 5912
    :cond_1fc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5914
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5915
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5917
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5918
    goto/16 :goto_7

    .line 5892
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsi":Ljava/lang/String;
    :pswitch_f5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fd

    move v1, v2

    nop

    .line 5893
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fd
    if-eq v1, v2, :cond_1fe

    .line 5894
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5896
    goto/16 :goto_7

    .line 5897
    :cond_1fe
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5899
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5900
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5901
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5902
    goto/16 :goto_7

    .line 5876
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ff

    move v1, v2

    nop

    .line 5877
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ff
    if-eq v1, v2, :cond_200

    .line 5878
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5880
    goto/16 :goto_7

    .line 5881
    :cond_200
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5883
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5884
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5885
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5886
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5887
    goto/16 :goto_7

    .line 5860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :pswitch_f7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_201

    move v1, v2

    nop

    .line 5861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_201
    if-eq v1, v2, :cond_202

    .line 5862
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5864
    goto/16 :goto_7

    .line 5865
    :cond_202
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5867
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5868
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5870
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5871
    goto/16 :goto_7

    .line 5844
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_f8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_203

    move v1, v2

    nop

    .line 5845
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_203
    if-eq v1, v2, :cond_204

    .line 5846
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5848
    goto/16 :goto_7

    .line 5849
    :cond_204
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5851
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5852
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5853
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5854
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5855
    goto/16 :goto_7

    .line 5828
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_f9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_205

    move v1, v2

    nop

    .line 5829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_205
    if-eq v1, v2, :cond_206

    .line 5830
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5832
    goto/16 :goto_7

    .line 5833
    :cond_206
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5835
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5836
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5838
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5839
    goto/16 :goto_7

    .line 5812
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fa
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_207

    move v1, v2

    nop

    .line 5813
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_207
    if-eq v1, v2, :cond_208

    .line 5814
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5816
    goto/16 :goto_7

    .line 5817
    :cond_208
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5819
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5820
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5822
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5823
    goto/16 :goto_7

    .line 5796
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_209

    move v1, v2

    nop

    .line 5797
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_209
    if-eq v1, v2, :cond_20a

    .line 5798
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5800
    goto/16 :goto_7

    .line 5801
    :cond_20a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5803
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5804
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5806
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5807
    goto/16 :goto_7

    .line 5780
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20b

    move v1, v2

    nop

    .line 5781
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20b
    if-eq v1, v2, :cond_20c

    .line 5782
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5784
    goto :goto_7

    .line 5785
    :cond_20c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5787
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5788
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5790
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5791
    goto :goto_7

    .line 5764
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20d

    move v1, v2

    nop

    .line 5765
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20d
    if-eq v1, v2, :cond_20e

    .line 5766
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5767
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5768
    goto :goto_7

    .line 5769
    :cond_20e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5771
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5772
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5774
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5775
    goto :goto_7

    .line 5747
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fe
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20f

    move v1, v2

    nop

    .line 5748
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20f
    if-eq v1, v2, :cond_210

    .line 5749
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5751
    goto :goto_7

    .line 5752
    :cond_210
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5754
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5755
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5756
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 5757
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5758
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 5759
    nop

    .line 9898
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :cond_211
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 5700
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5726
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5727
    return-object p0

    .line 5729
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

    .line 5733
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 5734
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5691
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5720
    const/4 v0, 0x1

    return v0
.end method
