.class public abstract Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2234
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2237
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2287
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2288
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2289
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2290
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2291
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

    .line 2259
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
        -0x34t
        0x3dt
        0x3at
        -0x2bt
        -0x6ft
        -0x7t
        -0x70t
        0xdt
        -0x13t
        -0x1dt
        -0x7at
        0x4ct
        -0x74t
        0x3t
        0x58t
        0x68t
        -0x71t
        -0x1et
        0xat
        0x6at
        -0x7et
        0x40t
        -0x2dt
        0x5ft
        -0x25t
        0x76t
        0x20t
        0x27t
        0x3ft
        -0x2et
        -0x8t
        0x2ct
    .end array-data

    :array_1
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

    .line 2242
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.1::IRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

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

    .line 2253
    const-string v0, "vendor.mediatek.hardware.radio@3.1::IRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2276
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2296
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2297
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

    .line 2325
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 4231
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 4232
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_fd

    .line 4233
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4235
    goto/16 :goto_7

    .line 4218
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 4219
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 4220
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4222
    goto/16 :goto_7

    .line 4223
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 4226
    goto/16 :goto_7

    .line 4202
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 4203
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 4204
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4205
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4206
    goto/16 :goto_7

    .line 4207
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4209
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4210
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4211
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4213
    goto/16 :goto_7

    .line 4187
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 4188
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 4189
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4191
    goto/16 :goto_7

    .line 4192
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4194
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->ping()V

    .line 4195
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4197
    goto/16 :goto_7

    .line 4177
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 4178
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_fd

    .line 4179
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4181
    goto/16 :goto_7

    .line 4164
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 4165
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 4166
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4168
    goto/16 :goto_7

    .line 4169
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4171
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 4172
    goto/16 :goto_7

    .line 4131
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 4132
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 4133
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4135
    goto/16 :goto_7

    .line 4136
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4138
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4139
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4141
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4143
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4144
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4145
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4146
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 4147
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 4149
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 4150
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4151
    nop

    .line 4147
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4154
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4156
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4158
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4159
    goto/16 :goto_7

    .line 4115
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 4116
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 4117
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4119
    goto/16 :goto_7

    .line 4120
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4123
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4126
    goto/16 :goto_7

    .line 4101
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 4102
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 4103
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4104
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4105
    goto/16 :goto_7

    .line 4106
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4108
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4110
    goto/16 :goto_7

    .line 4085
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 4086
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 4087
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4089
    goto/16 :goto_7

    .line 4090
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4092
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4093
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4094
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4095
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4096
    goto/16 :goto_7

    .line 4070
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 4071
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 4072
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4074
    goto/16 :goto_7

    .line 4075
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4077
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4078
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4079
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 4080
    goto/16 :goto_7

    .line 4055
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 4056
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 4057
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4059
    goto/16 :goto_7

    .line 4060
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4063
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4064
    .local v2, "dsbpState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->dsbpStateChanged(II)V

    .line 4065
    goto/16 :goto_7

    .line 4040
    .end local v0    # "indicationType":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dsbpState":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 4041
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 4042
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4044
    goto/16 :goto_7

    .line 4045
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4048
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4049
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 4050
    goto/16 :goto_7

    .line 4025
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 4026
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 4027
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4029
    goto/16 :goto_7

    .line 4030
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4032
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4033
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4034
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 4035
    goto/16 :goto_7

    .line 4010
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 4011
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 4012
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4014
    goto/16 :goto_7

    .line 4015
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4018
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4019
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 4020
    goto/16 :goto_7

    .line 3995
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mccmnc":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 3996
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 3997
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3999
    goto/16 :goto_7

    .line 4000
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4002
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4003
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4004
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 4005
    goto/16 :goto_7

    .line 3980
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 3981
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 3982
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3983
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3984
    goto/16 :goto_7

    .line 3985
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3988
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3989
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 3990
    goto/16 :goto_7

    .line 3965
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 3966
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 3967
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3968
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3969
    goto/16 :goto_7

    .line 3970
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3973
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3974
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onLteAccessStratumStateChanged(ILjava/util/ArrayList;)V

    .line 3975
    goto/16 :goto_7

    .line 3951
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 3952
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 3953
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3954
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3955
    goto/16 :goto_7

    .line 3956
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3959
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 3960
    goto/16 :goto_7

    .line 3937
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 3938
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 3939
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3941
    goto/16 :goto_7

    .line 3942
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3945
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 3946
    goto/16 :goto_7

    .line 3922
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 3923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 3924
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3926
    goto/16 :goto_7

    .line 3927
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3930
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3931
    .restart local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->volteLteConnectionStatus(ILjava/util/ArrayList;)V

    .line 3932
    goto/16 :goto_7

    .line 3907
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 3908
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 3909
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3911
    goto/16 :goto_7

    .line 3912
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3915
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3916
    .local v2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 3917
    goto/16 :goto_7

    .line 3892
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 3893
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 3894
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3896
    goto/16 :goto_7

    .line 3897
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3900
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3901
    .local v2, "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onPcoStatus(ILjava/util/ArrayList;)V

    .line 3902
    goto/16 :goto_7

    .line 3876
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 3877
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 3878
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3880
    goto/16 :goto_7

    .line 3881
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3884
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;-><init>()V

    .line 3885
    .local v2, "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3886
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;)V

    .line 3887
    goto/16 :goto_7

    .line 3861
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 3862
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 3863
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3865
    goto/16 :goto_7

    .line 3866
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3869
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3870
    .local v2, "apnClassType":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->mdChangedApnInd(II)V

    .line 3871
    goto/16 :goto_7

    .line 3847
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnClassType":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 3848
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 3849
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3851
    goto/16 :goto_7

    .line 3852
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3855
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->resetAttachApnInd(I)V

    .line 3856
    goto/16 :goto_7

    .line 3833
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 3834
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 3835
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3837
    goto/16 :goto_7

    .line 3838
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3841
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onStkMenuReset(I)V

    .line 3842
    goto/16 :goto_7

    .line 3819
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 3820
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 3821
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3823
    goto/16 :goto_7

    .line 3824
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3827
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->triggerOtaSP(I)V

    .line 3828
    goto/16 :goto_7

    .line 3804
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 3805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 3806
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3808
    goto/16 :goto_7

    .line 3809
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3812
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3813
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 3814
    goto/16 :goto_7

    .line 3789
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 3790
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 3791
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3793
    goto/16 :goto_7

    .line 3794
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3797
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3798
    .local v2, "cid":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 3799
    goto/16 :goto_7

    .line 3773
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 3774
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 3775
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3777
    goto/16 :goto_7

    .line 3778
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3781
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3782
    .local v2, "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3783
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3784
    goto/16 :goto_7

    .line 3757
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 3758
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 3759
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3760
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3761
    goto/16 :goto_7

    .line 3762
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3765
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3766
    .restart local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3767
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3768
    goto/16 :goto_7

    .line 3742
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 3743
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 3744
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3746
    goto/16 :goto_7

    .line 3747
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3750
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3751
    .local v2, "lteBand":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->responseLteNetworkInfo(II)V

    .line 3752
    goto/16 :goto_7

    .line 3726
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lteBand":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 3727
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 3728
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3730
    goto/16 :goto_7

    .line 3731
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3734
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 3735
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3736
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 3737
    goto/16 :goto_7

    .line 3711
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 3712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 3713
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3714
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3715
    goto/16 :goto_7

    .line 3716
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3719
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3720
    .local v2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 3721
    goto/16 :goto_7

    .line 3696
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 3697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 3698
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3700
    goto/16 :goto_7

    .line 3701
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3704
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3705
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 3706
    goto/16 :goto_7

    .line 3681
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 3682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 3683
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3685
    goto/16 :goto_7

    .line 3686
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3688
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3689
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3690
    .local v2, "allowed":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->dataAllowedNotification(II)V

    .line 3691
    goto/16 :goto_7

    .line 3666
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allowed":I
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 3667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 3668
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3670
    goto/16 :goto_7

    .line 3671
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3673
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3674
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3675
    .local v2, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 3676
    goto/16 :goto_7

    .line 3651
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 3652
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 3653
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3655
    goto/16 :goto_7

    .line 3656
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3659
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3660
    .local v2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 3661
    goto/16 :goto_7

    .line 3636
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 3637
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 3638
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3639
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3640
    goto/16 :goto_7

    .line 3641
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3644
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3645
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 3646
    goto/16 :goto_7

    .line 3621
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 3622
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 3623
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3624
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3625
    goto/16 :goto_7

    .line 3626
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3629
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3630
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3631
    goto/16 :goto_7

    .line 3606
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 3607
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 3608
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3610
    goto/16 :goto_7

    .line 3611
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3614
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3615
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3616
    goto/16 :goto_7

    .line 3591
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 3592
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 3593
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3595
    goto/16 :goto_7

    .line 3596
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3599
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3600
    .local v2, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 3601
    goto/16 :goto_7

    .line 3576
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "esnMeid":Ljava/lang/String;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 3577
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 3578
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3580
    goto/16 :goto_7

    .line 3581
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3584
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3585
    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 3586
    goto/16 :goto_7

    .line 3561
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 3562
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 3563
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3565
    goto/16 :goto_7

    .line 3566
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3569
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3570
    .local v2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 3571
    goto/16 :goto_7

    .line 3546
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 3547
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 3548
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3550
    goto/16 :goto_7

    .line 3551
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3554
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3555
    .local v2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 3556
    goto/16 :goto_7

    .line 3531
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 3532
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 3533
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3535
    goto/16 :goto_7

    .line 3536
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3539
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3540
    .local v2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 3541
    goto/16 :goto_7

    .line 3516
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 3517
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 3518
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3519
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3520
    goto/16 :goto_7

    .line 3521
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3523
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3524
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3525
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 3526
    goto/16 :goto_7

    .line 3502
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 3503
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 3504
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3506
    goto/16 :goto_7

    .line 3507
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3509
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3510
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->smsReadyInd(I)V

    .line 3511
    goto/16 :goto_7

    .line 3488
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 3489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 3490
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3492
    goto/16 :goto_7

    .line 3493
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3496
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->meSmsStorageFullInd(I)V

    .line 3497
    goto/16 :goto_7

    .line 3472
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 3473
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 3474
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3476
    goto/16 :goto_7

    .line 3477
    :cond_64
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3480
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;-><init>()V

    .line 3481
    .local v2, "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3482
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/radio/V3_0/EtwsNotification;)V

    .line 3483
    goto/16 :goto_7

    .line 3456
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 3457
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 3458
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3459
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3460
    goto/16 :goto_7

    .line 3461
    :cond_66
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3464
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;-><init>()V

    .line 3465
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3466
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;)V

    .line 3467
    goto/16 :goto_7

    .line 3442
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 3443
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 3444
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3445
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3446
    goto/16 :goto_7

    .line 3447
    :cond_68
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3450
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onCardDetectedInd(I)V

    .line 3451
    goto/16 :goto_7

    .line 3428
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 3429
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 3430
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3431
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3432
    goto/16 :goto_7

    .line 3433
    :cond_6a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3436
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSimMeLockEvent(I)V

    .line 3437
    goto/16 :goto_7

    .line 3414
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 3415
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 3416
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3418
    goto/16 :goto_7

    .line 3419
    :cond_6c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3422
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSimCommonSlotNoChanged(I)V

    .line 3423
    goto/16 :goto_7

    .line 3400
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 3401
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 3402
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3403
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3404
    goto/16 :goto_7

    .line 3405
    :cond_6e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3408
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSimTrayPlugIn(I)V

    .line 3409
    goto/16 :goto_7

    .line 3385
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 3386
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 3387
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3388
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3389
    goto/16 :goto_7

    .line 3390
    :cond_70
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3393
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3394
    .local v2, "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSimRecovery(II)V

    .line 3395
    goto/16 :goto_7

    .line 3370
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 3371
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 3372
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3374
    goto/16 :goto_7

    .line 3375
    :cond_72
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3378
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3379
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSimMissing(II)V

    .line 3380
    goto/16 :goto_7

    .line 3356
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 3357
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 3358
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3359
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3360
    goto/16 :goto_7

    .line 3361
    :cond_74
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3364
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSimPlugOut(I)V

    .line 3365
    goto/16 :goto_7

    .line 3342
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 3343
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 3344
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3346
    goto/16 :goto_7

    .line 3347
    :cond_76
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3349
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3350
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSimPlugIn(I)V

    .line 3351
    goto/16 :goto_7

    .line 3328
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 3329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 3330
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3332
    goto/16 :goto_7

    .line 3333
    :cond_78
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3336
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onImsiRefreshDone(I)V

    .line 3337
    goto/16 :goto_7

    .line 3314
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 3315
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 3316
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3317
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3318
    goto/16 :goto_7

    .line 3319
    :cond_7a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3322
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onImeiLock(I)V

    .line 3323
    goto/16 :goto_7

    .line 3299
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 3300
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 3301
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3303
    goto/16 :goto_7

    .line 3304
    :cond_7c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3307
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3308
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onVirtualSimOff(II)V

    .line 3309
    goto/16 :goto_7

    .line 3284
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 3285
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 3286
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3287
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3288
    goto/16 :goto_7

    .line 3289
    :cond_7e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3291
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3292
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3293
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onVirtualSimOn(II)V

    .line 3294
    goto/16 :goto_7

    .line 3268
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 3269
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 3270
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3271
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3272
    goto/16 :goto_7

    .line 3273
    :cond_80
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3276
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3277
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3278
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 3279
    goto/16 :goto_7

    .line 3254
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 3255
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 3256
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3258
    goto/16 :goto_7

    .line 3259
    :cond_82
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3262
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaCallAccepted(I)V

    .line 3263
    goto/16 :goto_7

    .line 3239
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 3240
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 3241
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3242
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3243
    goto/16 :goto_7

    .line 3244
    :cond_84
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3247
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3248
    .local v2, "info":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3249
    goto/16 :goto_7

    .line 3223
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":I
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 3224
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 3225
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3226
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3227
    goto/16 :goto_7

    .line 3228
    :cond_86
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3231
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;-><init>()V

    .line 3232
    .local v2, "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3233
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/radio/V3_0/CrssNotification;)V

    .line 3234
    goto/16 :goto_7

    .line 3207
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 3208
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 3209
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3210
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3211
    goto/16 :goto_7

    .line 3212
    :cond_88
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3214
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3215
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;-><init>()V

    .line 3216
    .local v2, "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3217
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/radio/V3_0/CipherNotification;)V

    .line 3218
    goto/16 :goto_7

    .line 3191
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 3192
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 3193
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3194
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3195
    goto/16 :goto_7

    .line 3196
    :cond_8a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3199
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 3200
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3201
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 3202
    goto/16 :goto_7

    .line 3175
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 3176
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 3177
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3179
    goto/16 :goto_7

    .line 3180
    :cond_8c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3183
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;-><init>()V

    .line 3184
    .local v2, "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3185
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;)V

    .line 3186
    goto/16 :goto_7

    .line 3160
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 3161
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 3162
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3164
    goto/16 :goto_7

    .line 3165
    :cond_8e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3168
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3169
    .local v2, "isPhbReady":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->phbReadyNotification(II)V

    .line 3170
    goto/16 :goto_7

    .line 3145
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isPhbReady":I
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 3146
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 3147
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3149
    goto/16 :goto_7

    .line 3150
    :cond_90
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3153
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3154
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 3155
    goto/16 :goto_7

    .line 3130
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 3131
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 3132
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3133
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3134
    goto/16 :goto_7

    .line 3135
    :cond_92
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3138
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3139
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 3140
    goto/16 :goto_7

    .line 3114
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/lang/String;
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 3115
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 3116
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3118
    goto/16 :goto_7

    .line 3119
    :cond_94
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3122
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 3123
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3124
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 3125
    goto/16 :goto_7

    .line 3099
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 3100
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 3101
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3103
    goto/16 :goto_7

    .line 3104
    :cond_96
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3107
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3108
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 3109
    goto/16 :goto_7

    .line 3083
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 3084
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 3085
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3087
    goto/16 :goto_7

    .line 3088
    :cond_98
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3091
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 3092
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3093
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 3094
    goto/16 :goto_7

    .line 3068
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 3069
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 3070
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3071
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3072
    goto/16 :goto_7

    .line 3073
    :cond_9a
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3076
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3077
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 3078
    goto/16 :goto_7

    .line 3052
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 3053
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 3054
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3056
    goto/16 :goto_7

    .line 3057
    :cond_9c
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3060
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 3061
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3062
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 3063
    goto/16 :goto_7

    .line 3036
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 3037
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 3038
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3040
    goto/16 :goto_7

    .line 3041
    :cond_9e
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3044
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 3045
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3046
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 3047
    goto/16 :goto_7

    .line 3020
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 3021
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 3022
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3024
    goto/16 :goto_7

    .line 3025
    :cond_a0
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3028
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 3029
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3030
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 3031
    goto/16 :goto_7

    .line 3006
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 3007
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 3008
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3010
    goto/16 :goto_7

    .line 3011
    :cond_a2
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3014
    .local v0, "info":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 3015
    goto/16 :goto_7

    .line 2991
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 2992
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 2993
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2994
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2995
    goto/16 :goto_7

    .line 2996
    :cond_a4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2999
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3000
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 3001
    goto/16 :goto_7

    .line 2975
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 2976
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 2977
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2979
    goto/16 :goto_7

    .line 2980
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2983
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2984
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2985
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2986
    goto/16 :goto_7

    .line 2959
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 2960
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 2961
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2962
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2963
    goto/16 :goto_7

    .line 2964
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2967
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2968
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2969
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2970
    goto/16 :goto_7

    .line 2944
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 2945
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 2946
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2948
    goto/16 :goto_7

    .line 2949
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2952
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2953
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2954
    goto/16 :goto_7

    .line 2928
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 2929
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 2930
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2932
    goto/16 :goto_7

    .line 2933
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2935
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2936
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2937
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2938
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2939
    goto/16 :goto_7

    .line 2912
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 2913
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 2914
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2916
    goto/16 :goto_7

    .line 2917
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2920
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2921
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2922
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2923
    goto/16 :goto_7

    .line 2897
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 2898
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 2899
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2901
    goto/16 :goto_7

    .line 2902
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2905
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2906
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2907
    goto/16 :goto_7

    .line 2882
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 2883
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 2884
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2886
    goto/16 :goto_7

    .line 2887
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2890
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2891
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2892
    goto/16 :goto_7

    .line 2867
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 2868
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 2869
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2871
    goto/16 :goto_7

    .line 2872
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2875
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2876
    .local v2, "activate":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2877
    goto/16 :goto_7

    .line 2853
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 2854
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 2855
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2856
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2857
    goto/16 :goto_7

    .line 2858
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2861
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2862
    goto/16 :goto_7

    .line 2838
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 2839
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 2840
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2842
    goto/16 :goto_7

    .line 2843
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2846
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2847
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2848
    goto/16 :goto_7

    .line 2823
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 2824
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 2825
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2826
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2827
    goto/16 :goto_7

    .line 2828
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2830
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2831
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2832
    .local v2, "rat":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2833
    goto/16 :goto_7

    .line 2809
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 2810
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 2811
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2813
    goto/16 :goto_7

    .line 2814
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2817
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->rilConnected(I)V

    .line 2818
    goto/16 :goto_7

    .line 2795
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 2796
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 2797
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2799
    goto/16 :goto_7

    .line 2800
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2803
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2804
    goto/16 :goto_7

    .line 2780
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 2781
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 2782
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2783
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2784
    goto/16 :goto_7

    .line 2785
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2788
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2789
    .local v2, "version":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2790
    goto/16 :goto_7

    .line 2765
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":I
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 2766
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 2767
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2769
    goto/16 :goto_7

    .line 2770
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2773
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2774
    .local v2, "cdmaSource":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2775
    goto/16 :goto_7

    .line 2751
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSource":I
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 2752
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 2753
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2755
    goto/16 :goto_7

    .line 2756
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2759
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 2760
    goto/16 :goto_7

    .line 2736
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 2737
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 2738
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2739
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2740
    goto/16 :goto_7

    .line 2741
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2744
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2745
    .local v2, "start":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2746
    goto/16 :goto_7

    .line 2720
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "start":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 2721
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 2722
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2724
    goto/16 :goto_7

    .line 2725
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2728
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2729
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2730
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2731
    goto/16 :goto_7

    .line 2705
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 2706
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 2707
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2708
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2709
    goto/16 :goto_7

    .line 2710
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2712
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2713
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2714
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2715
    goto/16 :goto_7

    .line 2689
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 2690
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 2691
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2692
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2693
    goto/16 :goto_7

    .line 2694
    :cond_cc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2697
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2698
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2699
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2700
    goto/16 :goto_7

    .line 2675
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 2676
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 2677
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2679
    goto/16 :goto_7

    .line 2680
    :cond_ce
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2682
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2683
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2684
    goto/16 :goto_7

    .line 2660
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 2661
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 2662
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2664
    goto/16 :goto_7

    .line 2665
    :cond_d0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2668
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2669
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2670
    goto/16 :goto_7

    .line 2646
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 2647
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 2648
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2649
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2650
    goto/16 :goto_7

    .line 2651
    :cond_d2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2654
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2655
    goto/16 :goto_7

    .line 2631
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 2632
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 2633
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2634
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2635
    goto/16 :goto_7

    .line 2636
    :cond_d4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2639
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2640
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2641
    goto/16 :goto_7

    .line 2615
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 2616
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 2617
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2619
    goto/16 :goto_7

    .line 2620
    :cond_d6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2623
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2624
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2625
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2626
    goto/16 :goto_7

    .line 2601
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 2602
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 2603
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2605
    goto/16 :goto_7

    .line 2606
    :cond_d8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2609
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 2610
    goto/16 :goto_7

    .line 2584
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 2585
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 2586
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2588
    goto/16 :goto_7

    .line 2589
    :cond_da
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2592
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2593
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2594
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2595
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2596
    goto/16 :goto_7

    .line 2568
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    .line 2569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_db
    if-eq v1, v2, :cond_dc

    .line 2570
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2572
    goto/16 :goto_7

    .line 2573
    :cond_dc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2576
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2577
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2578
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2579
    goto/16 :goto_7

    .line 2554
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    .line 2555
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dd
    if-eq v1, v2, :cond_de

    .line 2556
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2557
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2558
    goto/16 :goto_7

    .line 2559
    :cond_de
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2562
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2563
    goto/16 :goto_7

    .line 2539
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 2540
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 2541
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2543
    goto/16 :goto_7

    .line 2544
    :cond_e0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2547
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2548
    .local v2, "timeout":J
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2549
    goto/16 :goto_7

    .line 2524
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timeout":J
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 2525
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 2526
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2528
    goto/16 :goto_7

    .line 2529
    :cond_e2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2532
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2533
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2534
    goto/16 :goto_7

    .line 2509
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 2510
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 2511
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2513
    goto/16 :goto_7

    .line 2514
    :cond_e4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2517
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2518
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2519
    goto/16 :goto_7

    .line 2495
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 2496
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 2497
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2499
    goto/16 :goto_7

    .line 2500
    :cond_e6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2503
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2504
    goto/16 :goto_7

    .line 2479
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 2480
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 2481
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2483
    goto/16 :goto_7

    .line 2484
    :cond_e8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2487
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2488
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2489
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2490
    goto/16 :goto_7

    .line 2464
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 2465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 2466
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2468
    goto/16 :goto_7

    .line 2469
    :cond_ea
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2472
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2473
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2474
    goto/16 :goto_7

    .line 2448
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 2449
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 2450
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2451
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2452
    goto/16 :goto_7

    .line 2453
    :cond_ec
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2456
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2457
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2458
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2459
    goto/16 :goto_7

    .line 2432
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 2433
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 2434
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2436
    goto/16 :goto_7

    .line 2437
    :cond_ee
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2440
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2441
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2442
    .local v3, "receivedTime":J
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2443
    goto/16 :goto_7

    .line 2416
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 2417
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 2418
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2420
    goto/16 :goto_7

    .line 2421
    :cond_f0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2424
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2425
    .local v2, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2426
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2427
    goto/16 :goto_7

    .line 2401
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 2402
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 2403
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2404
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2405
    goto/16 :goto_7

    .line 2406
    :cond_f2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2409
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2410
    .local v2, "recordNumber":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2411
    goto/16 :goto_7

    .line 2386
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "recordNumber":I
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 2387
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 2388
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2389
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2390
    goto/16 :goto_7

    .line 2391
    :cond_f4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2394
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2395
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2396
    goto/16 :goto_7

    .line 2371
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 2372
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 2373
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2374
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2375
    goto/16 :goto_7

    .line 2376
    :cond_f6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2379
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2380
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2381
    goto :goto_7

    .line 2357
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    .line 2358
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 2359
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2360
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2361
    goto :goto_7

    .line 2362
    :cond_f8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2365
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 2366
    goto :goto_7

    .line 2343
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    .line 2344
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 2345
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2346
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2347
    goto :goto_7

    .line 2348
    :cond_fa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2351
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->callStateChanged(I)V

    .line 2352
    goto :goto_7

    .line 2328
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 2329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 2330
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2332
    goto :goto_7

    .line 2333
    :cond_fc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2336
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2337
    .local v2, "radioState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 2338
    nop

    .line 4240
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

    .line 2281
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2307
    const-string v0, "vendor.mediatek.hardware.radio@3.1::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2308
    return-object p0

    .line 2310
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

    .line 2314
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2315
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2301
    const/4 v0, 0x1

    return v0
.end method
