.class public abstract Landroid/hardware/radio/V1_2/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2826
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2829
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2875
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2876
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2877
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2878
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2879
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

    .line 2849
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

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

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2834
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hardware.radio@1.0::IRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2843
    const-string v0, "android.hardware.radio@1.2::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2864
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2884
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2885
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 23
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 2913
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 5221
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 5222
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_12f

    .line 5223
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5225
    goto/16 :goto_8

    .line 5208
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 5209
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 5210
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5212
    goto/16 :goto_8

    .line 5213
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5215
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->notifySyspropsChanged()V

    .line 5216
    goto/16 :goto_8

    .line 5192
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 5193
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 5194
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5196
    goto/16 :goto_8

    .line 5197
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5199
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5200
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5201
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5203
    goto/16 :goto_8

    .line 5177
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 5178
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 5179
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5181
    goto/16 :goto_8

    .line 5182
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5184
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->ping()V

    .line 5185
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5187
    goto/16 :goto_8

    .line 5167
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 5168
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_12f

    .line 5169
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5171
    goto/16 :goto_8

    .line 5154
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 5155
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 5156
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5157
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5158
    goto/16 :goto_8

    .line 5159
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5161
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setHALInstrumentation()V

    .line 5162
    goto/16 :goto_8

    .line 5121
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 5122
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 5123
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5125
    goto/16 :goto_8

    .line 5126
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5128
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5129
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5131
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5133
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5134
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5135
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5136
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 5137
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 5139
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 5140
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5141
    nop

    .line 5137
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5144
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5146
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5148
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5149
    goto/16 :goto_8

    .line 5105
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 5106
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 5107
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5109
    goto/16 :goto_8

    .line 5110
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5112
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5113
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5114
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5116
    goto/16 :goto_8

    .line 5091
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 5092
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 5093
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5095
    goto/16 :goto_8

    .line 5096
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5098
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5100
    goto/16 :goto_8

    .line 5075
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 5076
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 5077
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5079
    goto/16 :goto_8

    .line 5080
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5082
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5083
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5084
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5086
    goto/16 :goto_8

    .line 5059
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 5060
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 5061
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5063
    goto/16 :goto_8

    .line 5064
    :cond_14
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5067
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5068
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5069
    .local v3, "reason":I
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 5070
    goto/16 :goto_8

    .line 5036
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    :cond_15
    move v13, v1

    .line 5037
    .local v13, "_hidl_is_oneway":Z
    if-eq v13, v2, :cond_16

    .line 5038
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5040
    goto/16 :goto_8

    .line 5041
    :cond_16
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5044
    .local v14, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5045
    .local v15, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 5046
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5048
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5049
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 5050
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 5051
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 5052
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 5053
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v10

    move v1, v14

    move v2, v15

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
    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5054
    goto/16 :goto_8

    .line 5016
    .end local v13    # "_hidl_is_oneway":Z
    .end local v14    # "serial":I
    .end local v15    # "accessNetwork":I
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    :cond_17
    move v8, v1

    .line 5017
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_18

    .line 5018
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5020
    goto/16 :goto_8

    .line 5021
    :cond_18
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5024
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5025
    .local v13, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5026
    .local v14, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5027
    .local v15, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 5028
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 5029
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 5030
    .local v18, "accessNetwork":I
    move-object v0, v10

    move v1, v9

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5031
    goto/16 :goto_8

    .line 4998
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v13    # "hysteresisMs":I
    .end local v14    # "hysteresisDlKbps":I
    .end local v15    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    :cond_19
    move v6, v1

    .line 4999
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_1a

    .line 5000
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5002
    goto/16 :goto_8

    .line 5003
    :cond_1a
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5006
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5007
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5008
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 5009
    .local v13, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5010
    .local v14, "accessNetwork":I
    move-object v0, v10

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 5011
    goto/16 :goto_8

    .line 4983
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v13    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "accessNetwork":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 4984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 4985
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4987
    goto/16 :goto_8

    .line 4988
    :cond_1c
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4991
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4992
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4993
    goto/16 :goto_8

    .line 4967
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 4968
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 4969
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4971
    goto/16 :goto_8

    .line 4972
    :cond_1e
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4975
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4976
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4977
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4978
    goto/16 :goto_8

    .line 4952
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 4953
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 4954
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4956
    goto/16 :goto_8

    .line 4957
    :cond_20
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4960
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4961
    .local v2, "sessionHandle":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopKeepalive(II)V

    .line 4962
    goto/16 :goto_8

    .line 4936
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionHandle":I
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 4937
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 4938
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4940
    goto/16 :goto_8

    .line 4941
    :cond_22
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4944
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4945
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4946
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4947
    goto/16 :goto_8

    .line 4922
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 4923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 4924
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4926
    goto/16 :goto_8

    .line 4927
    :cond_24
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4930
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopNetworkScan(I)V

    .line 4931
    goto/16 :goto_8

    .line 4906
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 4907
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 4908
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4910
    goto/16 :goto_8

    .line 4911
    :cond_26
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4914
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4915
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4916
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4917
    goto/16 :goto_8

    .line 4891
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 4892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 4893
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4895
    goto/16 :goto_8

    .line 4896
    :cond_28
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4899
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4900
    .local v2, "powerUp":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4901
    goto/16 :goto_8

    .line 4875
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 4876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 4877
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4879
    goto/16 :goto_8

    .line 4880
    :cond_2a
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4883
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4884
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4885
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4886
    goto/16 :goto_8

    .line 4862
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 4863
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 4864
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4865
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4866
    goto/16 :goto_8

    .line 4867
    :cond_2c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4869
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->responseAcknowledgement()V

    .line 4870
    goto/16 :goto_8

    .line 4847
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 4848
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 4849
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4851
    goto/16 :goto_8

    .line 4852
    :cond_2e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4855
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4856
    .local v2, "powerUp":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4857
    goto/16 :goto_8

    .line 4832
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 4833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 4834
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4836
    goto/16 :goto_8

    .line 4837
    :cond_30
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4840
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4841
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter(II)V

    .line 4842
    goto/16 :goto_8

    .line 4816
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 4817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 4818
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4820
    goto/16 :goto_8

    .line 4821
    :cond_32
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4824
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4825
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4826
    .local v3, "state":Z
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4827
    goto/16 :goto_8

    .line 4802
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 4803
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 4804
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4806
    goto/16 :goto_8

    .line 4807
    :cond_34
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4810
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4811
    goto/16 :goto_8

    .line 4785
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 4786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 4787
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4789
    goto/16 :goto_8

    .line 4790
    :cond_36
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4793
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4794
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4795
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4796
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4797
    goto/16 :goto_8

    .line 4771
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 4772
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 4773
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4775
    goto/16 :goto_8

    .line 4776
    :cond_38
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4779
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4780
    goto/16 :goto_8

    .line 4757
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 4758
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 4759
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4761
    goto/16 :goto_8

    .line 4762
    :cond_3a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4765
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->pullLceData(I)V

    .line 4766
    goto/16 :goto_8

    .line 4743
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 4744
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 4745
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4747
    goto/16 :goto_8

    .line 4748
    :cond_3c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4751
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopLceService(I)V

    .line 4752
    goto/16 :goto_8

    .line 4727
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 4728
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 4729
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4731
    goto/16 :goto_8

    .line 4732
    :cond_3e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4735
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4736
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4737
    .local v3, "pullMode":Z
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startLceService(IIZ)V

    .line 4738
    goto/16 :goto_8

    .line 4711
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 4712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 4713
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4715
    goto/16 :goto_8

    .line 4716
    :cond_40
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4719
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4720
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4721
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4722
    goto/16 :goto_8

    .line 4697
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 4698
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 4699
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4701
    goto/16 :goto_8

    .line 4702
    :cond_42
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4705
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getRadioCapability(I)V

    .line 4706
    goto/16 :goto_8

    .line 4683
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 4684
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 4685
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4687
    goto/16 :goto_8

    .line 4688
    :cond_44
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4691
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestShutdown(I)V

    .line 4692
    goto/16 :goto_8

    .line 4667
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 4668
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 4669
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4670
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4671
    goto/16 :goto_8

    .line 4672
    :cond_46
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4675
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4676
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4677
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4678
    goto/16 :goto_8

    .line 4650
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 4651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 4652
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4654
    goto/16 :goto_8

    .line 4655
    :cond_48
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4658
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4659
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4660
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4661
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4662
    goto/16 :goto_8

    .line 4636
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 4637
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 4638
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4640
    goto/16 :goto_8

    .line 4641
    :cond_4a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4644
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHardwareConfig(I)V

    .line 4645
    goto/16 :goto_8

    .line 4621
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 4622
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 4623
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4625
    goto/16 :goto_8

    .line 4626
    :cond_4c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4629
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4630
    .local v2, "allow":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4631
    goto/16 :goto_8

    .line 4605
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allow":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 4606
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 4607
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4609
    goto/16 :goto_8

    .line 4610
    :cond_4e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4613
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4614
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4615
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4616
    goto/16 :goto_8

    .line 4590
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 4591
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 4592
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4594
    goto/16 :goto_8

    .line 4595
    :cond_50
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4598
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4599
    .local v2, "resetType":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvResetConfig(II)V

    .line 4600
    goto/16 :goto_8

    .line 4575
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resetType":I
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 4576
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 4577
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4579
    goto/16 :goto_8

    .line 4580
    :cond_52
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4583
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4584
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4585
    goto/16 :goto_8

    .line 4559
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 4560
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 4561
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4563
    goto/16 :goto_8

    .line 4564
    :cond_54
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4567
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4568
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4570
    goto/16 :goto_8

    .line 4544
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 4545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 4546
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4548
    goto/16 :goto_8

    .line 4549
    :cond_56
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4552
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4553
    .local v2, "itemId":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvReadItem(II)V

    .line 4554
    goto/16 :goto_8

    .line 4528
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "itemId":I
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 4529
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 4530
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4532
    goto/16 :goto_8

    .line 4533
    :cond_58
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4536
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4537
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4538
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4539
    goto/16 :goto_8

    .line 4513
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 4514
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 4515
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4517
    goto/16 :goto_8

    .line 4518
    :cond_5a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4521
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4522
    .local v2, "channelId":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4523
    goto/16 :goto_8

    .line 4497
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 4498
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 4499
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4501
    goto/16 :goto_8

    .line 4502
    :cond_5c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4505
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4506
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4507
    .local v3, "p2":I
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4508
    goto/16 :goto_8

    .line 4481
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 4482
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 4483
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4484
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4485
    goto/16 :goto_8

    .line 4486
    :cond_5e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4489
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4490
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4491
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4492
    goto/16 :goto_8

    .line 4465
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 4466
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 4467
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4468
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4469
    goto/16 :goto_8

    .line 4470
    :cond_60
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4473
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4474
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4475
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4476
    goto/16 :goto_8

    .line 4451
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 4452
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 4453
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4454
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4455
    goto/16 :goto_8

    .line 4456
    :cond_62
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4459
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4460
    goto/16 :goto_8

    .line 4433
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 4434
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 4435
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4437
    goto/16 :goto_8

    .line 4438
    :cond_64
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4441
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4442
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4444
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4445
    .local v4, "isRoaming":Z
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4446
    goto/16 :goto_8

    .line 4418
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 4419
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 4420
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4421
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4422
    goto/16 :goto_8

    .line 4423
    :cond_66
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4426
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4427
    .local v2, "rate":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4428
    goto/16 :goto_8

    .line 4404
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rate":I
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 4405
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 4406
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4408
    goto/16 :goto_8

    .line 4409
    :cond_68
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4412
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCellInfoList(I)V

    .line 4413
    goto/16 :goto_8

    .line 4390
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 4391
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 4392
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4394
    goto/16 :goto_8

    .line 4395
    :cond_6a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4398
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4399
    goto/16 :goto_8

    .line 4375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 4376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 4377
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4379
    goto/16 :goto_8

    .line 4380
    :cond_6c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4383
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4384
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4385
    goto/16 :goto_8

    .line 4359
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 4360
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 4361
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4362
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4363
    goto/16 :goto_8

    .line 4364
    :cond_6e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4367
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4368
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4369
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4370
    goto/16 :goto_8

    .line 4344
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 4345
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 4346
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4347
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4348
    goto/16 :goto_8

    .line 4349
    :cond_70
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4352
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4353
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4354
    goto/16 :goto_8

    .line 4330
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 4331
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 4332
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4334
    goto/16 :goto_8

    .line 4335
    :cond_72
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4338
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4339
    goto/16 :goto_8

    .line 4316
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 4317
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 4318
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4320
    goto/16 :goto_8

    .line 4321
    :cond_74
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4324
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4325
    goto/16 :goto_8

    .line 4301
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 4302
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 4303
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4305
    goto/16 :goto_8

    .line 4306
    :cond_76
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4309
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4310
    .local v2, "available":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4311
    goto/16 :goto_8

    .line 4286
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "available":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 4287
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 4288
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4289
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4290
    goto/16 :goto_8

    .line 4291
    :cond_78
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4294
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4295
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4296
    goto/16 :goto_8

    .line 4272
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 4273
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 4274
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4276
    goto/16 :goto_8

    .line 4277
    :cond_7a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4280
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSmscAddress(I)V

    .line 4281
    goto/16 :goto_8

    .line 4258
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 4259
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 4260
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4262
    goto/16 :goto_8

    .line 4263
    :cond_7c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4266
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4267
    goto/16 :goto_8

    .line 4244
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 4245
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 4246
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4248
    goto/16 :goto_8

    .line 4249
    :cond_7e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4252
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4253
    goto/16 :goto_8

    .line 4229
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 4230
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 4231
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4233
    goto/16 :goto_8

    .line 4234
    :cond_80
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4237
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4238
    .local v2, "index":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4239
    goto/16 :goto_8

    .line 4213
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 4214
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 4215
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4217
    goto/16 :goto_8

    .line 4218
    :cond_82
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4221
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4222
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4223
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4224
    goto/16 :goto_8

    .line 4199
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 4200
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 4201
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4203
    goto/16 :goto_8

    .line 4204
    :cond_84
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4207
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCDMASubscription(I)V

    .line 4208
    goto/16 :goto_8

    .line 4184
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 4185
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 4186
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4188
    goto/16 :goto_8

    .line 4189
    :cond_86
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4192
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4193
    .local v2, "activate":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4194
    goto/16 :goto_8

    .line 4169
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 4170
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 4171
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4173
    goto/16 :goto_8

    .line 4174
    :cond_88
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4177
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4178
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4179
    goto/16 :goto_8

    .line 4155
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 4156
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 4157
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4159
    goto/16 :goto_8

    .line 4160
    :cond_8a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4163
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4164
    goto/16 :goto_8

    .line 4140
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 4141
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 4142
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4143
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4144
    goto/16 :goto_8

    .line 4145
    :cond_8c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4147
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4148
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4149
    .local v2, "activate":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4150
    goto/16 :goto_8

    .line 4125
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 4126
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 4127
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4129
    goto/16 :goto_8

    .line 4130
    :cond_8e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4133
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4134
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4135
    goto/16 :goto_8

    .line 4111
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 4112
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 4113
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4114
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4115
    goto/16 :goto_8

    .line 4116
    :cond_90
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4119
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4120
    goto/16 :goto_8

    .line 4095
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 4096
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 4097
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4099
    goto/16 :goto_8

    .line 4100
    :cond_92
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4103
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4104
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4105
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4106
    goto/16 :goto_8

    .line 4079
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 4080
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 4081
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4083
    goto/16 :goto_8

    .line 4084
    :cond_94
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4087
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4088
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4089
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4090
    goto/16 :goto_8

    .line 4062
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 4063
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 4064
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4066
    goto/16 :goto_8

    .line 4067
    :cond_96
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4070
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4071
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4072
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4073
    .local v4, "off":I
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4074
    goto/16 :goto_8

    .line 4047
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 4048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 4049
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4051
    goto/16 :goto_8

    .line 4052
    :cond_98
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4055
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4056
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4057
    goto/16 :goto_8

    .line 4033
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 4034
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 4035
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4037
    goto/16 :goto_8

    .line 4038
    :cond_9a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4041
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4042
    goto/16 :goto_8

    .line 4018
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 4019
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 4020
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4022
    goto/16 :goto_8

    .line 4023
    :cond_9c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4025
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4026
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4027
    .local v2, "enable":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4028
    goto/16 :goto_8

    .line 4004
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 4005
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 4006
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4008
    goto/16 :goto_8

    .line 4009
    :cond_9e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4012
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getTTYMode(I)V

    .line 4013
    goto/16 :goto_8

    .line 3989
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 3990
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 3991
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3993
    goto/16 :goto_8

    .line 3994
    :cond_a0
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3997
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3998
    .local v2, "mode":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setTTYMode(II)V

    .line 3999
    goto/16 :goto_8

    .line 3975
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 3976
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 3977
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3979
    goto/16 :goto_8

    .line 3980
    :cond_a2
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3983
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3984
    goto/16 :goto_8

    .line 3960
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 3961
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 3962
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3964
    goto/16 :goto_8

    .line 3965
    :cond_a4
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3968
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3969
    .local v2, "type":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3970
    goto/16 :goto_8

    .line 3945
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 3946
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 3947
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3949
    goto/16 :goto_8

    .line 3950
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3953
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3954
    .local v2, "cdmaSub":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3955
    goto/16 :goto_8

    .line 3930
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSub":I
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 3931
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 3932
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3934
    goto/16 :goto_8

    .line 3935
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3938
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3939
    .local v2, "enable":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3940
    goto/16 :goto_8

    .line 3916
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 3917
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 3918
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3920
    goto/16 :goto_8

    .line 3921
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3924
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNeighboringCids(I)V

    .line 3925
    goto/16 :goto_8

    .line 3902
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 3903
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 3904
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3906
    goto/16 :goto_8

    .line 3907
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3910
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3911
    goto/16 :goto_8

    .line 3887
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 3888
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 3889
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3891
    goto/16 :goto_8

    .line 3892
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3895
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3896
    .local v2, "nwType":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3897
    goto/16 :goto_8

    .line 3873
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 3874
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 3875
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3877
    goto/16 :goto_8

    .line 3878
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3881
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3882
    goto/16 :goto_8

    .line 3858
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 3859
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 3860
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3862
    goto/16 :goto_8

    .line 3863
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3866
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3867
    .local v2, "accept":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3868
    goto/16 :goto_8

    .line 3843
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accept":Z
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 3844
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 3845
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3847
    goto/16 :goto_8

    .line 3848
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3851
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3852
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3853
    goto/16 :goto_8

    .line 3828
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 3829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 3830
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3832
    goto/16 :goto_8

    .line 3833
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3836
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3837
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3838
    goto/16 :goto_8

    .line 3814
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 3815
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 3816
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3818
    goto/16 :goto_8

    .line 3819
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3822
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3823
    goto/16 :goto_8

    .line 3799
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 3800
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 3801
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3802
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3803
    goto/16 :goto_8

    .line 3804
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3807
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3808
    .local v2, "mode":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBandMode(II)V

    .line 3809
    goto/16 :goto_8

    .line 3784
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 3785
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 3786
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3788
    goto/16 :goto_8

    .line 3789
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3791
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3792
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3793
    .local v2, "index":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3794
    goto/16 :goto_8

    .line 3768
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 3769
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 3770
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3771
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3772
    goto/16 :goto_8

    .line 3773
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3776
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3777
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3778
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3779
    goto/16 :goto_8

    .line 3753
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 3754
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 3755
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3757
    goto/16 :goto_8

    .line 3758
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3761
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3762
    .local v2, "enable":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3763
    goto/16 :goto_8

    .line 3739
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 3740
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 3741
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3743
    goto/16 :goto_8

    .line 3744
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3747
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataCallList(I)V

    .line 3748
    goto/16 :goto_8

    .line 3725
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 3726
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 3727
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3729
    goto/16 :goto_8

    .line 3730
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3733
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClip(I)V

    .line 3734
    goto/16 :goto_8

    .line 3711
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 3712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 3713
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3715
    goto/16 :goto_8

    .line 3716
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3719
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getMute(I)V

    .line 3720
    goto/16 :goto_8

    .line 3696
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 3697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 3698
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3700
    goto/16 :goto_8

    .line 3701
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3704
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3705
    .restart local v2    # "enable":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setMute(IZ)V

    .line 3706
    goto/16 :goto_8

    .line 3681
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 3682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 3683
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3684
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3685
    goto/16 :goto_8

    .line 3686
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3689
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3690
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->separateConnection(II)V

    .line 3691
    goto/16 :goto_8

    .line 3667
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 3668
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 3669
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3670
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3671
    goto/16 :goto_8

    .line 3672
    :cond_cc
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3675
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getBasebandVersion(I)V

    .line 3676
    goto/16 :goto_8

    .line 3653
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 3654
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 3655
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3657
    goto/16 :goto_8

    .line 3658
    :cond_ce
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3661
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopDtmf(I)V

    .line 3662
    goto/16 :goto_8

    .line 3638
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 3639
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 3640
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3642
    goto/16 :goto_8

    .line 3643
    :cond_d0
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3646
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3647
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3648
    goto/16 :goto_8

    .line 3624
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 3625
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 3626
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3628
    goto/16 :goto_8

    .line 3629
    :cond_d2
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3632
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3633
    goto/16 :goto_8

    .line 3609
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 3610
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 3611
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3612
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3613
    goto/16 :goto_8

    .line 3614
    :cond_d4
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3617
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3618
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3619
    goto/16 :goto_8

    .line 3595
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 3596
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 3597
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3599
    goto/16 :goto_8

    .line 3600
    :cond_d6
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3603
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3604
    goto/16 :goto_8

    .line 3581
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 3582
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 3583
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3585
    goto/16 :goto_8

    .line 3586
    :cond_d8
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3589
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3590
    goto/16 :goto_8

    .line 3564
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 3565
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 3566
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3568
    goto/16 :goto_8

    .line 3569
    :cond_da
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3572
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3573
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3574
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3575
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    goto/16 :goto_8

    .line 3545
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    :cond_db
    move v7, v1

    .line 3546
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_dc

    .line 3547
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3549
    goto/16 :goto_8

    .line 3550
    :cond_dc
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3553
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3554
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3555
    .local v13, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3556
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3557
    .local v15, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3558
    .local v16, "appId":Ljava/lang/String;
    move-object v0, v10

    move v1, v8

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3559
    goto/16 :goto_8

    .line 3527
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    :cond_dd
    move v6, v1

    .line 3528
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_de

    .line 3529
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3530
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3531
    goto/16 :goto_8

    .line 3532
    :cond_de
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3535
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3536
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3537
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3538
    .local v13, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3539
    .local v14, "appId":Ljava/lang/String;
    move-object v0, v10

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3540
    goto/16 :goto_8

    .line 3511
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v13    # "serviceClass":I
    .end local v14    # "appId":Ljava/lang/String;
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 3512
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 3513
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3515
    goto/16 :goto_8

    .line 3516
    :cond_e0
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3519
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3520
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3521
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3522
    goto/16 :goto_8

    .line 3497
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 3498
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 3499
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3501
    goto/16 :goto_8

    .line 3502
    :cond_e2
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3505
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acceptCall(I)V

    .line 3506
    goto/16 :goto_8

    .line 3481
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 3482
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 3483
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3484
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3485
    goto/16 :goto_8

    .line 3486
    :cond_e4
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3489
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3490
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3491
    .local v3, "cause":I
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3492
    goto/16 :goto_8

    .line 3465
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 3466
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 3467
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3468
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3469
    goto/16 :goto_8

    .line 3470
    :cond_e6
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3473
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3474
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3475
    .local v3, "serviceClass":I
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3476
    goto/16 :goto_8

    .line 3450
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 3451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 3452
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3454
    goto/16 :goto_8

    .line 3455
    :cond_e8
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3459
    .local v2, "serviceClass":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallWaiting(II)V

    .line 3460
    goto/16 :goto_8

    .line 3434
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 3435
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 3436
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3438
    goto/16 :goto_8

    .line 3439
    :cond_ea
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3442
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3443
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3444
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3445
    goto/16 :goto_8

    .line 3418
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 3419
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 3420
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3421
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3422
    goto/16 :goto_8

    .line 3423
    :cond_ec
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3426
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3427
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3428
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3429
    goto/16 :goto_8

    .line 3403
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 3404
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 3405
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3407
    goto/16 :goto_8

    .line 3408
    :cond_ee
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3410
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3411
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3412
    .local v2, "status":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setClir(II)V

    .line 3413
    goto/16 :goto_8

    .line 3389
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 3390
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 3391
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3392
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3393
    goto/16 :goto_8

    .line 3394
    :cond_f0
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3397
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClir(I)V

    .line 3398
    goto/16 :goto_8

    .line 3375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 3376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 3377
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3379
    goto/16 :goto_8

    .line 3380
    :cond_f2
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3383
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3384
    goto/16 :goto_8

    .line 3360
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 3361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 3362
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3364
    goto/16 :goto_8

    .line 3365
    :cond_f4
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3369
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3370
    goto/16 :goto_8

    .line 3344
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 3345
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 3346
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3347
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3348
    goto/16 :goto_8

    .line 3349
    :cond_f6
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3352
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3353
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3354
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3355
    goto/16 :goto_8

    .line 3324
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    :cond_f7
    move v7, v1

    .line 3325
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_f8

    .line 3326
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3328
    goto/16 :goto_8

    .line 3329
    :cond_f8
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3332
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 3333
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 3334
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3336
    .local v14, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3337
    .local v15, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 3338
    .local v16, "isRoaming":Z
    move-object v0, v10

    move v1, v8

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3339
    goto/16 :goto_8

    .line 3308
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v14    # "modemCognitive":Z
    .end local v15    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    .line 3309
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 3310
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3312
    goto/16 :goto_8

    .line 3313
    :cond_fa
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3316
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3317
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3318
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3319
    goto/16 :goto_8

    .line 3292
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 3293
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 3294
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3296
    goto/16 :goto_8

    .line 3297
    :cond_fc
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3300
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3301
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3302
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3303
    goto/16 :goto_8

    .line 3277
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_75
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fd

    move v1, v2

    nop

    .line 3278
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 3279
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3281
    goto/16 :goto_8

    .line 3282
    :cond_fe
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3285
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3286
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3287
    goto/16 :goto_8

    .line 3262
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_76
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ff

    move v1, v2

    nop

    .line 3263
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ff
    if-eq v1, v2, :cond_100

    .line 3264
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3266
    goto/16 :goto_8

    .line 3267
    :cond_100
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3270
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3271
    .local v2, "on":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioPower(IZ)V

    .line 3272
    goto/16 :goto_8

    .line 3248
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_77
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    move v1, v2

    nop

    .line 3249
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_101
    if-eq v1, v2, :cond_102

    .line 3250
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3252
    goto/16 :goto_8

    .line 3253
    :cond_102
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3256
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getOperator(I)V

    .line 3257
    goto/16 :goto_8

    .line 3234
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_78
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_103

    move v1, v2

    nop

    .line 3235
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_103
    if-eq v1, v2, :cond_104

    .line 3236
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3238
    goto/16 :goto_8

    .line 3239
    :cond_104
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3242
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3243
    goto/16 :goto_8

    .line 3220
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_79
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_105

    move v1, v2

    nop

    .line 3221
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_105
    if-eq v1, v2, :cond_106

    .line 3222
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3224
    goto/16 :goto_8

    .line 3225
    :cond_106
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3228
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3229
    goto/16 :goto_8

    .line 3206
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_107

    move v1, v2

    nop

    .line 3207
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_107
    if-eq v1, v2, :cond_108

    .line 3208
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3210
    goto/16 :goto_8

    .line 3211
    :cond_108
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3214
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSignalStrength(I)V

    .line 3215
    goto/16 :goto_8

    .line 3192
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_109

    move v1, v2

    nop

    .line 3193
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_109
    if-eq v1, v2, :cond_10a

    .line 3194
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3196
    goto/16 :goto_8

    .line 3197
    :cond_10a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3200
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3201
    goto/16 :goto_8

    .line 3178
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10b

    move v1, v2

    nop

    .line 3179
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10b
    if-eq v1, v2, :cond_10c

    .line 3180
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3182
    goto/16 :goto_8

    .line 3183
    :cond_10c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3186
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->rejectCall(I)V

    .line 3187
    goto/16 :goto_8

    .line 3164
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10d

    move v1, v2

    nop

    .line 3165
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10d
    if-eq v1, v2, :cond_10e

    .line 3166
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3168
    goto/16 :goto_8

    .line 3169
    :cond_10e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3172
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->conference(I)V

    .line 3173
    goto/16 :goto_8

    .line 3150
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10f

    move v1, v2

    nop

    .line 3151
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10f
    if-eq v1, v2, :cond_110

    .line 3152
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3154
    goto/16 :goto_8

    .line 3155
    :cond_110
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3157
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3158
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3159
    goto/16 :goto_8

    .line 3136
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_111

    move v1, v2

    nop

    .line 3137
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_111
    if-eq v1, v2, :cond_112

    .line 3138
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3140
    goto/16 :goto_8

    .line 3141
    :cond_112
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3144
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3145
    goto/16 :goto_8

    .line 3122
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_80
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_113

    move v1, v2

    nop

    .line 3123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_113
    if-eq v1, v2, :cond_114

    .line 3124
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3126
    goto/16 :goto_8

    .line 3127
    :cond_114
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3130
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3131
    goto/16 :goto_8

    .line 3107
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_81
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_115

    move v1, v2

    nop

    .line 3108
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_115
    if-eq v1, v2, :cond_116

    .line 3109
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3111
    goto/16 :goto_8

    .line 3112
    :cond_116
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3115
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3116
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangup(II)V

    .line 3117
    goto/16 :goto_8

    .line 3092
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_82
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_117

    move v1, v2

    nop

    .line 3093
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_117
    if-eq v1, v2, :cond_118

    .line 3094
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3095
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3096
    goto/16 :goto_8

    .line 3097
    :cond_118
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3100
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3101
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3102
    goto/16 :goto_8

    .line 3076
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_119

    move v1, v2

    nop

    .line 3077
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_119
    if-eq v1, v2, :cond_11a

    .line 3078
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3079
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3080
    goto/16 :goto_8

    .line 3081
    :cond_11a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3083
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3084
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3085
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3086
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3087
    goto/16 :goto_8

    .line 3062
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_84
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11b

    move v1, v2

    nop

    .line 3063
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11b
    if-eq v1, v2, :cond_11c

    .line 3064
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3066
    goto/16 :goto_8

    .line 3067
    :cond_11c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3070
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCurrentCalls(I)V

    .line 3071
    goto/16 :goto_8

    .line 3047
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_85
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11d

    move v1, v2

    nop

    .line 3048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11d
    if-eq v1, v2, :cond_11e

    .line 3049
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3051
    goto/16 :goto_8

    .line 3052
    :cond_11e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3055
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3056
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3057
    goto/16 :goto_8

    .line 3030
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_86
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11f

    move v1, v2

    nop

    .line 3031
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11f
    if-eq v1, v2, :cond_120

    .line 3032
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3034
    goto/16 :goto_8

    .line 3035
    :cond_120
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3038
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3039
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3040
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3041
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    goto/16 :goto_8

    .line 3013
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_87
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_121

    move v1, v2

    nop

    .line 3014
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_121
    if-eq v1, v2, :cond_122

    .line 3015
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3017
    goto/16 :goto_8

    .line 3018
    :cond_122
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3021
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3022
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3023
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3024
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    goto/16 :goto_8

    .line 2996
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_88
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_123

    move v1, v2

    nop

    .line 2997
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_123
    if-eq v1, v2, :cond_124

    .line 2998
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3000
    goto/16 :goto_8

    .line 3001
    :cond_124
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3004
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3005
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3006
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3007
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    goto/16 :goto_8

    .line 2980
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    move v1, v2

    nop

    .line 2981
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_125
    if-eq v1, v2, :cond_126

    .line 2982
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2984
    goto/16 :goto_8

    .line 2985
    :cond_126
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2988
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2989
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2990
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2991
    goto/16 :goto_8

    .line 2963
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_127

    move v1, v2

    nop

    .line 2964
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_127
    if-eq v1, v2, :cond_128

    .line 2965
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2966
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2967
    goto/16 :goto_8

    .line 2968
    :cond_128
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2971
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2972
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2973
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2974
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    goto/16 :goto_8

    .line 2947
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_8b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_129

    move v1, v2

    nop

    .line 2948
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_129
    if-eq v1, v2, :cond_12a

    .line 2949
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2951
    goto :goto_8

    .line 2952
    :cond_12a
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2955
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2956
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2957
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2958
    goto :goto_8

    .line 2933
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_8c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12b

    move v1, v2

    nop

    .line 2934
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12b
    if-eq v1, v2, :cond_12c

    .line 2935
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2937
    goto :goto_8

    .line 2938
    :cond_12c
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2941
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getIccCardStatus(I)V

    .line 2942
    goto :goto_8

    .line 2916
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12d

    goto :goto_7

    :cond_12d
    move v2, v1

    .line 2917
    .local v2, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_12e

    .line 2918
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2920
    goto :goto_8

    .line 2921
    :cond_12e
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 2924
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 2925
    .local v3, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v0, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 2926
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2928
    nop

    .line 5230
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_12f
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2869
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2895
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    return-object p0

    .line 2898
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

    .line 2902
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2903
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2860
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2889
    const/4 v0, 0x1

    return v0
.end method
