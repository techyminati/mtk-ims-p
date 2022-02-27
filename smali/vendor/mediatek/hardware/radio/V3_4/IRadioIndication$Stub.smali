.class public abstract Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2252
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2255
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2311
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2312
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2313
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2314
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2315
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
        0xet
        -0x67t
        -0x3at
        0xbt
        0x0t
        0x6bt
        -0x48t
        -0x28t
        -0x79t
        -0x2ft
        0xat
        0x30t
        -0x4at
        -0x35t
        0x11t
        -0x2bt
        0x7et
        -0x6ft
        -0x1ct
        0x1t
        -0xat
        0x74t
        0x4bt
        -0x6et
        0x8t
        -0x4bt
        0x62t
        -0x77t
        0x0t
        0x57t
        -0x18t
        0x7at
    .end array-data

    :array_1
    .array-data 1
        0x15t
        -0x7ct
        0x7ct
        -0x2et
        0x6bt
        -0x38t
        -0x5t
        -0x1ct
        -0x6t
        -0x36t
        0x73t
        0xft
        -0x77t
        0xbt
        0x5dt
        -0x5bt
        0x76t
        0xft
        0x14t
        -0x4ft
        0x4ft
        0x45t
        -0xct
        -0x26t
        0x5at
        0x2at
        -0x11t
        0x39t
        0x74t
        0x4et
        -0x3t
        -0x59t
    .end array-data

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    .line 2260
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.3::IRadioIndication"

    const-string v3, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    const-string v4, "vendor.mediatek.hardware.radio@3.1::IRadioIndication"

    const-string v5, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    const-string v6, "android.hardware.radio@1.2::IRadioIndication"

    const-string v7, "android.hardware.radio@1.1::IRadioIndication"

    const-string v8, "android.hardware.radio@1.0::IRadioIndication"

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

    .line 2274
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2300
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2320
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2321
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

    .line 2349
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 4270
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 4271
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_ff

    .line 4272
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4274
    goto/16 :goto_7

    .line 4257
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 4258
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 4259
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4261
    goto/16 :goto_7

    .line 4262
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4264
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 4265
    goto/16 :goto_7

    .line 4241
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 4242
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 4243
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4244
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4245
    goto/16 :goto_7

    .line 4246
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4248
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4249
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4250
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4251
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4252
    goto/16 :goto_7

    .line 4226
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 4227
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 4228
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4230
    goto/16 :goto_7

    .line 4231
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4233
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->ping()V

    .line 4234
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4235
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4236
    goto/16 :goto_7

    .line 4216
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 4217
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_ff

    .line 4218
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4220
    goto/16 :goto_7

    .line 4203
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 4204
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 4205
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4206
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4207
    goto/16 :goto_7

    .line 4208
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4210
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 4211
    goto/16 :goto_7

    .line 4170
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 4171
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 4172
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4174
    goto/16 :goto_7

    .line 4175
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4177
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4178
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4180
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4182
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4183
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4184
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4185
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 4186
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 4188
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 4189
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4190
    nop

    .line 4186
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4193
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4195
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4197
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4198
    goto/16 :goto_7

    .line 4154
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 4155
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 4156
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4158
    goto/16 :goto_7

    .line 4159
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4162
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4163
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4165
    goto/16 :goto_7

    .line 4140
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 4141
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 4142
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4144
    goto/16 :goto_7

    .line 4145
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4149
    goto/16 :goto_7

    .line 4124
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 4125
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 4126
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4128
    goto/16 :goto_7

    .line 4129
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4132
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4133
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4135
    goto/16 :goto_7

    .line 4109
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 4110
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 4111
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4113
    goto/16 :goto_7

    .line 4114
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4117
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4118
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimPowerChangedInd(ILjava/util/ArrayList;)V

    .line 4119
    goto/16 :goto_7

    .line 4094
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 4095
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 4096
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4098
    goto/16 :goto_7

    .line 4099
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4102
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4103
    .restart local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 4104
    goto/16 :goto_7

    .line 4079
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 4080
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 4081
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4082
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4083
    goto/16 :goto_7

    .line 4084
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4087
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4088
    .local v2, "dsbpState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->dsbpStateChanged(II)V

    .line 4089
    goto/16 :goto_7

    .line 4064
    .end local v0    # "indicationType":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dsbpState":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 4065
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 4066
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4068
    goto/16 :goto_7

    .line 4069
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4072
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4073
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 4074
    goto/16 :goto_7

    .line 4049
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 4050
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 4051
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4052
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4053
    goto/16 :goto_7

    .line 4054
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4057
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4058
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 4059
    goto/16 :goto_7

    .line 4034
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 4035
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 4036
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4038
    goto/16 :goto_7

    .line 4039
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4042
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4043
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 4044
    goto/16 :goto_7

    .line 4019
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mccmnc":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 4020
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 4021
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4023
    goto/16 :goto_7

    .line 4024
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4027
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4028
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 4029
    goto/16 :goto_7

    .line 4004
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 4005
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 4006
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4007
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4008
    goto/16 :goto_7

    .line 4009
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4011
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4012
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4013
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 4014
    goto/16 :goto_7

    .line 3989
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 3990
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 3991
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3993
    goto/16 :goto_7

    .line 3994
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3997
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3998
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onLteAccessStratumStateChanged(ILjava/util/ArrayList;)V

    .line 3999
    goto/16 :goto_7

    .line 3975
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 3976
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 3977
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3979
    goto/16 :goto_7

    .line 3980
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3983
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 3984
    goto/16 :goto_7

    .line 3961
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 3962
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 3963
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3964
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3965
    goto/16 :goto_7

    .line 3966
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3969
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 3970
    goto/16 :goto_7

    .line 3946
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 3947
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 3948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3950
    goto/16 :goto_7

    .line 3951
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3953
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3954
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3955
    .restart local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->volteLteConnectionStatus(ILjava/util/ArrayList;)V

    .line 3956
    goto/16 :goto_7

    .line 3931
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 3932
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 3933
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3934
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3935
    goto/16 :goto_7

    .line 3936
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3939
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3940
    .local v2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 3941
    goto/16 :goto_7

    .line 3916
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 3917
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 3918
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3920
    goto/16 :goto_7

    .line 3921
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3924
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3925
    .local v2, "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onPcoStatus(ILjava/util/ArrayList;)V

    .line 3926
    goto/16 :goto_7

    .line 3900
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 3901
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 3902
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3904
    goto/16 :goto_7

    .line 3905
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3908
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;-><init>()V

    .line 3909
    .local v2, "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3910
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;)V

    .line 3911
    goto/16 :goto_7

    .line 3885
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 3886
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 3887
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3889
    goto/16 :goto_7

    .line 3890
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3893
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3894
    .local v2, "apnClassType":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->mdChangedApnInd(II)V

    .line 3895
    goto/16 :goto_7

    .line 3871
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnClassType":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 3872
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 3873
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3875
    goto/16 :goto_7

    .line 3876
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3879
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->resetAttachApnInd(I)V

    .line 3880
    goto/16 :goto_7

    .line 3857
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 3858
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 3859
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3861
    goto/16 :goto_7

    .line 3862
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3864
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3865
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onStkMenuReset(I)V

    .line 3866
    goto/16 :goto_7

    .line 3843
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 3844
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 3845
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3847
    goto/16 :goto_7

    .line 3848
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3850
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3851
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->triggerOtaSP(I)V

    .line 3852
    goto/16 :goto_7

    .line 3828
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 3829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 3830
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3832
    goto/16 :goto_7

    .line 3833
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3836
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3837
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 3838
    goto/16 :goto_7

    .line 3813
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 3814
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 3815
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3817
    goto/16 :goto_7

    .line 3818
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3821
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3822
    .local v2, "cid":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 3823
    goto/16 :goto_7

    .line 3797
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 3798
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 3799
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3801
    goto/16 :goto_7

    .line 3802
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3805
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3806
    .local v2, "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3807
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3808
    goto/16 :goto_7

    .line 3781
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 3782
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 3783
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3785
    goto/16 :goto_7

    .line 3786
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3789
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3790
    .restart local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3791
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3792
    goto/16 :goto_7

    .line 3766
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 3767
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 3768
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3769
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3770
    goto/16 :goto_7

    .line 3771
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3774
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3775
    .local v2, "lteBand":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->responseLteNetworkInfo(II)V

    .line 3776
    goto/16 :goto_7

    .line 3750
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lteBand":I
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 3751
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 3752
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3754
    goto/16 :goto_7

    .line 3755
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3758
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 3759
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3760
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 3761
    goto/16 :goto_7

    .line 3735
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 3736
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 3737
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3739
    goto/16 :goto_7

    .line 3740
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3742
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3743
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3744
    .local v2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 3745
    goto/16 :goto_7

    .line 3720
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 3721
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 3722
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3724
    goto/16 :goto_7

    .line 3725
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3728
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3729
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 3730
    goto/16 :goto_7

    .line 3705
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 3706
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 3707
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3708
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3709
    goto/16 :goto_7

    .line 3710
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3712
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3713
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3714
    .local v2, "allowed":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->dataAllowedNotification(II)V

    .line 3715
    goto/16 :goto_7

    .line 3690
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allowed":I
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 3691
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 3692
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3694
    goto/16 :goto_7

    .line 3695
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3698
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3699
    .local v2, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 3700
    goto/16 :goto_7

    .line 3675
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 3676
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 3677
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3679
    goto/16 :goto_7

    .line 3680
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3682
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3683
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3684
    .local v2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 3685
    goto/16 :goto_7

    .line 3660
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 3661
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 3662
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3664
    goto/16 :goto_7

    .line 3665
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3668
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3669
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 3670
    goto/16 :goto_7

    .line 3645
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 3646
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 3647
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3648
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3649
    goto/16 :goto_7

    .line 3650
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3652
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3653
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3654
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3655
    goto/16 :goto_7

    .line 3630
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 3631
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 3632
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3634
    goto/16 :goto_7

    .line 3635
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3638
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3639
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3640
    goto/16 :goto_7

    .line 3615
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 3616
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 3617
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3619
    goto/16 :goto_7

    .line 3620
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3623
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3624
    .local v2, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 3625
    goto/16 :goto_7

    .line 3600
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "esnMeid":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 3601
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 3602
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3604
    goto/16 :goto_7

    .line 3605
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3608
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3609
    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 3610
    goto/16 :goto_7

    .line 3585
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 3586
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 3587
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3589
    goto/16 :goto_7

    .line 3590
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3593
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3594
    .local v2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 3595
    goto/16 :goto_7

    .line 3570
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 3571
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 3572
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3574
    goto/16 :goto_7

    .line 3575
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3577
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3578
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3579
    .local v2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 3580
    goto/16 :goto_7

    .line 3555
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 3556
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 3557
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3558
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3559
    goto/16 :goto_7

    .line 3560
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3563
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3564
    .local v2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 3565
    goto/16 :goto_7

    .line 3540
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 3541
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 3542
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3544
    goto/16 :goto_7

    .line 3545
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3548
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3549
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 3550
    goto/16 :goto_7

    .line 3526
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 3527
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 3528
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3529
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3530
    goto/16 :goto_7

    .line 3531
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3534
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->smsReadyInd(I)V

    .line 3535
    goto/16 :goto_7

    .line 3512
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 3513
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 3514
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3515
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3516
    goto/16 :goto_7

    .line 3517
    :cond_64
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3520
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->meSmsStorageFullInd(I)V

    .line 3521
    goto/16 :goto_7

    .line 3496
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 3497
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 3498
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3499
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3500
    goto/16 :goto_7

    .line 3501
    :cond_66
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3503
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3504
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;-><init>()V

    .line 3505
    .local v2, "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3506
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/radio/V3_0/EtwsNotification;)V

    .line 3507
    goto/16 :goto_7

    .line 3480
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 3481
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 3482
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3483
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3484
    goto/16 :goto_7

    .line 3485
    :cond_68
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3488
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;-><init>()V

    .line 3489
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3490
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;)V

    .line 3491
    goto/16 :goto_7

    .line 3466
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 3467
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 3468
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3470
    goto/16 :goto_7

    .line 3471
    :cond_6a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3474
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onCardDetectedInd(I)V

    .line 3475
    goto/16 :goto_7

    .line 3452
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 3453
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 3454
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3455
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3456
    goto/16 :goto_7

    .line 3457
    :cond_6c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3459
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3460
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimMeLockEvent(I)V

    .line 3461
    goto/16 :goto_7

    .line 3438
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 3439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 3440
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3442
    goto/16 :goto_7

    .line 3443
    :cond_6e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3446
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimCommonSlotNoChanged(I)V

    .line 3447
    goto/16 :goto_7

    .line 3424
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 3425
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 3426
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3428
    goto/16 :goto_7

    .line 3429
    :cond_70
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3431
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3432
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimTrayPlugIn(I)V

    .line 3433
    goto/16 :goto_7

    .line 3409
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 3410
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 3411
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3412
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3413
    goto/16 :goto_7

    .line 3414
    :cond_72
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3417
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3418
    .local v2, "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimRecovery(II)V

    .line 3419
    goto/16 :goto_7

    .line 3394
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 3395
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 3396
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3397
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3398
    goto/16 :goto_7

    .line 3399
    :cond_74
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3402
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3403
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimMissing(II)V

    .line 3404
    goto/16 :goto_7

    .line 3380
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 3381
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 3382
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3383
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3384
    goto/16 :goto_7

    .line 3385
    :cond_76
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3387
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3388
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimPlugOut(I)V

    .line 3389
    goto/16 :goto_7

    .line 3366
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 3367
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 3368
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3369
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3370
    goto/16 :goto_7

    .line 3371
    :cond_78
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3374
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSimPlugIn(I)V

    .line 3375
    goto/16 :goto_7

    .line 3352
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 3353
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 3354
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3355
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3356
    goto/16 :goto_7

    .line 3357
    :cond_7a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3360
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onImsiRefreshDone(I)V

    .line 3361
    goto/16 :goto_7

    .line 3338
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 3339
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 3340
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3341
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3342
    goto/16 :goto_7

    .line 3343
    :cond_7c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3345
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3346
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onImeiLock(I)V

    .line 3347
    goto/16 :goto_7

    .line 3323
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 3324
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 3325
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3326
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3327
    goto/16 :goto_7

    .line 3328
    :cond_7e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3331
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3332
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onVirtualSimOff(II)V

    .line 3333
    goto/16 :goto_7

    .line 3308
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 3309
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 3310
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3311
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3312
    goto/16 :goto_7

    .line 3313
    :cond_80
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3316
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3317
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onVirtualSimOn(II)V

    .line 3318
    goto/16 :goto_7

    .line 3292
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 3293
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 3294
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3295
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3296
    goto/16 :goto_7

    .line 3297
    :cond_82
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3300
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3301
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3302
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 3303
    goto/16 :goto_7

    .line 3278
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 3279
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 3280
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3282
    goto/16 :goto_7

    .line 3283
    :cond_84
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3286
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaCallAccepted(I)V

    .line 3287
    goto/16 :goto_7

    .line 3263
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 3264
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 3265
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3266
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3267
    goto/16 :goto_7

    .line 3268
    :cond_86
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3271
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3272
    .local v2, "info":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3273
    goto/16 :goto_7

    .line 3247
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":I
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 3248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 3249
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3250
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3251
    goto/16 :goto_7

    .line 3252
    :cond_88
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3255
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;-><init>()V

    .line 3256
    .local v2, "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3257
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/radio/V3_0/CrssNotification;)V

    .line 3258
    goto/16 :goto_7

    .line 3231
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 3232
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 3233
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3235
    goto/16 :goto_7

    .line 3236
    :cond_8a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3239
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;-><init>()V

    .line 3240
    .local v2, "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3241
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/radio/V3_0/CipherNotification;)V

    .line 3242
    goto/16 :goto_7

    .line 3215
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 3216
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 3217
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3218
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3219
    goto/16 :goto_7

    .line 3220
    :cond_8c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3223
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 3224
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3225
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 3226
    goto/16 :goto_7

    .line 3199
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 3200
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 3201
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3203
    goto/16 :goto_7

    .line 3204
    :cond_8e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3207
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;-><init>()V

    .line 3208
    .local v2, "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3209
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;)V

    .line 3210
    goto/16 :goto_7

    .line 3184
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 3185
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 3186
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3188
    goto/16 :goto_7

    .line 3189
    :cond_90
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3192
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3193
    .local v2, "isPhbReady":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->phbReadyNotification(II)V

    .line 3194
    goto/16 :goto_7

    .line 3169
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isPhbReady":I
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 3170
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 3171
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3173
    goto/16 :goto_7

    .line 3174
    :cond_92
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3177
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3178
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 3179
    goto/16 :goto_7

    .line 3154
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 3155
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 3156
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3158
    goto/16 :goto_7

    .line 3159
    :cond_94
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3162
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3163
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 3164
    goto/16 :goto_7

    .line 3138
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/lang/String;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 3139
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 3140
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3142
    goto/16 :goto_7

    .line 3143
    :cond_96
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3146
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 3147
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3148
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 3149
    goto/16 :goto_7

    .line 3123
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 3124
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 3125
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3127
    goto/16 :goto_7

    .line 3128
    :cond_98
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3131
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3132
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 3133
    goto/16 :goto_7

    .line 3107
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 3108
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 3109
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3111
    goto/16 :goto_7

    .line 3112
    :cond_9a
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3115
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 3116
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3117
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 3118
    goto/16 :goto_7

    .line 3092
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 3093
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 3094
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3095
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3096
    goto/16 :goto_7

    .line 3097
    :cond_9c
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3100
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3101
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 3102
    goto/16 :goto_7

    .line 3076
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 3077
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 3078
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3080
    goto/16 :goto_7

    .line 3081
    :cond_9e
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3084
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 3085
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3086
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 3087
    goto/16 :goto_7

    .line 3060
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 3061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 3062
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3064
    goto/16 :goto_7

    .line 3065
    :cond_a0
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3068
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 3069
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3070
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 3071
    goto/16 :goto_7

    .line 3044
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 3045
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 3046
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3048
    goto/16 :goto_7

    .line 3049
    :cond_a2
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3052
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 3053
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3054
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 3055
    goto/16 :goto_7

    .line 3030
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 3031
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 3032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3034
    goto/16 :goto_7

    .line 3035
    :cond_a4
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3038
    .local v0, "info":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 3039
    goto/16 :goto_7

    .line 3015
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 3016
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 3017
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3018
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3019
    goto/16 :goto_7

    .line 3020
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3022
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3023
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3024
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 3025
    goto/16 :goto_7

    .line 2999
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 3000
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 3001
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3002
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3003
    goto/16 :goto_7

    .line 3004
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3007
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 3008
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3009
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 3010
    goto/16 :goto_7

    .line 2983
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 2984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 2985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2987
    goto/16 :goto_7

    .line 2988
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2991
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2992
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2993
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2994
    goto/16 :goto_7

    .line 2968
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 2969
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 2970
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2972
    goto/16 :goto_7

    .line 2973
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2976
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2977
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2978
    goto/16 :goto_7

    .line 2952
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 2953
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 2954
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2956
    goto/16 :goto_7

    .line 2957
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2960
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2961
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2962
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2963
    goto/16 :goto_7

    .line 2936
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 2937
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 2938
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2939
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2940
    goto/16 :goto_7

    .line 2941
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2944
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2945
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2946
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2947
    goto/16 :goto_7

    .line 2921
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 2922
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 2923
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2925
    goto/16 :goto_7

    .line 2926
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2929
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2930
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2931
    goto/16 :goto_7

    .line 2906
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 2907
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 2908
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2909
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2910
    goto/16 :goto_7

    .line 2911
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2914
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2915
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2916
    goto/16 :goto_7

    .line 2891
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 2892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 2893
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2894
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2895
    goto/16 :goto_7

    .line 2896
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2898
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2899
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2900
    .local v2, "activate":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2901
    goto/16 :goto_7

    .line 2877
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 2878
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 2879
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2881
    goto/16 :goto_7

    .line 2882
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2885
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2886
    goto/16 :goto_7

    .line 2862
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 2863
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 2864
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2865
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2866
    goto/16 :goto_7

    .line 2867
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2870
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2871
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2872
    goto/16 :goto_7

    .line 2847
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 2848
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 2849
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2851
    goto/16 :goto_7

    .line 2852
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2855
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2856
    .local v2, "rat":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2857
    goto/16 :goto_7

    .line 2833
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 2834
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 2835
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2837
    goto/16 :goto_7

    .line 2838
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2841
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->rilConnected(I)V

    .line 2842
    goto/16 :goto_7

    .line 2819
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 2820
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 2821
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2823
    goto/16 :goto_7

    .line 2824
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2827
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2828
    goto/16 :goto_7

    .line 2804
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 2805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 2806
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2808
    goto/16 :goto_7

    .line 2809
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2812
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2813
    .local v2, "version":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2814
    goto/16 :goto_7

    .line 2789
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":I
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 2790
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 2791
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2793
    goto/16 :goto_7

    .line 2794
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2797
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2798
    .local v2, "cdmaSource":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2799
    goto/16 :goto_7

    .line 2775
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSource":I
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 2776
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 2777
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2779
    goto/16 :goto_7

    .line 2780
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2783
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 2784
    goto/16 :goto_7

    .line 2760
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 2761
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 2762
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2764
    goto/16 :goto_7

    .line 2765
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2768
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2769
    .local v2, "start":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2770
    goto/16 :goto_7

    .line 2744
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "start":Z
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 2745
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 2746
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2748
    goto/16 :goto_7

    .line 2749
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2752
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2753
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2754
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2755
    goto/16 :goto_7

    .line 2729
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 2730
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 2731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2733
    goto/16 :goto_7

    .line 2734
    :cond_cc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2737
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2738
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2739
    goto/16 :goto_7

    .line 2713
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 2714
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 2715
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2717
    goto/16 :goto_7

    .line 2718
    :cond_ce
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2721
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2722
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2723
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2724
    goto/16 :goto_7

    .line 2699
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 2700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 2701
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2702
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2703
    goto/16 :goto_7

    .line 2704
    :cond_d0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2706
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2707
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2708
    goto/16 :goto_7

    .line 2684
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 2685
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 2686
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2688
    goto/16 :goto_7

    .line 2689
    :cond_d2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2691
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2692
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2693
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2694
    goto/16 :goto_7

    .line 2670
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 2671
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 2672
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2673
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2674
    goto/16 :goto_7

    .line 2675
    :cond_d4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2678
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2679
    goto/16 :goto_7

    .line 2655
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 2656
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 2657
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2658
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2659
    goto/16 :goto_7

    .line 2660
    :cond_d6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2663
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2664
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2665
    goto/16 :goto_7

    .line 2639
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 2640
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 2641
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2643
    goto/16 :goto_7

    .line 2644
    :cond_d8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2647
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2648
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2649
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2650
    goto/16 :goto_7

    .line 2625
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 2626
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 2627
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2629
    goto/16 :goto_7

    .line 2630
    :cond_da
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2633
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 2634
    goto/16 :goto_7

    .line 2608
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    .line 2609
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_db
    if-eq v1, v2, :cond_dc

    .line 2610
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2612
    goto/16 :goto_7

    .line 2613
    :cond_dc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2616
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2617
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2618
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2619
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2620
    goto/16 :goto_7

    .line 2592
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    .line 2593
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dd
    if-eq v1, v2, :cond_de

    .line 2594
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2596
    goto/16 :goto_7

    .line 2597
    :cond_de
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2600
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2601
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2602
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2603
    goto/16 :goto_7

    .line 2578
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 2579
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 2580
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2582
    goto/16 :goto_7

    .line 2583
    :cond_e0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2586
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2587
    goto/16 :goto_7

    .line 2563
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 2564
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 2565
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2567
    goto/16 :goto_7

    .line 2568
    :cond_e2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2571
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2572
    .local v2, "timeout":J
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2573
    goto/16 :goto_7

    .line 2548
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timeout":J
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 2549
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 2550
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2551
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2552
    goto/16 :goto_7

    .line 2553
    :cond_e4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2556
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2557
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2558
    goto/16 :goto_7

    .line 2533
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 2534
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 2535
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2537
    goto/16 :goto_7

    .line 2538
    :cond_e6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2540
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2541
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2542
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2543
    goto/16 :goto_7

    .line 2519
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 2520
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 2521
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2522
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2523
    goto/16 :goto_7

    .line 2524
    :cond_e8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2527
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2528
    goto/16 :goto_7

    .line 2503
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 2504
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 2505
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2506
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2507
    goto/16 :goto_7

    .line 2508
    :cond_ea
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2511
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2512
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2513
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2514
    goto/16 :goto_7

    .line 2488
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 2489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 2490
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2492
    goto/16 :goto_7

    .line 2493
    :cond_ec
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2496
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2497
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2498
    goto/16 :goto_7

    .line 2472
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 2473
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 2474
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2476
    goto/16 :goto_7

    .line 2477
    :cond_ee
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2480
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2481
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2482
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2483
    goto/16 :goto_7

    .line 2456
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 2457
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 2458
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2459
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2460
    goto/16 :goto_7

    .line 2461
    :cond_f0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2464
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2465
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2466
    .local v3, "receivedTime":J
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2467
    goto/16 :goto_7

    .line 2440
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 2441
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 2442
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2444
    goto/16 :goto_7

    .line 2445
    :cond_f2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2448
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2449
    .local v2, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2450
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2451
    goto/16 :goto_7

    .line 2425
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 2426
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 2427
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2428
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2429
    goto/16 :goto_7

    .line 2430
    :cond_f4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2433
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2434
    .local v2, "recordNumber":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2435
    goto/16 :goto_7

    .line 2410
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "recordNumber":I
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 2411
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 2412
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2414
    goto/16 :goto_7

    .line 2415
    :cond_f6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2418
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2419
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2420
    goto/16 :goto_7

    .line 2395
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    .line 2396
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 2397
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2398
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2399
    goto/16 :goto_7

    .line 2400
    :cond_f8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2403
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2404
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2405
    goto :goto_7

    .line 2381
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    .line 2382
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 2383
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2384
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2385
    goto :goto_7

    .line 2386
    :cond_fa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2389
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 2390
    goto :goto_7

    .line 2367
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 2368
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 2369
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2370
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2371
    goto :goto_7

    .line 2372
    :cond_fc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2375
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->callStateChanged(I)V

    .line 2376
    goto :goto_7

    .line 2352
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_75
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fd

    move v1, v2

    nop

    .line 2353
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 2354
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2355
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2356
    goto :goto_7

    .line 2357
    :cond_fe
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2360
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2361
    .local v2, "radioState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 2362
    nop

    .line 4279
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

    .line 2305
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2331
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    return-object p0

    .line 2334
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

    .line 2338
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2339
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2296
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2325
    const/4 v0, 0x1

    return v0
.end method
