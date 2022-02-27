.class public abstract Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2254
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2257
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2309
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2310
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2311
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2312
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2313
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

    .line 2280
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
        0x3bt
        -0x73t
        -0x74t
        -0x2ct
        0x35t
        -0x5ct
        0x45t
        -0x6et
        -0x1at
        0x1t
        0x45t
        -0x4ft
        -0x5et
        0x5et
        0x22t
        -0x80t
        0x21t
        -0x69t
        -0x57t
        -0x79t
        0x32t
        -0x5et
        0x71t
        -0x23t
        0x4dt
        -0x74t
        -0x15t
        -0x17t
        0x2dt
        0x6at
        0x24t
        0x19t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    .line 2262
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.1::IRadioIndication"

    const-string v3, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    const-string v4, "android.hardware.radio@1.2::IRadioIndication"

    const-string v5, "android.hardware.radio@1.1::IRadioIndication"

    const-string v6, "android.hardware.radio@1.0::IRadioIndication"

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

    .line 2274
    const-string v0, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2298
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2318
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2319
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

    .line 2347
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 4268
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 4269
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_ff

    .line 4270
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4271
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4272
    goto/16 :goto_7

    .line 4255
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 4256
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 4257
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4258
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4259
    goto/16 :goto_7

    .line 4260
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4262
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 4263
    goto/16 :goto_7

    .line 4239
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 4240
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 4241
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4242
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4243
    goto/16 :goto_7

    .line 4244
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4246
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4247
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4248
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4249
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4250
    goto/16 :goto_7

    .line 4224
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 4225
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 4226
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4227
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4228
    goto/16 :goto_7

    .line 4229
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4231
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->ping()V

    .line 4232
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4233
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4234
    goto/16 :goto_7

    .line 4214
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 4215
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_ff

    .line 4216
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4217
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4218
    goto/16 :goto_7

    .line 4201
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 4202
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 4203
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4204
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4205
    goto/16 :goto_7

    .line 4206
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 4209
    goto/16 :goto_7

    .line 4168
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 4169
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 4170
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4172
    goto/16 :goto_7

    .line 4173
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4175
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4176
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4178
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4180
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4181
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4182
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4183
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 4184
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 4186
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 4187
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4188
    nop

    .line 4184
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4191
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4193
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4195
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4196
    goto/16 :goto_7

    .line 4152
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 4153
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 4154
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4156
    goto/16 :goto_7

    .line 4157
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4159
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4160
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4161
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4163
    goto/16 :goto_7

    .line 4138
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 4139
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 4140
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4142
    goto/16 :goto_7

    .line 4143
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4146
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4147
    goto/16 :goto_7

    .line 4122
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 4123
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 4124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4126
    goto/16 :goto_7

    .line 4127
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4130
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4131
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4133
    goto/16 :goto_7

    .line 4107
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 4108
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 4109
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4111
    goto/16 :goto_7

    .line 4112
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4115
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4116
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimPowerChangedInd(ILjava/util/ArrayList;)V

    .line 4117
    goto/16 :goto_7

    .line 4092
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 4093
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 4094
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4095
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4096
    goto/16 :goto_7

    .line 4097
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4100
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4101
    .restart local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 4102
    goto/16 :goto_7

    .line 4077
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 4078
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 4079
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4081
    goto/16 :goto_7

    .line 4082
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4084
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4085
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4086
    .local v2, "dsbpState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->dsbpStateChanged(II)V

    .line 4087
    goto/16 :goto_7

    .line 4062
    .end local v0    # "indicationType":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dsbpState":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 4063
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 4064
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4065
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4066
    goto/16 :goto_7

    .line 4067
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4070
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4071
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 4072
    goto/16 :goto_7

    .line 4047
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 4048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 4049
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4051
    goto/16 :goto_7

    .line 4052
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4055
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4056
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 4057
    goto/16 :goto_7

    .line 4032
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 4033
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 4034
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4035
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4036
    goto/16 :goto_7

    .line 4037
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4040
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4041
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 4042
    goto/16 :goto_7

    .line 4017
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mccmnc":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 4018
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 4019
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4021
    goto/16 :goto_7

    .line 4022
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4025
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4026
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 4027
    goto/16 :goto_7

    .line 4002
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 4003
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 4004
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4006
    goto/16 :goto_7

    .line 4007
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4010
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4011
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 4012
    goto/16 :goto_7

    .line 3987
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 3988
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 3989
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3991
    goto/16 :goto_7

    .line 3992
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3995
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3996
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onLteAccessStratumStateChanged(ILjava/util/ArrayList;)V

    .line 3997
    goto/16 :goto_7

    .line 3973
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 3974
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 3975
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3977
    goto/16 :goto_7

    .line 3978
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3981
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 3982
    goto/16 :goto_7

    .line 3959
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 3960
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 3961
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3962
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3963
    goto/16 :goto_7

    .line 3964
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3966
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3967
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 3968
    goto/16 :goto_7

    .line 3944
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 3945
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 3946
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3948
    goto/16 :goto_7

    .line 3949
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3952
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3953
    .restart local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->volteLteConnectionStatus(ILjava/util/ArrayList;)V

    .line 3954
    goto/16 :goto_7

    .line 3929
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 3930
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 3931
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3933
    goto/16 :goto_7

    .line 3934
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3937
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3938
    .local v2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 3939
    goto/16 :goto_7

    .line 3914
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 3915
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 3916
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3917
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3918
    goto/16 :goto_7

    .line 3919
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3922
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3923
    .local v2, "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onPcoStatus(ILjava/util/ArrayList;)V

    .line 3924
    goto/16 :goto_7

    .line 3898
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 3899
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 3900
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3901
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3902
    goto/16 :goto_7

    .line 3903
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3906
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;-><init>()V

    .line 3907
    .local v2, "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3908
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;)V

    .line 3909
    goto/16 :goto_7

    .line 3883
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 3884
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 3885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3887
    goto/16 :goto_7

    .line 3888
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3891
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3892
    .local v2, "apnClassType":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->mdChangedApnInd(II)V

    .line 3893
    goto/16 :goto_7

    .line 3869
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnClassType":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 3870
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 3871
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3873
    goto/16 :goto_7

    .line 3874
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3877
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->resetAttachApnInd(I)V

    .line 3878
    goto/16 :goto_7

    .line 3855
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 3856
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 3857
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3859
    goto/16 :goto_7

    .line 3860
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3863
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onStkMenuReset(I)V

    .line 3864
    goto/16 :goto_7

    .line 3841
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 3842
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 3843
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3844
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3845
    goto/16 :goto_7

    .line 3846
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3848
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3849
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->triggerOtaSP(I)V

    .line 3850
    goto/16 :goto_7

    .line 3826
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 3827
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 3828
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3829
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3830
    goto/16 :goto_7

    .line 3831
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3834
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3835
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 3836
    goto/16 :goto_7

    .line 3811
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 3812
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 3813
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3815
    goto/16 :goto_7

    .line 3816
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3819
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3820
    .local v2, "cid":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 3821
    goto/16 :goto_7

    .line 3795
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 3796
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 3797
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3799
    goto/16 :goto_7

    .line 3800
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3803
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3804
    .local v2, "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3805
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3806
    goto/16 :goto_7

    .line 3779
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 3780
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 3781
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3783
    goto/16 :goto_7

    .line 3784
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3787
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3788
    .restart local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3789
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3790
    goto/16 :goto_7

    .line 3764
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 3765
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 3766
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3768
    goto/16 :goto_7

    .line 3769
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3772
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3773
    .local v2, "lteBand":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->responseLteNetworkInfo(II)V

    .line 3774
    goto/16 :goto_7

    .line 3748
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lteBand":I
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 3749
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 3750
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3752
    goto/16 :goto_7

    .line 3753
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3756
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 3757
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3758
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 3759
    goto/16 :goto_7

    .line 3733
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 3734
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 3735
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3737
    goto/16 :goto_7

    .line 3738
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3740
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3741
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3742
    .local v2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 3743
    goto/16 :goto_7

    .line 3718
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 3719
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 3720
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3722
    goto/16 :goto_7

    .line 3723
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3726
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3727
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 3728
    goto/16 :goto_7

    .line 3703
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 3704
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 3705
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3707
    goto/16 :goto_7

    .line 3708
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3711
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3712
    .local v2, "allowed":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->dataAllowedNotification(II)V

    .line 3713
    goto/16 :goto_7

    .line 3688
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allowed":I
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 3689
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 3690
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3692
    goto/16 :goto_7

    .line 3693
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3696
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3697
    .local v2, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 3698
    goto/16 :goto_7

    .line 3673
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 3674
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 3675
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3677
    goto/16 :goto_7

    .line 3678
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3681
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3682
    .local v2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 3683
    goto/16 :goto_7

    .line 3658
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 3659
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 3660
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3662
    goto/16 :goto_7

    .line 3663
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3666
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3667
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 3668
    goto/16 :goto_7

    .line 3643
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 3644
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 3645
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3646
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3647
    goto/16 :goto_7

    .line 3648
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3650
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3651
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3652
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3653
    goto/16 :goto_7

    .line 3628
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 3629
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 3630
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3631
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3632
    goto/16 :goto_7

    .line 3633
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3636
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3637
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3638
    goto/16 :goto_7

    .line 3613
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 3614
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 3615
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3617
    goto/16 :goto_7

    .line 3618
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3620
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3621
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3622
    .local v2, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 3623
    goto/16 :goto_7

    .line 3598
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "esnMeid":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 3599
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 3600
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3601
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3602
    goto/16 :goto_7

    .line 3603
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3605
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3606
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3607
    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 3608
    goto/16 :goto_7

    .line 3583
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 3584
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 3585
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3587
    goto/16 :goto_7

    .line 3588
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3591
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3592
    .local v2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 3593
    goto/16 :goto_7

    .line 3568
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 3569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 3570
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3572
    goto/16 :goto_7

    .line 3573
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3576
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3577
    .local v2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 3578
    goto/16 :goto_7

    .line 3553
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 3554
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 3555
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3557
    goto/16 :goto_7

    .line 3558
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3561
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3562
    .local v2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 3563
    goto/16 :goto_7

    .line 3538
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 3539
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 3540
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3542
    goto/16 :goto_7

    .line 3543
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3546
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3547
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 3548
    goto/16 :goto_7

    .line 3524
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 3525
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 3526
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3528
    goto/16 :goto_7

    .line 3529
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3532
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->smsReadyInd(I)V

    .line 3533
    goto/16 :goto_7

    .line 3510
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 3511
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 3512
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3513
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3514
    goto/16 :goto_7

    .line 3515
    :cond_64
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3518
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->meSmsStorageFullInd(I)V

    .line 3519
    goto/16 :goto_7

    .line 3494
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 3495
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 3496
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3498
    goto/16 :goto_7

    .line 3499
    :cond_66
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3502
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;-><init>()V

    .line 3503
    .local v2, "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3504
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/radio/V3_0/EtwsNotification;)V

    .line 3505
    goto/16 :goto_7

    .line 3478
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 3479
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 3480
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3481
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3482
    goto/16 :goto_7

    .line 3483
    :cond_68
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3486
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;-><init>()V

    .line 3487
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3488
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;)V

    .line 3489
    goto/16 :goto_7

    .line 3464
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 3465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 3466
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3468
    goto/16 :goto_7

    .line 3469
    :cond_6a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3472
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onCardDetectedInd(I)V

    .line 3473
    goto/16 :goto_7

    .line 3450
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 3451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 3452
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3454
    goto/16 :goto_7

    .line 3455
    :cond_6c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3458
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimMeLockEvent(I)V

    .line 3459
    goto/16 :goto_7

    .line 3436
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 3437
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 3438
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3439
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3440
    goto/16 :goto_7

    .line 3441
    :cond_6e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3443
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3444
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimCommonSlotNoChanged(I)V

    .line 3445
    goto/16 :goto_7

    .line 3422
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 3423
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 3424
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3425
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3426
    goto/16 :goto_7

    .line 3427
    :cond_70
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3430
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimTrayPlugIn(I)V

    .line 3431
    goto/16 :goto_7

    .line 3407
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 3408
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 3409
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3410
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3411
    goto/16 :goto_7

    .line 3412
    :cond_72
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3415
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3416
    .local v2, "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimRecovery(II)V

    .line 3417
    goto/16 :goto_7

    .line 3392
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 3393
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 3394
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3395
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3396
    goto/16 :goto_7

    .line 3397
    :cond_74
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3400
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3401
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimMissing(II)V

    .line 3402
    goto/16 :goto_7

    .line 3378
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 3379
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 3380
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3381
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3382
    goto/16 :goto_7

    .line 3383
    :cond_76
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3386
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimPlugOut(I)V

    .line 3387
    goto/16 :goto_7

    .line 3364
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 3365
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 3366
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3367
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3368
    goto/16 :goto_7

    .line 3369
    :cond_78
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3372
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSimPlugIn(I)V

    .line 3373
    goto/16 :goto_7

    .line 3350
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 3351
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 3352
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3354
    goto/16 :goto_7

    .line 3355
    :cond_7a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3358
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onImsiRefreshDone(I)V

    .line 3359
    goto/16 :goto_7

    .line 3336
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 3337
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 3338
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3339
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3340
    goto/16 :goto_7

    .line 3341
    :cond_7c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3344
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onImeiLock(I)V

    .line 3345
    goto/16 :goto_7

    .line 3321
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 3322
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 3323
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3324
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3325
    goto/16 :goto_7

    .line 3326
    :cond_7e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3329
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3330
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onVirtualSimOff(II)V

    .line 3331
    goto/16 :goto_7

    .line 3306
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 3307
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 3308
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3310
    goto/16 :goto_7

    .line 3311
    :cond_80
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3314
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3315
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onVirtualSimOn(II)V

    .line 3316
    goto/16 :goto_7

    .line 3290
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 3291
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 3292
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3294
    goto/16 :goto_7

    .line 3295
    :cond_82
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3298
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3299
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3300
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 3301
    goto/16 :goto_7

    .line 3276
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 3277
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 3278
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3280
    goto/16 :goto_7

    .line 3281
    :cond_84
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3284
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaCallAccepted(I)V

    .line 3285
    goto/16 :goto_7

    .line 3261
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 3262
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 3263
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3264
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3265
    goto/16 :goto_7

    .line 3266
    :cond_86
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3269
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3270
    .local v2, "info":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3271
    goto/16 :goto_7

    .line 3245
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":I
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 3246
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 3247
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3248
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3249
    goto/16 :goto_7

    .line 3250
    :cond_88
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3253
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;-><init>()V

    .line 3254
    .local v2, "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3255
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/radio/V3_0/CrssNotification;)V

    .line 3256
    goto/16 :goto_7

    .line 3229
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 3230
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 3231
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3232
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3233
    goto/16 :goto_7

    .line 3234
    :cond_8a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3237
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;-><init>()V

    .line 3238
    .local v2, "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3239
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/radio/V3_0/CipherNotification;)V

    .line 3240
    goto/16 :goto_7

    .line 3213
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 3214
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 3215
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3216
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3217
    goto/16 :goto_7

    .line 3218
    :cond_8c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3221
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 3222
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3223
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 3224
    goto/16 :goto_7

    .line 3197
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 3198
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 3199
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3201
    goto/16 :goto_7

    .line 3202
    :cond_8e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3205
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;-><init>()V

    .line 3206
    .local v2, "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3207
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;)V

    .line 3208
    goto/16 :goto_7

    .line 3182
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 3183
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 3184
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3185
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3186
    goto/16 :goto_7

    .line 3187
    :cond_90
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3190
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3191
    .local v2, "isPhbReady":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->phbReadyNotification(II)V

    .line 3192
    goto/16 :goto_7

    .line 3167
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isPhbReady":I
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 3168
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 3169
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3171
    goto/16 :goto_7

    .line 3172
    :cond_92
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3175
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3176
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 3177
    goto/16 :goto_7

    .line 3152
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 3153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 3154
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3156
    goto/16 :goto_7

    .line 3157
    :cond_94
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3160
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3161
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 3162
    goto/16 :goto_7

    .line 3136
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/lang/String;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 3137
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 3138
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3139
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3140
    goto/16 :goto_7

    .line 3141
    :cond_96
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3144
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 3145
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3146
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 3147
    goto/16 :goto_7

    .line 3121
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 3122
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 3123
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3124
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3125
    goto/16 :goto_7

    .line 3126
    :cond_98
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3129
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3130
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 3131
    goto/16 :goto_7

    .line 3105
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 3106
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 3107
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3108
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3109
    goto/16 :goto_7

    .line 3110
    :cond_9a
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3113
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 3114
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3115
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 3116
    goto/16 :goto_7

    .line 3090
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 3091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 3092
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3094
    goto/16 :goto_7

    .line 3095
    :cond_9c
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3098
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3099
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 3100
    goto/16 :goto_7

    .line 3074
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 3075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 3076
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3077
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3078
    goto/16 :goto_7

    .line 3079
    :cond_9e
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3082
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 3083
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3084
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 3085
    goto/16 :goto_7

    .line 3058
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 3059
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 3060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3062
    goto/16 :goto_7

    .line 3063
    :cond_a0
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3066
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 3067
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3068
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 3069
    goto/16 :goto_7

    .line 3042
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 3043
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 3044
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3046
    goto/16 :goto_7

    .line 3047
    :cond_a2
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3050
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 3051
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3052
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 3053
    goto/16 :goto_7

    .line 3028
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 3029
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 3030
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3031
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3032
    goto/16 :goto_7

    .line 3033
    :cond_a4
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3036
    .local v0, "info":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 3037
    goto/16 :goto_7

    .line 3013
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 3014
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 3015
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3017
    goto/16 :goto_7

    .line 3018
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3021
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3022
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 3023
    goto/16 :goto_7

    .line 2997
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 2998
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 2999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3001
    goto/16 :goto_7

    .line 3002
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3005
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 3006
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3007
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 3008
    goto/16 :goto_7

    .line 2981
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 2982
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 2983
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2985
    goto/16 :goto_7

    .line 2986
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2989
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2990
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2991
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2992
    goto/16 :goto_7

    .line 2966
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 2967
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 2968
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2970
    goto/16 :goto_7

    .line 2971
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2974
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2975
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2976
    goto/16 :goto_7

    .line 2950
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 2951
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 2952
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2954
    goto/16 :goto_7

    .line 2955
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2958
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2959
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2960
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2961
    goto/16 :goto_7

    .line 2934
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 2935
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 2936
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2937
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2938
    goto/16 :goto_7

    .line 2939
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2942
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2943
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2944
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2945
    goto/16 :goto_7

    .line 2919
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 2920
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 2921
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2922
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2923
    goto/16 :goto_7

    .line 2924
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2927
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2928
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2929
    goto/16 :goto_7

    .line 2904
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 2905
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 2906
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2908
    goto/16 :goto_7

    .line 2909
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2912
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2913
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2914
    goto/16 :goto_7

    .line 2889
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 2890
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 2891
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2893
    goto/16 :goto_7

    .line 2894
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2897
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2898
    .local v2, "activate":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2899
    goto/16 :goto_7

    .line 2875
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 2876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 2877
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2878
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2879
    goto/16 :goto_7

    .line 2880
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2883
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2884
    goto/16 :goto_7

    .line 2860
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 2861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 2862
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2864
    goto/16 :goto_7

    .line 2865
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2868
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2869
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2870
    goto/16 :goto_7

    .line 2845
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 2846
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 2847
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2849
    goto/16 :goto_7

    .line 2850
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2853
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2854
    .local v2, "rat":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2855
    goto/16 :goto_7

    .line 2831
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 2832
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 2833
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2834
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2835
    goto/16 :goto_7

    .line 2836
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2839
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->rilConnected(I)V

    .line 2840
    goto/16 :goto_7

    .line 2817
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 2818
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 2819
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2821
    goto/16 :goto_7

    .line 2822
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2825
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2826
    goto/16 :goto_7

    .line 2802
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 2803
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 2804
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2806
    goto/16 :goto_7

    .line 2807
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2810
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2811
    .local v2, "version":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2812
    goto/16 :goto_7

    .line 2787
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":I
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 2788
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 2789
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2791
    goto/16 :goto_7

    .line 2792
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2795
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2796
    .local v2, "cdmaSource":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2797
    goto/16 :goto_7

    .line 2773
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSource":I
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 2774
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 2775
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2777
    goto/16 :goto_7

    .line 2778
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2781
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 2782
    goto/16 :goto_7

    .line 2758
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 2759
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 2760
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2762
    goto/16 :goto_7

    .line 2763
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2766
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2767
    .local v2, "start":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2768
    goto/16 :goto_7

    .line 2742
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "start":Z
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 2743
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 2744
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2746
    goto/16 :goto_7

    .line 2747
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2750
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2751
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2752
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2753
    goto/16 :goto_7

    .line 2727
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 2728
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 2729
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2730
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2731
    goto/16 :goto_7

    .line 2732
    :cond_cc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2735
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2736
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2737
    goto/16 :goto_7

    .line 2711
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 2712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 2713
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2714
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2715
    goto/16 :goto_7

    .line 2716
    :cond_ce
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2719
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2720
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2721
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2722
    goto/16 :goto_7

    .line 2697
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 2698
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 2699
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2701
    goto/16 :goto_7

    .line 2702
    :cond_d0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2705
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2706
    goto/16 :goto_7

    .line 2682
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 2683
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 2684
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2686
    goto/16 :goto_7

    .line 2687
    :cond_d2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2690
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2691
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2692
    goto/16 :goto_7

    .line 2668
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 2669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 2670
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2672
    goto/16 :goto_7

    .line 2673
    :cond_d4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2676
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2677
    goto/16 :goto_7

    .line 2653
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 2654
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 2655
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2657
    goto/16 :goto_7

    .line 2658
    :cond_d6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2661
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2662
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2663
    goto/16 :goto_7

    .line 2637
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 2638
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 2639
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2640
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2641
    goto/16 :goto_7

    .line 2642
    :cond_d8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2645
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2646
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2647
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2648
    goto/16 :goto_7

    .line 2623
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 2624
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 2625
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2626
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2627
    goto/16 :goto_7

    .line 2628
    :cond_da
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2631
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 2632
    goto/16 :goto_7

    .line 2606
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    .line 2607
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_db
    if-eq v1, v2, :cond_dc

    .line 2608
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2610
    goto/16 :goto_7

    .line 2611
    :cond_dc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2614
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2615
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2616
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2617
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2618
    goto/16 :goto_7

    .line 2590
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    .line 2591
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dd
    if-eq v1, v2, :cond_de

    .line 2592
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2594
    goto/16 :goto_7

    .line 2595
    :cond_de
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2598
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2599
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2600
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2601
    goto/16 :goto_7

    .line 2576
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 2577
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 2578
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2580
    goto/16 :goto_7

    .line 2581
    :cond_e0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2584
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2585
    goto/16 :goto_7

    .line 2561
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 2562
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 2563
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2565
    goto/16 :goto_7

    .line 2566
    :cond_e2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2569
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2570
    .local v2, "timeout":J
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2571
    goto/16 :goto_7

    .line 2546
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timeout":J
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 2547
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 2548
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2550
    goto/16 :goto_7

    .line 2551
    :cond_e4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2554
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2555
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2556
    goto/16 :goto_7

    .line 2531
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 2532
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 2533
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2535
    goto/16 :goto_7

    .line 2536
    :cond_e6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2538
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2539
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2540
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2541
    goto/16 :goto_7

    .line 2517
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 2518
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 2519
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2520
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2521
    goto/16 :goto_7

    .line 2522
    :cond_e8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2525
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2526
    goto/16 :goto_7

    .line 2501
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 2502
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 2503
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2504
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2505
    goto/16 :goto_7

    .line 2506
    :cond_ea
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2509
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2510
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2511
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2512
    goto/16 :goto_7

    .line 2486
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 2487
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 2488
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2490
    goto/16 :goto_7

    .line 2491
    :cond_ec
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2494
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2495
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2496
    goto/16 :goto_7

    .line 2470
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 2471
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 2472
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2474
    goto/16 :goto_7

    .line 2475
    :cond_ee
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2478
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2479
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2480
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2481
    goto/16 :goto_7

    .line 2454
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 2455
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 2456
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2458
    goto/16 :goto_7

    .line 2459
    :cond_f0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2462
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2463
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2464
    .local v3, "receivedTime":J
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2465
    goto/16 :goto_7

    .line 2438
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 2439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 2440
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2442
    goto/16 :goto_7

    .line 2443
    :cond_f2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2446
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2447
    .local v2, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2448
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2449
    goto/16 :goto_7

    .line 2423
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 2424
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 2425
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2426
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2427
    goto/16 :goto_7

    .line 2428
    :cond_f4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2431
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2432
    .local v2, "recordNumber":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2433
    goto/16 :goto_7

    .line 2408
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "recordNumber":I
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 2409
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 2410
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2411
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2412
    goto/16 :goto_7

    .line 2413
    :cond_f6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2416
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2417
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2418
    goto/16 :goto_7

    .line 2393
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    .line 2394
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 2395
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2396
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2397
    goto/16 :goto_7

    .line 2398
    :cond_f8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2401
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2402
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2403
    goto :goto_7

    .line 2379
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    .line 2380
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 2381
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2382
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2383
    goto :goto_7

    .line 2384
    :cond_fa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2387
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 2388
    goto :goto_7

    .line 2365
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 2366
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 2367
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2368
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2369
    goto :goto_7

    .line 2370
    :cond_fc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2373
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->callStateChanged(I)V

    .line 2374
    goto :goto_7

    .line 2350
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_75
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fd

    move v1, v2

    nop

    .line 2351
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 2352
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2354
    goto :goto_7

    .line 2355
    :cond_fe
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2358
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2359
    .local v2, "radioState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 2360
    nop

    .line 4277
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "radioState":I
    :cond_ff
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2303
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2329
    const-string v0, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    return-object p0

    .line 2332
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

    .line 2336
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2337
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2294
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_2/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2323
    const/4 v0, 0x1

    return v0
.end method
