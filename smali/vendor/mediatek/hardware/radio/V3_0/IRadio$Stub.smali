.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7265
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 7268
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 7316
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 7317
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 7318
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 7319
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 7320
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

    .line 7289
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

    :array_1
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

    :array_2
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

    :array_3
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

    .line 7273
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v2, "android.hardware.radio@1.2::IRadio"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hardware.radio@1.0::IRadio"

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

    .line 7283
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 7305
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 7325
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 7326
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

    .line 7354
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    .line 12375
    :cond_0
    :goto_0
    move-object v14, v12

    goto/16 :goto_d

    .line 12366
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 12367
    .local v1, "_hidl_is_oneway":Z
    :cond_1
    if-eqz v1, :cond_0

    .line 12368
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12369
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12370
    goto :goto_0

    .line 12353
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 12354
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2
    if-eq v1, v2, :cond_3

    .line 12355
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12356
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12357
    goto :goto_0

    .line 12358
    :cond_3
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12360
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->notifySyspropsChanged()V

    .line 12361
    goto :goto_0

    .line 12337
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 12338
    .local v2, "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 12339
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12341
    goto :goto_0

    .line 12342
    :cond_5
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12344
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 12345
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12346
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 12347
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12348
    goto :goto_0

    .line 12322
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 12323
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 12324
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12326
    goto :goto_0

    .line 12327
    :cond_7
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12329
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->ping()V

    .line 12330
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12332
    goto :goto_0

    .line 12312
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 12313
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eqz v1, :cond_0

    .line 12314
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12316
    goto :goto_0

    .line 12299
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9

    move v1, v2

    nop

    .line 12300
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9
    if-eq v1, v2, :cond_a

    .line 12301
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12303
    goto/16 :goto_0

    .line 12304
    :cond_a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12306
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setHALInstrumentation()V

    .line 12307
    goto/16 :goto_0

    .line 12266
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    move v2, v1

    .line 12267
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_3
    if-eqz v2, :cond_c

    .line 12268
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12270
    goto/16 :goto_0

    .line 12271
    :cond_c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12273
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 12274
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12276
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 12278
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 12279
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 12280
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 12281
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 12282
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_4
    if-ge v1, v4, :cond_d

    .line 12284
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 12285
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 12286
    nop

    .line 12282
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 12289
    .end local v1    # "_hidl_index_0":I
    :cond_d
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 12291
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 12293
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12294
    goto/16 :goto_0

    .line 12250
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    move v2, v1

    .line 12251
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_f

    .line 12252
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12254
    goto/16 :goto_0

    .line 12255
    :cond_f
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12257
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 12258
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12259
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 12260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12261
    goto/16 :goto_0

    .line 12236
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    move v2, v1

    .line 12237
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_11

    .line 12238
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12240
    goto/16 :goto_0

    .line 12241
    :cond_11
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12243
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12245
    goto/16 :goto_0

    .line 12220
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    move v2, v1

    .line 12221
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_13

    .line 12222
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12224
    goto/16 :goto_0

    .line 12225
    :cond_13
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12227
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 12228
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12229
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 12230
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12231
    goto/16 :goto_0

    .line 12205
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14

    move v1, v2

    nop

    .line 12206
    .local v1, "_hidl_is_oneway":Z
    :cond_14
    if-eq v1, v2, :cond_15

    .line 12207
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12209
    goto/16 :goto_0

    .line 12210
    :cond_15
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12213
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12214
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 12215
    goto/16 :goto_0

    .line 12190
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16

    move v1, v2

    nop

    .line 12191
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v1, v2, :cond_17

    .line 12192
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12194
    goto/16 :goto_0

    .line 12195
    :cond_17
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12198
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12199
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 12200
    goto/16 :goto_0

    .line 12174
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18

    move v1, v2

    nop

    .line 12175
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v1, v2, :cond_19

    .line 12176
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12178
    goto/16 :goto_0

    .line 12179
    :cond_19
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12182
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12183
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 12184
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 12185
    goto/16 :goto_0

    .line 12158
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a

    move v1, v2

    nop

    .line 12159
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v1, v2, :cond_1b

    .line 12160
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12162
    goto/16 :goto_0

    .line 12163
    :cond_1b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12166
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12167
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 12168
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 12169
    goto/16 :goto_0

    .line 12143
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c

    move v1, v2

    nop

    .line 12144
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v1, v2, :cond_1d

    .line 12145
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12147
    goto/16 :goto_0

    .line 12148
    :cond_1d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12151
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12152
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 12153
    goto/16 :goto_0

    .line 12128
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e

    move v1, v2

    nop

    .line 12129
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v1, v2, :cond_1f

    .line 12130
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12132
    goto/16 :goto_0

    .line 12133
    :cond_1f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12136
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12137
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setTxPowerStatus(II)V

    .line 12138
    goto/16 :goto_0

    .line 12113
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20

    move v1, v2

    nop

    .line 12114
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v1, v2, :cond_21

    .line 12115
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12117
    goto/16 :goto_0

    .line 12118
    :cond_21
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12121
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12122
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSilentReboot(II)V

    .line 12123
    goto/16 :goto_0

    .line 12098
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 12099
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_23

    .line 12100
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12102
    goto/16 :goto_0

    .line 12103
    :cond_23
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12106
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12107
    .local v2, "simMode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportSimMode(II)V

    .line 12108
    goto/16 :goto_0

    .line 12083
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simMode":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24

    move v1, v2

    nop

    .line 12084
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v1, v2, :cond_25

    .line 12085
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12087
    goto/16 :goto_0

    .line 12088
    :cond_25
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12091
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12092
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportAirplaneMode(II)V

    .line 12093
    goto/16 :goto_0

    .line 12069
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26

    move v1, v2

    nop

    .line 12070
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v1, v2, :cond_27

    .line 12071
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12073
    goto/16 :goto_0

    .line 12074
    :cond_27
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12077
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 12078
    goto/16 :goto_0

    .line 12054
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28

    move v1, v2

    nop

    .line 12055
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v1, v2, :cond_29

    .line 12056
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12057
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12058
    goto/16 :goto_0

    .line 12059
    :cond_29
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12061
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12062
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12063
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 12064
    goto/16 :goto_0

    .line 12040
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2a

    move v1, v2

    nop

    .line 12041
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v1, v2, :cond_2b

    .line 12042
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12044
    goto/16 :goto_0

    .line 12045
    :cond_2b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12048
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetAllConnections(I)V

    .line 12049
    goto/16 :goto_0

    .line 12025
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2c

    move v1, v2

    nop

    .line 12026
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v1, v2, :cond_2d

    .line 12027
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12029
    goto/16 :goto_0

    .line 12030
    :cond_2d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12033
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12034
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dataConnectionDetach(II)V

    .line 12035
    goto/16 :goto_0

    .line 12010
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2e

    move v1, v2

    nop

    .line 12011
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v1, v2, :cond_2f

    .line 12012
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12014
    goto/16 :goto_0

    .line 12015
    :cond_2f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12018
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12019
    .restart local v2    # "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dataConnectionAttach(II)V

    .line 12020
    goto/16 :goto_0

    .line 11995
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_30

    move v1, v2

    nop

    .line 11996
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v1, v2, :cond_31

    .line 11997
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11998
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11999
    goto/16 :goto_0

    .line 12000
    :cond_31
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 12003
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12004
    .local v2, "featureId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 12005
    goto/16 :goto_0

    .line 11979
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_32

    move v1, v2

    nop

    .line 11980
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v1, v2, :cond_33

    .line 11981
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11983
    goto/16 :goto_0

    .line 11984
    :cond_33
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11987
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11988
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11989
    .local v3, "value":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 11990
    goto/16 :goto_0

    .line 11964
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_34

    move v1, v2

    nop

    .line 11965
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v1, v2, :cond_35

    .line 11966
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11968
    goto/16 :goto_0

    .line 11969
    :cond_35
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11972
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11973
    .local v2, "configId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 11974
    goto/16 :goto_0

    .line 11948
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_36

    move v1, v2

    nop

    .line 11949
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v1, v2, :cond_37

    .line 11950
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11952
    goto/16 :goto_0

    .line 11953
    :cond_37
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11956
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11957
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11958
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 11959
    goto/16 :goto_0

    .line 11932
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    move v1, v2

    nop

    .line 11933
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v1, v2, :cond_39

    .line 11934
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11936
    goto/16 :goto_0

    .line 11937
    :cond_39
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11940
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11941
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11942
    .local v3, "network":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 11943
    goto/16 :goto_0

    .line 11914
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3a

    move v1, v2

    nop

    :cond_3a
    move v6, v1

    .line 11915
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_3b

    .line 11916
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11918
    goto/16 :goto_0

    .line 11919
    :cond_3b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 11922
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 11923
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11924
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 11925
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 11926
    .local v11, "isLast":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 11927
    goto/16 :goto_0

    .line 11899
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3c

    move v1, v2

    nop

    .line 11900
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v1, v2, :cond_3d

    .line 11901
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11903
    goto/16 :goto_0

    .line 11904
    :cond_3d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11907
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11908
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsBearerNotification(II)V

    .line 11909
    goto/16 :goto_0

    .line 11885
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3e

    move v1, v2

    nop

    .line 11886
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v1, v2, :cond_3f

    .line 11887
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11889
    goto/16 :goto_0

    .line 11890
    :cond_3f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11893
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getApcInfo(I)V

    .line 11894
    goto/16 :goto_0

    .line 11868
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_40

    move v1, v2

    nop

    .line 11869
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v1, v2, :cond_41

    .line 11870
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11872
    goto/16 :goto_0

    .line 11873
    :cond_41
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11875
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11876
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11877
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11878
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11879
    .local v4, "interval":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setApcMode(IIII)V

    .line 11880
    goto/16 :goto_0

    .line 11851
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_42

    move v1, v2

    nop

    .line 11852
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_42
    if-eq v1, v2, :cond_43

    .line 11853
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11854
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11855
    goto/16 :goto_0

    .line 11856
    :cond_43
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11859
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11860
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11861
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11862
    .local v4, "pktloss":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 11863
    goto/16 :goto_0

    .line 11831
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_44

    move v1, v2

    nop

    :cond_44
    move v8, v1

    .line 11832
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_45

    .line 11833
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11835
    goto/16 :goto_0

    .line 11836
    :cond_45
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11839
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11840
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 11841
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11842
    .local v16, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 11843
    .local v17, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11844
    .local v18, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 11845
    .local v19, "dstPort":I
    move-object v0, v13

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 11846
    goto/16 :goto_0

    .line 11816
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v16    # "srcIp":Ljava/lang/String;
    .end local v17    # "srcPort":I
    .end local v18    # "dstIp":Ljava/lang/String;
    .end local v19    # "dstPort":I
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_46

    move v1, v2

    nop

    .line 11817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v1, v2, :cond_47

    .line 11818
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11820
    goto/16 :goto_0

    .line 11821
    :cond_47
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11824
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11825
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 11826
    goto/16 :goto_0

    .line 11791
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_48

    move v1, v2

    nop

    :cond_48
    move v11, v1

    .line 11792
    .local v11, "_hidl_is_oneway":Z
    if-eq v11, v2, :cond_49

    .line 11793
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11795
    goto/16 :goto_0

    .line 11796
    :cond_49
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 11799
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11800
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11801
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 11802
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 11803
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 11804
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 11805
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 11806
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 11807
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 11808
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 11809
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 11810
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11811
    goto/16 :goto_d

    .line 11774
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
    :pswitch_1b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4a

    move v1, v2

    nop

    .line 11775
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v1, v2, :cond_4b

    .line 11776
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11778
    goto/16 :goto_d

    .line 11779
    :cond_4b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11782
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11783
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11784
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 11785
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11786
    goto/16 :goto_d

    .line 11758
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_1c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4c

    move v1, v2

    nop

    .line 11759
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4c
    if-eq v1, v2, :cond_4d

    .line 11760
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11762
    goto/16 :goto_d

    .line 11763
    :cond_4d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11766
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11767
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11768
    .local v3, "snr":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 11769
    goto/16 :goto_d

    .line 11740
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_1d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4e

    move v1, v2

    nop

    :cond_4e
    move v6, v1

    .line 11741
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_4f

    .line 11742
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11743
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11744
    goto/16 :goto_d

    .line 11745
    :cond_4f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 11748
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 11749
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11750
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11751
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11752
    .local v11, "apMac":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11753
    goto/16 :goto_d

    .line 11723
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_1e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_50

    move v1, v2

    nop

    .line 11724
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_50
    if-eq v1, v2, :cond_51

    .line 11725
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11727
    goto/16 :goto_d

    .line 11728
    :cond_51
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11731
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11732
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11733
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11734
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 11735
    goto/16 :goto_d

    .line 11708
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_1f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_52

    move v1, v2

    nop

    .line 11709
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v1, v2, :cond_53

    .line 11710
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11712
    goto/16 :goto_d

    .line 11713
    :cond_53
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11716
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11717
    .local v2, "vdp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 11718
    goto/16 :goto_d

    .line 11693
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "vdp":I
    :pswitch_20
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_54

    move v1, v2

    nop

    .line 11694
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v1, v2, :cond_55

    .line 11695
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11697
    goto/16 :goto_d

    .line 11698
    :cond_55
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11701
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11702
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setE911State(II)V

    .line 11703
    goto/16 :goto_d

    .line 11677
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_21
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_56

    move v1, v2

    nop

    .line 11678
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v1, v2, :cond_57

    .line 11679
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11681
    goto/16 :goto_d

    .line 11682
    :cond_57
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11685
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11686
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11687
    .local v3, "interfaceId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 11688
    goto/16 :goto_d

    .line 11662
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_22
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_58

    move v1, v2

    nop

    .line 11663
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v1, v2, :cond_59

    .line 11664
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11666
    goto/16 :goto_d

    .line 11667
    :cond_59
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11670
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11671
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 11672
    goto/16 :goto_d

    .line 11647
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_23
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5a

    move v1, v2

    nop

    .line 11648
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v1, v2, :cond_5b

    .line 11649
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11651
    goto/16 :goto_d

    .line 11652
    :cond_5b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11655
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11656
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 11657
    goto/16 :goto_d

    .line 11632
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_24
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    move v1, v2

    nop

    .line 11633
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v1, v2, :cond_5d

    .line 11634
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11636
    goto/16 :goto_d

    .line 11637
    :cond_5d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11640
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11641
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 11642
    goto/16 :goto_d

    .line 11617
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_25
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5e

    move v1, v2

    nop

    .line 11618
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v1, v2, :cond_5f

    .line 11619
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11621
    goto/16 :goto_d

    .line 11622
    :cond_5f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11625
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11626
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 11627
    goto/16 :goto_d

    .line 11603
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_26
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_60

    move v1, v2

    nop

    .line 11604
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v1, v2, :cond_61

    .line 11605
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11607
    goto/16 :goto_d

    .line 11608
    :cond_61
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11611
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->restartRILD(I)V

    .line 11612
    goto/16 :goto_d

    .line 11589
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_27
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_62

    move v1, v2

    nop

    .line 11590
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v1, v2, :cond_63

    .line 11591
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11593
    goto/16 :goto_d

    .line 11594
    :cond_63
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11597
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetRadio(I)V

    .line 11598
    goto/16 :goto_d

    .line 11574
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_64

    move v1, v2

    nop

    .line 11575
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v1, v2, :cond_65

    .line 11576
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11577
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11578
    goto/16 :goto_d

    .line 11579
    :cond_65
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11582
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11583
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 11584
    goto/16 :goto_d

    .line 11559
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_29
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_66

    move v1, v2

    nop

    .line 11560
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v1, v2, :cond_67

    .line 11561
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11563
    goto/16 :goto_d

    .line 11564
    :cond_67
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v0

    .line 11567
    .local v0, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 11568
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 11569
    goto/16 :goto_d

    .line 11544
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_68

    move v1, v2

    nop

    .line 11545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v1, v2, :cond_69

    .line 11546
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11548
    goto/16 :goto_d

    .line 11549
    :cond_69
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11552
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11553
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 11554
    goto/16 :goto_d

    .line 11529
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6a

    move v1, v2

    nop

    .line 11530
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v1, v2, :cond_6b

    .line 11531
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11533
    goto/16 :goto_d

    .line 11534
    :cond_6b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11537
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11538
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 11539
    goto/16 :goto_d

    .line 11514
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_2c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6c

    move v1, v2

    nop

    .line 11515
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v1, v2, :cond_6d

    .line 11516
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11518
    goto/16 :goto_d

    .line 11519
    :cond_6d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11522
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11523
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 11524
    goto/16 :goto_d

    .line 11499
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_2d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6e

    move v1, v2

    nop

    .line 11500
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v1, v2, :cond_6f

    .line 11501
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11503
    goto/16 :goto_d

    .line 11504
    :cond_6f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11507
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11508
    .local v2, "resultCode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 11509
    goto/16 :goto_d

    .line 11484
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resultCode":I
    :pswitch_2e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_70

    move v1, v2

    nop

    .line 11485
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v1, v2, :cond_71

    .line 11486
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11488
    goto/16 :goto_d

    .line 11489
    :cond_71
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11492
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11493
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setTrm(II)V

    .line 11494
    goto/16 :goto_d

    .line 11467
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_2f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_72

    move v1, v2

    nop

    .line 11468
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v1, v2, :cond_73

    .line 11469
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11471
    goto/16 :goto_d

    .line 11472
    :cond_73
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11475
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11476
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11477
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11478
    .local v4, "param2":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setFdMode(IIII)V

    .line 11479
    goto/16 :goto_d

    .line 11450
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_30
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_74

    move v1, v2

    nop

    .line 11451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v1, v2, :cond_75

    .line 11452
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11454
    goto/16 :goto_d

    .line 11455
    :cond_75
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11459
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11460
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11461
    .local v4, "nAct":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 11462
    goto/16 :goto_d

    .line 11436
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_31
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_76

    move v1, v2

    nop

    .line 11437
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v1, v2, :cond_77

    .line 11438
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11440
    goto/16 :goto_d

    .line 11441
    :cond_77
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11444
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCurrentPOLList(I)V

    .line 11445
    goto/16 :goto_d

    .line 11422
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_78

    move v1, v2

    nop

    .line 11423
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_78
    if-eq v1, v2, :cond_79

    .line 11424
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11426
    goto/16 :goto_d

    .line 11427
    :cond_79
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11430
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPOLCapability(I)V

    .line 11431
    goto/16 :goto_d

    .line 11407
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_33
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7a

    move v1, v2

    nop

    .line 11408
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v1, v2, :cond_7b

    .line 11409
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11410
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11411
    goto/16 :goto_d

    .line 11412
    :cond_7b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11415
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11416
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getRxTestResult(II)V

    .line 11417
    goto/16 :goto_d

    .line 11392
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_34
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7c

    move v1, v2

    nop

    .line 11393
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v1, v2, :cond_7d

    .line 11394
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11396
    goto/16 :goto_d

    .line 11397
    :cond_7d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11400
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11401
    .local v2, "antType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRxTestConfig(II)V

    .line 11402
    goto/16 :goto_d

    .line 11372
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "antType":I
    :pswitch_35
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7e

    move v1, v2

    nop

    :cond_7e
    move v8, v1

    .line 11373
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_7f

    .line 11374
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11376
    goto/16 :goto_d

    .line 11377
    :cond_7f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11380
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 11381
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 11382
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 11383
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 11384
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 11385
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 11386
    .local v18, "rilDataRegState":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 11387
    goto/16 :goto_d

    .line 11357
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_36
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 11358
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eq v1, v2, :cond_81

    .line 11359
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11361
    goto/16 :goto_d

    .line 11362
    :cond_81
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11365
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11366
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 11367
    goto/16 :goto_d

    .line 11343
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_37
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_82

    move v1, v2

    nop

    .line 11344
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_82
    if-eq v1, v2, :cond_83

    .line 11345
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11347
    goto/16 :goto_d

    .line 11348
    :cond_83
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11351
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 11352
    goto/16 :goto_d

    .line 11326
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_38
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_84

    move v1, v2

    nop

    .line 11327
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v1, v2, :cond_85

    .line 11328
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11330
    goto/16 :goto_d

    .line 11331
    :cond_85
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11334
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11335
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11336
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 11337
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11338
    goto/16 :goto_d

    .line 11312
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_39
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_86

    move v1, v2

    nop

    .line 11313
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_86
    if-eq v1, v2, :cond_87

    .line 11314
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11316
    goto/16 :goto_d

    .line 11317
    :cond_87
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11320
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->abortFemtocellList(I)V

    .line 11321
    goto/16 :goto_d

    .line 11298
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_88

    move v1, v2

    nop

    .line 11299
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v1, v2, :cond_89

    .line 11300
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11302
    goto/16 :goto_d

    .line 11303
    :cond_89
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11306
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getFemtocellList(I)V

    .line 11307
    goto/16 :goto_d

    .line 11284
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8a

    move v1, v2

    nop

    .line 11285
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v1, v2, :cond_8b

    .line 11286
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11288
    goto/16 :goto_d

    .line 11289
    :cond_8b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11292
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 11293
    goto/16 :goto_d

    .line 11270
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8c

    move v1, v2

    nop

    .line 11271
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v1, v2, :cond_8d

    .line 11272
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11274
    goto/16 :goto_d

    .line 11275
    :cond_8d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11278
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 11279
    goto/16 :goto_d

    .line 11256
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8e

    move v1, v2

    nop

    .line 11257
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v1, v2, :cond_8f

    .line 11258
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11260
    goto/16 :goto_d

    .line 11261
    :cond_8f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11264
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 11265
    goto/16 :goto_d

    .line 11239
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 11240
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_91

    .line 11241
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11243
    goto/16 :goto_d

    .line 11244
    :cond_91
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11247
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11248
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11249
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 11250
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11251
    goto/16 :goto_d

    .line 11225
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_3f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_92

    move v1, v2

    nop

    .line 11226
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v1, v2, :cond_93

    .line 11227
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11229
    goto/16 :goto_d

    .line 11230
    :cond_93
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11233
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 11234
    goto/16 :goto_d

    .line 11210
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_40
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_94

    move v1, v2

    nop

    .line 11211
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v1, v2, :cond_95

    .line 11212
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11213
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11214
    goto/16 :goto_d

    .line 11215
    :cond_95
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11218
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11219
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reloadModemType(II)V

    .line 11220
    goto/16 :goto_d

    .line 11195
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_41
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_96

    move v1, v2

    nop

    .line 11196
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_96
    if-eq v1, v2, :cond_97

    .line 11197
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11199
    goto/16 :goto_d

    .line 11200
    :cond_97
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11203
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11204
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->storeModemType(II)V

    .line 11205
    goto/16 :goto_d

    .line 11180
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_42
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_98

    move v1, v2

    nop

    .line 11181
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_98
    if-eq v1, v2, :cond_99

    .line 11182
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11184
    goto/16 :goto_d

    .line 11185
    :cond_99
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11188
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11189
    .local v2, "sessionId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResumeRegistration(II)V

    .line 11190
    goto/16 :goto_d

    .line 11165
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionId":I
    :pswitch_43
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9a

    move v1, v2

    nop

    .line 11166
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9a
    if-eq v1, v2, :cond_9b

    .line 11167
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11169
    goto/16 :goto_d

    .line 11170
    :cond_9b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11173
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11174
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 11175
    goto/16 :goto_d

    .line 11150
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_44
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9c

    move v1, v2

    nop

    .line 11151
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9c
    if-eq v1, v2, :cond_9d

    .line 11152
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11154
    goto/16 :goto_d

    .line 11155
    :cond_9d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11157
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11158
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11159
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 11160
    goto/16 :goto_d

    .line 11134
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_45
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9e

    move v1, v2

    nop

    .line 11135
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9e
    if-eq v1, v2, :cond_9f

    .line 11136
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11138
    goto/16 :goto_d

    .line 11139
    :cond_9f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11142
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 11143
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 11144
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 11145
    goto/16 :goto_d

    .line 11118
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_46
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a0

    move v1, v2

    nop

    .line 11119
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a0
    if-eq v1, v2, :cond_a1

    .line 11120
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11121
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11122
    goto/16 :goto_d

    .line 11123
    :cond_a1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11125
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11126
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 11127
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11128
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 11129
    goto/16 :goto_d

    .line 11104
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_47
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a2

    move v1, v2

    nop

    .line 11105
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a2
    if-eq v1, v2, :cond_a3

    .line 11106
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11108
    goto/16 :goto_d

    .line 11109
    :cond_a3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11112
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSmsFwkReady(I)V

    .line 11113
    goto/16 :goto_d

    .line 11088
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a4

    move v1, v2

    nop

    .line 11089
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a4
    if-eq v1, v2, :cond_a5

    .line 11090
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11091
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11092
    goto/16 :goto_d

    .line 11093
    :cond_a5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11095
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11096
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 11097
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 11098
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 11099
    goto/16 :goto_d

    .line 11074
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_49
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    move v1, v2

    nop

    .line 11075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a6
    if-eq v1, v2, :cond_a7

    .line 11076
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11078
    goto/16 :goto_d

    .line 11079
    :cond_a7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11082
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 11083
    goto/16 :goto_d

    .line 11060
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a8

    move v1, v2

    nop

    .line 11061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a8
    if-eq v1, v2, :cond_a9

    .line 11062
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11064
    goto/16 :goto_d

    .line 11065
    :cond_a9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11068
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 11069
    goto/16 :goto_d

    .line 11045
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_aa

    move v1, v2

    nop

    .line 11046
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_aa
    if-eq v1, v2, :cond_ab

    .line 11047
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11049
    goto/16 :goto_d

    .line 11050
    :cond_ab
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11053
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11054
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 11055
    goto/16 :goto_d

    .line 11029
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_4c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ac

    move v1, v2

    nop

    .line 11030
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ac
    if-eq v1, v2, :cond_ad

    .line 11031
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11033
    goto/16 :goto_d

    .line 11034
    :cond_ad
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11037
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11038
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11039
    .local v3, "serialId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->removeCbMsg(III)V

    .line 11040
    goto/16 :goto_d

    .line 11014
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_4d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ae

    move v1, v2

    nop

    .line 11015
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ae
    if-eq v1, v2, :cond_af

    .line 11016
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11018
    goto/16 :goto_d

    .line 11019
    :cond_af
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11021
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11022
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11023
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEtws(II)V

    .line 11024
    goto/16 :goto_d

    .line 11000
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_4e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b0

    move v1, v2

    nop

    .line 11001
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b0
    if-eq v1, v2, :cond_b1

    .line 11002
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11004
    goto/16 :goto_d

    .line 11005
    :cond_b1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 11008
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmsMemStatus(I)V

    .line 11009
    goto/16 :goto_d

    .line 10984
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b2

    move v1, v2

    nop

    .line 10985
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b2
    if-eq v1, v2, :cond_b3

    .line 10986
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10987
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10988
    goto/16 :goto_d

    .line 10989
    :cond_b3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10992
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 10993
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10994
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 10995
    goto/16 :goto_d

    .line 10970
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_50
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b4

    move v1, v2

    nop

    .line 10971
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b4
    if-eq v1, v2, :cond_b5

    .line 10972
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10974
    goto/16 :goto_d

    .line 10975
    :cond_b5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10978
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmsParameters(I)V

    .line 10979
    goto/16 :goto_d

    .line 10951
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_51
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b6

    move v1, v2

    nop

    :cond_b6
    move v7, v1

    .line 10952
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_b7

    .line 10953
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10955
    goto/16 :goto_d

    .line 10956
    :cond_b7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10959
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10960
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10961
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10962
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 10963
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 10964
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, v13

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 10965
    goto/16 :goto_d

    .line 10934
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_52
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b8

    move v1, v2

    nop

    .line 10935
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b8
    if-eq v1, v2, :cond_b9

    .line 10936
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10938
    goto/16 :goto_d

    .line 10939
    :cond_b9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10941
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10942
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10943
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10944
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10945
    .local v4, "simType":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 10946
    goto/16 :goto_d

    .line 10918
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_53
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ba

    move v1, v2

    nop

    .line 10919
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ba
    if-eq v1, v2, :cond_bb

    .line 10920
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10922
    goto/16 :goto_d

    .line 10923
    :cond_bb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10926
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10927
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10928
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 10929
    goto/16 :goto_d

    .line 10898
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_54
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bc

    move v1, v2

    nop

    :cond_bc
    move v8, v1

    .line 10899
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_bd

    .line 10900
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10902
    goto/16 :goto_d

    .line 10903
    :cond_bd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10905
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10906
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10907
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10908
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10909
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10910
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10911
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10912
    .local v18, "gid2":Ljava/lang/String;
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10913
    goto/16 :goto_d

    .line 10883
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_55
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_be

    move v1, v2

    nop

    .line 10884
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_be
    if-eq v1, v2, :cond_bf

    .line 10885
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10887
    goto/16 :goto_d

    .line 10888
    :cond_bf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10891
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10892
    .local v2, "category":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryNetworkLock(II)V

    .line 10893
    goto/16 :goto_d

    .line 10867
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "category":I
    :pswitch_56
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c0

    move v1, v2

    nop

    .line 10868
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c0
    if-eq v1, v2, :cond_c1

    .line 10869
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10870
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10871
    goto/16 :goto_d

    .line 10872
    :cond_c1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10874
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10875
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 10876
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10877
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 10878
    goto/16 :goto_d

    .line 10852
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_57
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c2

    move v1, v2

    nop

    .line 10853
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v1, v2, :cond_c3

    .line 10854
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10855
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10856
    goto/16 :goto_d

    .line 10857
    :cond_c3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10860
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10861
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSimPower(II)V

    .line 10862
    goto/16 :goto_d

    .line 10838
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_58
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c4

    move v1, v2

    nop

    .line 10839
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c4
    if-eq v1, v2, :cond_c5

    .line 10840
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10842
    goto/16 :goto_d

    .line 10843
    :cond_c5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10846
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getIccid(I)V

    .line 10847
    goto/16 :goto_d

    .line 10824
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_59
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c6

    move v1, v2

    nop

    .line 10825
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c6
    if-eq v1, v2, :cond_c7

    .line 10826
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10827
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10828
    goto/16 :goto_d

    .line 10829
    :cond_c7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10832
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getATR(I)V

    .line 10833
    goto/16 :goto_d

    .line 10809
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c8

    move v1, v2

    nop

    .line 10810
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c8
    if-eq v1, v2, :cond_c9

    .line 10811
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10812
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10813
    goto/16 :goto_d

    .line 10814
    :cond_c9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10817
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10818
    .restart local v2    # "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 10819
    goto/16 :goto_d

    .line 10794
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ca

    move v1, v2

    nop

    .line 10795
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ca
    if-eq v1, v2, :cond_cb

    .line 10796
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10798
    goto/16 :goto_d

    .line 10799
    :cond_cb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10802
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 10803
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setModemPower(IZ)V

    .line 10804
    goto/16 :goto_d

    .line 10779
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_5c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cc

    move v1, v2

    nop

    .line 10780
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cc
    if-eq v1, v2, :cond_cd

    .line 10781
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10783
    goto/16 :goto_d

    .line 10784
    :cond_cd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10787
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10788
    .local v2, "ready":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPhonebookReady(II)V

    .line 10789
    goto/16 :goto_d

    .line 10763
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ready":I
    :pswitch_5d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ce

    move v1, v2

    nop

    .line 10764
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ce
    if-eq v1, v2, :cond_cf

    .line 10765
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10767
    goto/16 :goto_d

    .line 10768
    :cond_cf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10770
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10771
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10772
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10773
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBAasList(III)V

    .line 10774
    goto/16 :goto_d

    .line 10747
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_5e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d0

    move v1, v2

    nop

    .line 10748
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d0
    if-eq v1, v2, :cond_d1

    .line 10749
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10751
    goto/16 :goto_d

    .line 10752
    :cond_d1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10755
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10756
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10757
    .local v3, "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 10758
    goto/16 :goto_d

    .line 10731
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_5f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d2

    move v1, v2

    nop

    .line 10732
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d2
    if-eq v1, v2, :cond_d3

    .line 10733
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10735
    goto/16 :goto_d

    .line 10736
    :cond_d3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10739
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10740
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10741
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBSneEntry(III)V

    .line 10742
    goto/16 :goto_d

    .line 10715
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

    .line 10716
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d4
    if-eq v1, v2, :cond_d5

    .line 10717
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10719
    goto/16 :goto_d

    .line 10720
    :cond_d5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10723
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10724
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10725
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 10726
    goto/16 :goto_d

    .line 10699
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

    .line 10700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d6
    if-eq v1, v2, :cond_d7

    .line 10701
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10703
    goto/16 :goto_d

    .line 10704
    :cond_d7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10707
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10708
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10709
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryUPBAvailable(III)V

    .line 10710
    goto/16 :goto_d

    .line 10683
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_62
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d8

    move v1, v2

    nop

    .line 10684
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d8
    if-eq v1, v2, :cond_d9

    .line 10685
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10687
    goto/16 :goto_d

    .line 10688
    :cond_d9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10691
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 10692
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10693
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 10694
    goto/16 :goto_d

    .line 10667
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_63
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_da

    move v1, v2

    nop

    .line 10668
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_da
    if-eq v1, v2, :cond_db

    .line 10669
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10670
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10671
    goto/16 :goto_d

    .line 10672
    :cond_db
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10675
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10676
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10677
    .local v3, "index2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 10678
    goto/16 :goto_d

    .line 10651
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_64
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dc

    move v1, v2

    nop

    .line 10652
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dc
    if-eq v1, v2, :cond_dd

    .line 10653
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10655
    goto/16 :goto_d

    .line 10656
    :cond_dd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10659
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10660
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10661
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 10662
    goto/16 :goto_d

    .line 10637
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_65
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_de

    move v1, v2

    nop

    .line 10638
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_de
    if-eq v1, v2, :cond_df

    .line 10639
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10640
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10641
    goto/16 :goto_d

    .line 10642
    :cond_df
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10644
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10645
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 10646
    goto/16 :goto_d

    .line 10623
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_66
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e0

    move v1, v2

    nop

    .line 10624
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e0
    if-eq v1, v2, :cond_e1

    .line 10625
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10627
    goto/16 :goto_d

    .line 10628
    :cond_e1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10631
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 10632
    goto/16 :goto_d

    .line 10607
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_67
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e2

    move v1, v2

    nop

    .line 10608
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e2
    if-eq v1, v2, :cond_e3

    .line 10609
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10611
    goto/16 :goto_d

    .line 10612
    :cond_e3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10615
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10616
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10617
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 10618
    goto/16 :goto_d

    .line 10592
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_68
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e4

    move v1, v2

    nop

    .line 10593
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e4
    if-eq v1, v2, :cond_e5

    .line 10594
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10596
    goto/16 :goto_d

    .line 10597
    :cond_e5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10600
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10601
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 10602
    goto/16 :goto_d

    .line 10576
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    :pswitch_69
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e6

    move v1, v2

    nop

    .line 10577
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e6
    if-eq v1, v2, :cond_e7

    .line 10578
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10580
    goto/16 :goto_d

    .line 10581
    :cond_e7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10584
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10585
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10586
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBGasList(III)V

    .line 10587
    goto/16 :goto_d

    .line 10559
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e8

    move v1, v2

    nop

    .line 10560
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e8
    if-eq v1, v2, :cond_e9

    .line 10561
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10563
    goto/16 :goto_d

    .line 10564
    :cond_e9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10567
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10568
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10569
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10570
    .local v4, "entryIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 10571
    goto/16 :goto_d

    .line 10544
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ea

    move v1, v2

    nop

    .line 10545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ea
    if-eq v1, v2, :cond_eb

    .line 10546
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10548
    goto/16 :goto_d

    .line 10549
    :cond_eb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10552
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10553
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 10554
    goto/16 :goto_d

    .line 10530
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ec

    move v1, v2

    nop

    .line 10531
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ec
    if-eq v1, v2, :cond_ed

    .line 10532
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10534
    goto/16 :goto_d

    .line 10535
    :cond_ed
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10538
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryUPBCapability(I)V

    .line 10539
    goto/16 :goto_d

    .line 10513
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ee

    move v1, v2

    nop

    .line 10514
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ee
    if-eq v1, v2, :cond_ef

    .line 10515
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10517
    goto/16 :goto_d

    .line 10518
    :cond_ef
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10521
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10522
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10523
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10524
    .local v4, "eIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readPhbEntry(IIII)V

    .line 10525
    goto/16 :goto_d

    .line 10497
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_6e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f0

    move v1, v2

    nop

    .line 10498
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f0
    if-eq v1, v2, :cond_f1

    .line 10499
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10501
    goto/16 :goto_d

    .line 10502
    :cond_f1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10505
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 10506
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10507
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 10508
    goto/16 :goto_d

    .line 10482
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_6f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f2

    move v1, v2

    nop

    .line 10483
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f2
    if-eq v1, v2, :cond_f3

    .line 10484
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10486
    goto/16 :goto_d

    .line 10487
    :cond_f3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10490
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10491
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 10492
    goto/16 :goto_d

    .line 10468
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_70
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f4

    move v1, v2

    nop

    .line 10469
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f4
    if-eq v1, v2, :cond_f5

    .line 10470
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10472
    goto/16 :goto_d

    .line 10473
    :cond_f5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10476
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getEccNum(I)V

    .line 10477
    goto/16 :goto_d

    .line 10452
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_71
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f6

    move v1, v2

    nop

    .line 10453
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f6
    if-eq v1, v2, :cond_f7

    .line 10454
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10456
    goto/16 :goto_d

    .line 10457
    :cond_f7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10460
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10461
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10462
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 10463
    goto/16 :goto_d

    .line 10437
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_72
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f8

    move v1, v2

    nop

    .line 10438
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v1, v2, :cond_f9

    .line 10439
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10441
    goto/16 :goto_d

    .line 10442
    :cond_f9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10445
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10446
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 10447
    goto/16 :goto_d

    .line 10422
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_73
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fa

    move v1, v2

    nop

    .line 10423
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fa
    if-eq v1, v2, :cond_fb

    .line 10424
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10426
    goto/16 :goto_d

    .line 10427
    :cond_fb
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
    .local v2, "phoneType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->eccPreferredRat(II)V

    .line 10432
    goto/16 :goto_d

    .line 10406
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneType":I
    :pswitch_74
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fc

    move v1, v2

    nop

    .line 10407
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fc
    if-eq v1, v2, :cond_fd

    .line 10408
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10410
    goto/16 :goto_d

    .line 10411
    :cond_fd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10414
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10415
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10416
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->currentStatus(III)V

    .line 10417
    goto/16 :goto_d

    .line 10390
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_75
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    move v1, v2

    nop

    .line 10391
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fe
    if-eq v1, v2, :cond_ff

    .line 10392
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10394
    goto/16 :goto_d

    .line 10395
    :cond_ff
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10398
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10399
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10400
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 10401
    goto/16 :goto_d

    .line 10375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_76
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_100

    move v1, v2

    nop

    .line 10376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_100
    if-eq v1, v2, :cond_101

    .line 10377
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10379
    goto/16 :goto_d

    .line 10380
    :cond_101
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10383
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10384
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEccServiceCategory(II)V

    .line 10385
    goto/16 :goto_d

    .line 10359
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceCategory":I
    :pswitch_77
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_102

    move v1, v2

    nop

    .line 10360
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_102
    if-eq v1, v2, :cond_103

    .line 10361
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10362
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10363
    goto/16 :goto_d

    .line 10364
    :cond_103
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10367
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 10368
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10369
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 10370
    goto/16 :goto_d

    .line 10342
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_78
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_104

    move v1, v2

    nop

    .line 10343
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_104
    if-eq v1, v2, :cond_105

    .line 10344
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10346
    goto/16 :goto_d

    .line 10347
    :cond_105
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10350
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10351
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10352
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10353
    .local v4, "seqNumber":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallIndication(IIII)V

    .line 10354
    goto/16 :goto_d

    .line 10328
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_79
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_106

    move v1, v2

    nop

    .line 10329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_106
    if-eq v1, v2, :cond_107

    .line 10330
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10332
    goto/16 :goto_d

    .line 10333
    :cond_107
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10336
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangupAll(I)V

    .line 10337
    goto/16 :goto_d

    .line 10313
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_108

    move v1, v2

    nop

    .line 10314
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_108
    if-eq v1, v2, :cond_109

    .line 10315
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10316
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10317
    goto/16 :goto_d

    .line 10318
    :cond_109
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10321
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10322
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 10323
    goto/16 :goto_d

    .line 10299
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10a

    move v1, v2

    nop

    .line 10300
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10a
    if-eq v1, v2, :cond_10b

    .line 10301
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10303
    goto/16 :goto_d

    .line 10304
    :cond_10b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10307
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetSuppServ(I)V

    .line 10308
    goto/16 :goto_d

    .line 10285
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10c

    move v1, v2

    nop

    .line 10286
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10c
    if-eq v1, v2, :cond_10d

    .line 10287
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10288
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10289
    goto/16 :goto_d

    .line 10290
    :cond_10d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10293
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getXcapStatus(I)V

    .line 10294
    goto/16 :goto_d

    .line 10271
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10e

    move v1, v2

    nop

    .line 10272
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10e
    if-eq v1, v2, :cond_10f

    .line 10273
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10275
    goto/16 :goto_d

    .line 10276
    :cond_10f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10279
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->cancelUssi(I)V

    .line 10280
    goto/16 :goto_d

    .line 10255
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_110

    move v1, v2

    nop

    .line 10256
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_110
    if-eq v1, v2, :cond_111

    .line 10257
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10259
    goto/16 :goto_d

    .line 10260
    :cond_111
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10263
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10264
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10265
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 10266
    goto/16 :goto_d

    .line 10237
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_7f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_112

    move v1, v2

    nop

    :cond_112
    move v6, v1

    .line 10238
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_113

    .line 10239
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10241
    goto/16 :goto_d

    .line 10242
    :cond_113
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10245
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10246
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10247
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 10248
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10249
    .local v11, "netId":I
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 10250
    goto/16 :goto_d

    .line 10221
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_80
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_114

    move v1, v2

    nop

    .line 10222
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_114
    if-eq v1, v2, :cond_115

    .line 10223
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10225
    goto/16 :goto_d

    .line 10226
    :cond_115
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10229
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 10230
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10231
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 10232
    goto/16 :goto_d

    .line 10205
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_81
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_116

    move v1, v2

    nop

    .line 10206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_116
    if-eq v1, v2, :cond_117

    .line 10207
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10209
    goto/16 :goto_d

    .line 10210
    :cond_117
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10213
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 10214
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10215
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 10216
    goto/16 :goto_d

    .line 10190
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_82
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_118

    move v1, v2

    nop

    .line 10191
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_118
    if-eq v1, v2, :cond_119

    .line 10192
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10194
    goto/16 :goto_d

    .line 10195
    :cond_119
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10198
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10199
    .local v2, "colrEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setColr(II)V

    .line 10200
    goto/16 :goto_d

    .line 10175
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrEnable":I
    :pswitch_83
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11a

    move v1, v2

    nop

    .line 10176
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v1, v2, :cond_11b

    .line 10177
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10179
    goto/16 :goto_d

    .line 10180
    :cond_11b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10183
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10184
    .local v2, "colpEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setColp(II)V

    .line 10185
    goto/16 :goto_d

    .line 10160
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colpEnable":I
    :pswitch_84
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11c

    move v1, v2

    nop

    .line 10161
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11c
    if-eq v1, v2, :cond_11d

    .line 10162
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10164
    goto/16 :goto_d

    .line 10165
    :cond_11d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10168
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10169
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 10170
    goto/16 :goto_d

    .line 10146
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_85
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11e

    move v1, v2

    nop

    .line 10147
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11e
    if-eq v1, v2, :cond_11f

    .line 10148
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10149
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10150
    goto/16 :goto_d

    .line 10151
    :cond_11f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10154
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getColr(I)V

    .line 10155
    goto/16 :goto_d

    .line 10132
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_86
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_120

    move v1, v2

    nop

    .line 10133
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_120
    if-eq v1, v2, :cond_121

    .line 10134
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10136
    goto/16 :goto_d

    .line 10137
    :cond_121
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10140
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getColp(I)V

    .line 10141
    goto/16 :goto_d

    .line 10117
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_87
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_122

    move v1, v2

    nop

    .line 10118
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_122
    if-eq v1, v2, :cond_123

    .line 10119
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10121
    goto/16 :goto_d

    .line 10122
    :cond_123
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10125
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10126
    .local v2, "clipEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setClip(II)V

    .line 10127
    goto/16 :goto_d

    .line 10099
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clipEnable":I
    :pswitch_88
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_124

    move v1, v2

    nop

    :cond_124
    move v6, v1

    .line 10100
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_125

    .line 10101
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10103
    goto/16 :goto_d

    .line 10104
    :cond_125
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10107
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10108
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10109
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10110
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10111
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10112
    goto/16 :goto_d

    .line 10084
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_89
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_126

    move v1, v2

    nop

    .line 10085
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_126
    if-eq v1, v2, :cond_127

    .line 10086
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10088
    goto/16 :goto_d

    .line 10089
    :cond_127
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10092
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10093
    .local v2, "phoneId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getRoamingEnable(II)V

    .line 10094
    goto/16 :goto_d

    .line 10069
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    :pswitch_8a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_128

    move v1, v2

    nop

    .line 10070
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_128
    if-eq v1, v2, :cond_129

    .line 10071
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10073
    goto/16 :goto_d

    .line 10074
    :cond_129
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10077
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10078
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 10079
    goto/16 :goto_d

    .line 10054
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12a

    move v1, v2

    nop

    .line 10055
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12a
    if-eq v1, v2, :cond_12b

    .line 10056
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10057
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10058
    goto/16 :goto_d

    .line 10059
    :cond_12b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10061
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10062
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10063
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 10064
    goto/16 :goto_d

    .line 10040
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_8c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12c

    move v1, v2

    nop

    .line 10041
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v1, v2, :cond_12d

    .line 10042
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10044
    goto/16 :goto_d

    .line 10045
    :cond_12d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10048
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 10049
    goto/16 :goto_d

    .line 10024
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12e

    move v1, v2

    nop

    .line 10025
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12e
    if-eq v1, v2, :cond_12f

    .line 10026
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10028
    goto/16 :goto_d

    .line 10029
    :cond_12f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10031
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10032
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10033
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 10034
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 10035
    goto/16 :goto_d

    .line 10007
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_8e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_130

    move v1, v2

    nop

    .line 10008
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_130
    if-eq v1, v2, :cond_131

    .line 10009
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10011
    goto/16 :goto_d

    .line 10012
    :cond_131
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10015
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10016
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10017
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10018
    .local v4, "timer":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 10019
    goto/16 :goto_d

    .line 9991
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_8f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_132

    move v1, v2

    nop

    .line 9992
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_132
    if-eq v1, v2, :cond_133

    .line 9993
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9995
    goto/16 :goto_d

    .line 9996
    :cond_133
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9999
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10000
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10001
    .local v3, "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 10002
    goto/16 :goto_d

    .line 9975
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_90
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_134

    move v1, v2

    nop

    .line 9976
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_134
    if-eq v1, v2, :cond_135

    .line 9977
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9979
    goto/16 :goto_d

    .line 9980
    :cond_135
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9983
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9984
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9985
    .restart local v3    # "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 9986
    goto/16 :goto_d

    .line 9960
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

    .line 9961
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_136
    if-eq v1, v2, :cond_137

    .line 9962
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9964
    goto/16 :goto_d

    .line 9965
    :cond_137
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9968
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9969
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->forceReleaseCall(II)V

    .line 9970
    goto/16 :goto_d

    .line 9944
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_92
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_138

    move v1, v2

    nop

    .line 9945
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_138
    if-eq v1, v2, :cond_139

    .line 9946
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9947
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9948
    goto/16 :goto_d

    .line 9949
    :cond_139
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9952
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 9953
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9954
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 9955
    goto/16 :goto_d

    .line 9929
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_93
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13a

    move v1, v2

    nop

    .line 9930
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13a
    if-eq v1, v2, :cond_13b

    .line 9931
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9933
    goto/16 :goto_d

    .line 9934
    :cond_13b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9937
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9938
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 9939
    goto/16 :goto_d

    .line 9914
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_94
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13c

    move v1, v2

    nop

    .line 9915
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13c
    if-eq v1, v2, :cond_13d

    .line 9916
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9918
    goto/16 :goto_d

    .line 9919
    :cond_13d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9922
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9923
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 9924
    goto/16 :goto_d

    .line 9897
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_95
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13e

    move v1, v2

    nop

    .line 9898
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13e
    if-eq v1, v2, :cond_13f

    .line 9899
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9901
    goto/16 :goto_d

    .line 9902
    :cond_13f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9905
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9906
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9907
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9908
    .local v4, "type":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 9909
    goto/16 :goto_d

    .line 9881
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_96
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_140

    move v1, v2

    nop

    .line 9882
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_140
    if-eq v1, v2, :cond_141

    .line 9883
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9885
    goto/16 :goto_d

    .line 9886
    :cond_141
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9888
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9889
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 9890
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9891
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 9892
    goto/16 :goto_d

    .line 9866
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_97
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    move v1, v2

    nop

    .line 9867
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_142
    if-eq v1, v2, :cond_143

    .line 9868
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9869
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9870
    goto/16 :goto_d

    .line 9871
    :cond_143
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9874
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9875
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWfcProfile(II)V

    .line 9876
    goto/16 :goto_d

    .line 9849
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "wfcPreference":I
    :pswitch_98
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_144

    move v1, v2

    nop

    .line 9850
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_144
    if-eq v1, v2, :cond_145

    .line 9851
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9853
    goto/16 :goto_d

    .line 9854
    :cond_145
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9857
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9858
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9859
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9860
    .local v4, "callToRemove":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 9861
    goto/16 :goto_d

    .line 9832
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_99
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_146

    move v1, v2

    nop

    .line 9833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_146
    if-eq v1, v2, :cond_147

    .line 9834
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9836
    goto/16 :goto_d

    .line 9837
    :cond_147
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9840
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9841
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9842
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9843
    .local v4, "callToAdd":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 9844
    goto/16 :goto_d

    .line 9816
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_148

    move v1, v2

    nop

    .line 9817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_148
    if-eq v1, v2, :cond_149

    .line 9818
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9820
    goto/16 :goto_d

    .line 9821
    :cond_149
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
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9826
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 9827
    goto/16 :goto_d

    .line 9801
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14a

    move v1, v2

    nop

    .line 9802
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14a
    if-eq v1, v2, :cond_14b

    .line 9803
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9805
    goto/16 :goto_d

    .line 9806
    :cond_14b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9809
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9810
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 9811
    goto/16 :goto_d

    .line 9781
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_9c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14c

    move v1, v2

    nop

    :cond_14c
    move v8, v1

    .line 9782
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_14d

    .line 9783
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9785
    goto/16 :goto_d

    .line 9786
    :cond_14d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9789
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 9790
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 9791
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 9792
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 9793
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 9794
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 9795
    .local v18, "eimsEnable":Z
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 9796
    goto/16 :goto_d

    .line 9766
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_9d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14e

    move v1, v2

    nop

    .line 9767
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14e
    if-eq v1, v2, :cond_14f

    .line 9768
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9770
    goto/16 :goto_d

    .line 9771
    :cond_14f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9774
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9775
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 9776
    goto/16 :goto_d

    .line 9751
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_9e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_150

    move v1, v2

    nop

    .line 9752
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_150
    if-eq v1, v2, :cond_151

    .line 9753
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9755
    goto/16 :goto_d

    .line 9756
    :cond_151
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9759
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9760
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 9761
    goto/16 :goto_d

    .line 9736
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_9f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_152

    move v1, v2

    nop

    .line 9737
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_152
    if-eq v1, v2, :cond_153

    .line 9738
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9740
    goto/16 :goto_d

    .line 9741
    :cond_153
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9744
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9745
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 9746
    goto/16 :goto_d

    .line 9721
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_154

    move v1, v2

    nop

    .line 9722
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_154
    if-eq v1, v2, :cond_155

    .line 9723
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9725
    goto/16 :goto_d

    .line 9726
    :cond_155
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9729
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9730
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 9731
    goto/16 :goto_d

    .line 9706
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_156

    move v1, v2

    nop

    .line 9707
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_156
    if-eq v1, v2, :cond_157

    .line 9708
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9710
    goto/16 :goto_d

    .line 9711
    :cond_157
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9714
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9715
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVilteEnable(IZ)V

    .line 9716
    goto/16 :goto_d

    .line 9691
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_158

    move v1, v2

    nop

    .line 9692
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_158
    if-eq v1, v2, :cond_159

    .line 9693
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9694
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9695
    goto/16 :goto_d

    .line 9696
    :cond_159
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9698
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9699
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9700
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWfcEnable(IZ)V

    .line 9701
    goto/16 :goto_d

    .line 9676
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15a

    move v1, v2

    nop

    .line 9677
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15a
    if-eq v1, v2, :cond_15b

    .line 9678
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9679
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9680
    goto/16 :goto_d

    .line 9681
    :cond_15b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9684
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9685
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVolteEnable(IZ)V

    .line 9686
    goto/16 :goto_d

    .line 9661
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15c

    move v1, v2

    nop

    .line 9662
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15c
    if-eq v1, v2, :cond_15d

    .line 9663
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9665
    goto/16 :goto_d

    .line 9666
    :cond_15d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9669
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9670
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsEnable(IZ)V

    .line 9671
    goto/16 :goto_d

    .line 9646
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15e

    move v1, v2

    nop

    .line 9647
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15e
    if-eq v1, v2, :cond_15f

    .line 9648
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9649
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9650
    goto/16 :goto_d

    .line 9651
    :cond_15f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9654
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9655
    .local v2, "cause":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsDeregNotification(II)V

    .line 9656
    goto/16 :goto_d

    .line 9631
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cause":I
    :pswitch_a6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_160

    move v1, v2

    nop

    .line 9632
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_160
    if-eq v1, v2, :cond_161

    .line 9633
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9635
    goto/16 :goto_d

    .line 9636
    :cond_161
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9639
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9640
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resumeCall(II)V

    .line 9641
    goto/16 :goto_d

    .line 9616
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_a7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_162

    move v1, v2

    nop

    .line 9617
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_162
    if-eq v1, v2, :cond_163

    .line 9618
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9619
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9620
    goto/16 :goto_d

    .line 9621
    :cond_163
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9624
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9625
    .restart local v2    # "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->holdCall(II)V

    .line 9626
    goto/16 :goto_d

    .line 9600
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_a8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_164

    move v1, v2

    nop

    .line 9601
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_164
    if-eq v1, v2, :cond_165

    .line 9602
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9604
    goto/16 :goto_d

    .line 9605
    :cond_165
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9608
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9609
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9610
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 9611
    goto/16 :goto_d

    .line 9584
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_a9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    move v1, v2

    nop

    .line 9585
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_166
    if-eq v1, v2, :cond_167

    .line 9586
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9588
    goto/16 :goto_d

    .line 9589
    :cond_167
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9592
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9593
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9594
    .local v3, "callId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->videoCallAccept(III)V

    .line 9595
    goto/16 :goto_d

    .line 9567
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_aa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_168

    goto :goto_8

    :cond_168
    move v2, v1

    .line 9568
    .local v2, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_169

    .line 9569
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9571
    goto/16 :goto_d

    .line 9572
    :cond_169
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v0

    .line 9575
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v3

    .line 9576
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 9577
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9579
    goto/16 :goto_d

    .line 9550
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_ab
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16a

    goto :goto_9

    :cond_16a
    move v2, v1

    .line 9551
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_16b

    .line 9552
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9554
    goto/16 :goto_d

    .line 9555
    :cond_16b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v0

    .line 9558
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v3

    .line 9559
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 9560
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9562
    goto/16 :goto_d

    .line 9533
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_ac
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16c

    goto :goto_a

    :cond_16c
    move v2, v1

    .line 9534
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_16d

    .line 9535
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9537
    goto/16 :goto_d

    .line 9538
    :cond_16d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v0

    .line 9541
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v3

    .line 9542
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 9543
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9545
    goto/16 :goto_d

    .line 9516
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_ad
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16e

    goto :goto_b

    :cond_16e
    move v2, v1

    .line 9517
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_16f

    .line 9518
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9520
    goto/16 :goto_d

    .line 9521
    :cond_16f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v0

    .line 9524
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v3

    .line 9525
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 9526
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9527
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9528
    goto/16 :goto_d

    .line 9500
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_ae
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_170

    move v1, v2

    nop

    .line 9501
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_170
    if-eq v1, v2, :cond_171

    .line 9502
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9504
    goto/16 :goto_d

    .line 9505
    :cond_171
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9508
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9509
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9510
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 9511
    goto/16 :goto_d

    .line 9477
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_af
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_172

    move v1, v2

    nop

    :cond_172
    move v10, v1

    .line 9478
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_173

    .line 9479
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9481
    goto/16 :goto_d

    .line 9482
    :cond_173
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9485
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9486
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 9487
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 9489
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 9490
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 9491
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 9492
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 9493
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 9494
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
    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9495
    goto/16 :goto_d

    .line 9457
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
    :pswitch_b0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_174

    move v1, v2

    nop

    :cond_174
    move v8, v1

    .line 9458
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_175

    .line 9459
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9460
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9461
    goto/16 :goto_d

    .line 9462
    :cond_175
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9465
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9466
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9467
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9468
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9469
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 9470
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9471
    .local v18, "accessNetwork":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 9472
    goto/16 :goto_d

    .line 9439
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_176

    move v1, v2

    nop

    :cond_176
    move v6, v1

    .line 9440
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_177

    .line 9441
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9443
    goto/16 :goto_d

    .line 9444
    :cond_177
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 9447
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9448
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9449
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 9450
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9451
    .local v11, "accessNetwork":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 9452
    goto/16 :goto_d

    .line 9424
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_178

    move v1, v2

    nop

    .line 9425
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_178
    if-eq v1, v2, :cond_179

    .line 9426
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9428
    goto/16 :goto_d

    .line 9429
    :cond_179
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9431
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9432
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9433
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 9434
    goto/16 :goto_d

    .line 9408
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17a

    move v1, v2

    nop

    .line 9409
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17a
    if-eq v1, v2, :cond_17b

    .line 9410
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9412
    goto/16 :goto_d

    .line 9413
    :cond_17b
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9416
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 9417
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9418
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 9419
    goto/16 :goto_d

    .line 9393
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17c

    move v1, v2

    nop

    .line 9394
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17c
    if-eq v1, v2, :cond_17d

    .line 9395
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9397
    goto/16 :goto_d

    .line 9398
    :cond_17d
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9401
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9402
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopKeepalive(II)V

    .line 9403
    goto/16 :goto_d

    .line 9377
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionHandle":I
    :pswitch_b5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17e

    move v1, v2

    nop

    .line 9378
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v1, v2, :cond_17f

    .line 9379
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9381
    goto/16 :goto_d

    .line 9382
    :cond_17f
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9385
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 9386
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9387
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 9388
    goto/16 :goto_d

    .line 9363
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_b6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_180

    move v1, v2

    nop

    .line 9364
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_180
    if-eq v1, v2, :cond_181

    .line 9365
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9367
    goto/16 :goto_d

    .line 9368
    :cond_181
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9371
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopNetworkScan(I)V

    .line 9372
    goto/16 :goto_d

    .line 9347
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_182

    move v1, v2

    nop

    .line 9348
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_182
    if-eq v1, v2, :cond_183

    .line 9349
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9351
    goto/16 :goto_d

    .line 9352
    :cond_183
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9355
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 9356
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9357
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 9358
    goto/16 :goto_d

    .line 9332
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_b8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_184

    move v1, v2

    nop

    .line 9333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_184
    if-eq v1, v2, :cond_185

    .line 9334
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9336
    goto/16 :goto_d

    .line 9337
    :cond_185
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9340
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9341
    .local v2, "powerUp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 9342
    goto/16 :goto_d

    .line 9316
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":I
    :pswitch_b9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_186

    move v1, v2

    nop

    .line 9317
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_186
    if-eq v1, v2, :cond_187

    .line 9318
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9320
    goto/16 :goto_d

    .line 9321
    :cond_187
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9324
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 9325
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9326
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 9327
    goto/16 :goto_d

    .line 9303
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_ba
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_188

    move v1, v2

    nop

    .line 9304
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_188
    if-eq v1, v2, :cond_189

    .line 9305
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9306
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9307
    goto/16 :goto_d

    .line 9308
    :cond_189
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9310
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->responseAcknowledgement()V

    .line 9311
    goto/16 :goto_d

    .line 9288
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    move v1, v2

    nop

    .line 9289
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18a
    if-eq v1, v2, :cond_18b

    .line 9290
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9292
    goto/16 :goto_d

    .line 9293
    :cond_18b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9296
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9297
    .local v2, "powerUp":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSimCardPower(IZ)V

    .line 9298
    goto/16 :goto_d

    .line 9273
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":Z
    :pswitch_bc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18c

    move v1, v2

    nop

    .line 9274
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18c
    if-eq v1, v2, :cond_18d

    .line 9275
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9277
    goto/16 :goto_d

    .line 9278
    :cond_18d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9281
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9282
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setIndicationFilter(II)V

    .line 9283
    goto/16 :goto_d

    .line 9257
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_bd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18e

    move v1, v2

    nop

    .line 9258
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18e
    if-eq v1, v2, :cond_18f

    .line 9259
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9261
    goto/16 :goto_d

    .line 9262
    :cond_18f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9265
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9266
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 9267
    .local v3, "state":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 9268
    goto/16 :goto_d

    .line 9243
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_be
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_190

    move v1, v2

    nop

    .line 9244
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_190
    if-eq v1, v2, :cond_191

    .line 9245
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9246
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9247
    goto/16 :goto_d

    .line 9248
    :cond_191
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9251
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAllowedCarriers(I)V

    .line 9252
    goto/16 :goto_d

    .line 9226
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_192

    move v1, v2

    nop

    .line 9227
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_192
    if-eq v1, v2, :cond_193

    .line 9228
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9230
    goto/16 :goto_d

    .line 9231
    :cond_193
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9234
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9235
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 9236
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v15}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9237
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 9238
    goto/16 :goto_d

    .line 9212
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_194

    move v1, v2

    nop

    .line 9213
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_194
    if-eq v1, v2, :cond_195

    .line 9214
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9216
    goto/16 :goto_d

    .line 9217
    :cond_195
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9220
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getModemActivityInfo(I)V

    .line 9221
    goto/16 :goto_d

    .line 9198
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_196

    move v1, v2

    nop

    .line 9199
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_196
    if-eq v1, v2, :cond_197

    .line 9200
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9202
    goto/16 :goto_d

    .line 9203
    :cond_197
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9206
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->pullLceData(I)V

    .line 9207
    goto/16 :goto_d

    .line 9184
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_198

    move v1, v2

    nop

    .line 9185
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_198
    if-eq v1, v2, :cond_199

    .line 9186
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9188
    goto/16 :goto_d

    .line 9189
    :cond_199
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9192
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopLceService(I)V

    .line 9193
    goto/16 :goto_d

    .line 9168
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19a

    move v1, v2

    nop

    .line 9169
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19a
    if-eq v1, v2, :cond_19b

    .line 9170
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9172
    goto/16 :goto_d

    .line 9173
    :cond_19b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9176
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9177
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 9178
    .local v3, "pullMode":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startLceService(IIZ)V

    .line 9179
    goto/16 :goto_d

    .line 9152
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19c

    move v1, v2

    nop

    .line 9153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19c
    if-eq v1, v2, :cond_19d

    .line 9154
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9156
    goto/16 :goto_d

    .line 9157
    :cond_19d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9160
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 9161
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9162
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 9163
    goto/16 :goto_d

    .line 9138
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19e

    move v1, v2

    nop

    .line 9139
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19e
    if-eq v1, v2, :cond_19f

    .line 9140
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9142
    goto/16 :goto_d

    .line 9143
    :cond_19f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9146
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getRadioCapability(I)V

    .line 9147
    goto/16 :goto_d

    .line 9124
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a0

    move v1, v2

    nop

    .line 9125
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a0
    if-eq v1, v2, :cond_1a1

    .line 9126
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9127
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9128
    goto/16 :goto_d

    .line 9129
    :cond_1a1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9132
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->requestShutdown(I)V

    .line 9133
    goto/16 :goto_d

    .line 9108
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a2

    move v1, v2

    nop

    .line 9109
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a2
    if-eq v1, v2, :cond_1a3

    .line 9110
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9112
    goto/16 :goto_d

    .line 9113
    :cond_1a3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9116
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 9117
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 9118
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 9119
    goto/16 :goto_d

    .line 9091
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_c8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a4

    move v1, v2

    nop

    .line 9092
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a4
    if-eq v1, v2, :cond_1a5

    .line 9093
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9095
    goto/16 :goto_d

    .line 9096
    :cond_1a5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9099
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9100
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9101
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9102
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 9103
    goto/16 :goto_d

    .line 9077
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_c9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a6

    move v1, v2

    nop

    .line 9078
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a6
    if-eq v1, v2, :cond_1a7

    .line 9079
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9081
    goto/16 :goto_d

    .line 9082
    :cond_1a7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9085
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getHardwareConfig(I)V

    .line 9086
    goto/16 :goto_d

    .line 9062
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ca
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a8

    move v1, v2

    nop

    .line 9063
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a8
    if-eq v1, v2, :cond_1a9

    .line 9064
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9066
    goto/16 :goto_d

    .line 9067
    :cond_1a9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9070
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9071
    .local v2, "allow":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setDataAllowed(IZ)V

    .line 9072
    goto/16 :goto_d

    .line 9046
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allow":Z
    :pswitch_cb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1aa

    move v1, v2

    nop

    .line 9047
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1aa
    if-eq v1, v2, :cond_1ab

    .line 9048
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9049
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9050
    goto/16 :goto_d

    .line 9051
    :cond_1ab
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9054
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 9055
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9056
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 9057
    goto/16 :goto_d

    .line 9031
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_cc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ac

    move v1, v2

    nop

    .line 9032
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ac
    if-eq v1, v2, :cond_1ad

    .line 9033
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9035
    goto/16 :goto_d

    .line 9036
    :cond_1ad
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9039
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9040
    .local v2, "resetType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvResetConfig(II)V

    .line 9041
    goto/16 :goto_d

    .line 9016
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resetType":I
    :pswitch_cd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ae

    move v1, v2

    nop

    .line 9017
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ae
    if-eq v1, v2, :cond_1af

    .line 9018
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9020
    goto/16 :goto_d

    .line 9021
    :cond_1af
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9024
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9025
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 9026
    goto/16 :goto_d

    .line 9000
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_ce
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b0

    move v1, v2

    nop

    .line 9001
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b0
    if-eq v1, v2, :cond_1b1

    .line 9002
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9004
    goto/16 :goto_d

    .line 9005
    :cond_1b1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9008
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 9009
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9010
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 9011
    goto/16 :goto_d

    .line 8985
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_cf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b2

    move v1, v2

    nop

    .line 8986
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b2
    if-eq v1, v2, :cond_1b3

    .line 8987
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8989
    goto/16 :goto_d

    .line 8990
    :cond_1b3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8993
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8994
    .local v2, "itemId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvReadItem(II)V

    .line 8995
    goto/16 :goto_d

    .line 8969
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "itemId":I
    :pswitch_d0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b4

    move v1, v2

    nop

    .line 8970
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b4
    if-eq v1, v2, :cond_1b5

    .line 8971
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8973
    goto/16 :goto_d

    .line 8974
    :cond_1b5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8977
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 8978
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8979
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 8980
    goto/16 :goto_d

    .line 8954
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b6

    move v1, v2

    nop

    .line 8955
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b6
    if-eq v1, v2, :cond_1b7

    .line 8956
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8957
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8958
    goto/16 :goto_d

    .line 8959
    :cond_1b7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8962
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8963
    .local v2, "channelId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 8964
    goto/16 :goto_d

    .line 8938
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    :pswitch_d2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b8

    move v1, v2

    nop

    .line 8939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b8
    if-eq v1, v2, :cond_1b9

    .line 8940
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8942
    goto/16 :goto_d

    .line 8943
    :cond_1b9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8946
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8947
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8948
    .local v3, "p2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 8949
    goto/16 :goto_d

    .line 8922
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ba

    move v1, v2

    nop

    .line 8923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ba
    if-eq v1, v2, :cond_1bb

    .line 8924
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8926
    goto/16 :goto_d

    .line 8927
    :cond_1bb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8930
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 8931
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8932
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 8933
    goto/16 :goto_d

    .line 8906
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bc

    move v1, v2

    nop

    .line 8907
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bc
    if-eq v1, v2, :cond_1bd

    .line 8908
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8910
    goto/16 :goto_d

    .line 8911
    :cond_1bd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8914
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 8915
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8916
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 8917
    goto/16 :goto_d

    .line 8892
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1be

    move v1, v2

    nop

    .line 8893
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1be
    if-eq v1, v2, :cond_1bf

    .line 8894
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8896
    goto/16 :goto_d

    .line 8897
    :cond_1bf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8899
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8900
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsRegistrationState(I)V

    .line 8901
    goto/16 :goto_d

    .line 8874
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c0

    move v1, v2

    nop

    .line 8875
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c0
    if-eq v1, v2, :cond_1c1

    .line 8876
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8878
    goto/16 :goto_d

    .line 8879
    :cond_1c1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8882
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 8883
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8885
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 8886
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 8887
    goto/16 :goto_d

    .line 8859
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_d7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c2

    move v1, v2

    nop

    .line 8860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c2
    if-eq v1, v2, :cond_1c3

    .line 8861
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8863
    goto/16 :goto_d

    .line 8864
    :cond_1c3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8867
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8868
    .local v2, "rate":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCellInfoListRate(II)V

    .line 8869
    goto/16 :goto_d

    .line 8845
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rate":I
    :pswitch_d8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c4

    move v1, v2

    nop

    .line 8846
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c4
    if-eq v1, v2, :cond_1c5

    .line 8847
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8849
    goto/16 :goto_d

    .line 8850
    :cond_1c5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8853
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCellInfoList(I)V

    .line 8854
    goto/16 :goto_d

    .line 8831
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c6

    move v1, v2

    nop

    .line 8832
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c6
    if-eq v1, v2, :cond_1c7

    .line 8833
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8835
    goto/16 :goto_d

    .line 8836
    :cond_1c7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8839
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 8840
    goto/16 :goto_d

    .line 8816
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_da
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c8

    move v1, v2

    nop

    .line 8817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c8
    if-eq v1, v2, :cond_1c9

    .line 8818
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8820
    goto/16 :goto_d

    .line 8821
    :cond_1c9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8824
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8825
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 8826
    goto/16 :goto_d

    .line 8800
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_db
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ca

    move v1, v2

    nop

    .line 8801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ca
    if-eq v1, v2, :cond_1cb

    .line 8802
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8804
    goto/16 :goto_d

    .line 8805
    :cond_1cb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8808
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8809
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8810
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 8811
    goto/16 :goto_d

    .line 8785
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_dc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cc

    move v1, v2

    nop

    .line 8786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cc
    if-eq v1, v2, :cond_1cd

    .line 8787
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8789
    goto/16 :goto_d

    .line 8790
    :cond_1cd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8793
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8794
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 8795
    goto/16 :goto_d

    .line 8771
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_dd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ce

    move v1, v2

    nop

    .line 8772
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ce
    if-eq v1, v2, :cond_1cf

    .line 8773
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8775
    goto/16 :goto_d

    .line 8776
    :cond_1cf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8779
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 8780
    goto/16 :goto_d

    .line 8757
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_de
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d0

    move v1, v2

    nop

    .line 8758
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d0
    if-eq v1, v2, :cond_1d1

    .line 8759
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8761
    goto/16 :goto_d

    .line 8762
    :cond_1d1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8765
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 8766
    goto/16 :goto_d

    .line 8742
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_df
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d2

    move v1, v2

    nop

    .line 8743
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d2
    if-eq v1, v2, :cond_1d3

    .line 8744
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8746
    goto/16 :goto_d

    .line 8747
    :cond_1d3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8750
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8751
    .local v2, "available":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 8752
    goto/16 :goto_d

    .line 8727
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "available":Z
    :pswitch_e0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d4

    move v1, v2

    nop

    .line 8728
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d4
    if-eq v1, v2, :cond_1d5

    .line 8729
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8731
    goto/16 :goto_d

    .line 8732
    :cond_1d5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8735
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8736
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 8737
    goto/16 :goto_d

    .line 8713
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d6

    move v1, v2

    nop

    .line 8714
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d6
    if-eq v1, v2, :cond_1d7

    .line 8715
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8717
    goto/16 :goto_d

    .line 8718
    :cond_1d7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8721
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmscAddress(I)V

    .line 8722
    goto/16 :goto_d

    .line 8699
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d8

    move v1, v2

    nop

    .line 8700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d8
    if-eq v1, v2, :cond_1d9

    .line 8701
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8703
    goto/16 :goto_d

    .line 8704
    :cond_1d9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8707
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 8708
    goto/16 :goto_d

    .line 8685
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1da

    move v1, v2

    nop

    .line 8686
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1da
    if-eq v1, v2, :cond_1db

    .line 8687
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8688
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8689
    goto/16 :goto_d

    .line 8690
    :cond_1db
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8693
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDeviceIdentity(I)V

    .line 8694
    goto/16 :goto_d

    .line 8670
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1dc

    move v1, v2

    nop

    .line 8671
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1dc
    if-eq v1, v2, :cond_1dd

    .line 8672
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8674
    goto/16 :goto_d

    .line 8675
    :cond_1dd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8678
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8679
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 8680
    goto/16 :goto_d

    .line 8654
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_e5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1de

    move v1, v2

    nop

    .line 8655
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1de
    if-eq v1, v2, :cond_1df

    .line 8656
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8658
    goto/16 :goto_d

    .line 8659
    :cond_1df
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8662
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 8663
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8664
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 8665
    goto/16 :goto_d

    .line 8640
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_e6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e0

    move v1, v2

    nop

    .line 8641
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e0
    if-eq v1, v2, :cond_1e1

    .line 8642
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8644
    goto/16 :goto_d

    .line 8645
    :cond_1e1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8648
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCDMASubscription(I)V

    .line 8649
    goto/16 :goto_d

    .line 8625
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e2

    move v1, v2

    nop

    .line 8626
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e2
    if-eq v1, v2, :cond_1e3

    .line 8627
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8629
    goto/16 :goto_d

    .line 8630
    :cond_1e3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8633
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8634
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 8635
    goto/16 :goto_d

    .line 8610
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_e8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e4

    move v1, v2

    nop

    .line 8611
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e4
    if-eq v1, v2, :cond_1e5

    .line 8612
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8614
    goto/16 :goto_d

    .line 8615
    :cond_1e5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8618
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8619
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 8620
    goto/16 :goto_d

    .line 8596
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_e9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e6

    move v1, v2

    nop

    .line 8597
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e6
    if-eq v1, v2, :cond_1e7

    .line 8598
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8600
    goto/16 :goto_d

    .line 8601
    :cond_1e7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8604
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 8605
    goto/16 :goto_d

    .line 8581
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ea
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e8

    move v1, v2

    nop

    .line 8582
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e8
    if-eq v1, v2, :cond_1e9

    .line 8583
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8585
    goto/16 :goto_d

    .line 8586
    :cond_1e9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8589
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8590
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 8591
    goto/16 :goto_d

    .line 8566
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_eb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ea

    move v1, v2

    nop

    .line 8567
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ea
    if-eq v1, v2, :cond_1eb

    .line 8568
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8570
    goto/16 :goto_d

    .line 8571
    :cond_1eb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8574
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8575
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 8576
    goto/16 :goto_d

    .line 8552
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_ec
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ec

    move v1, v2

    nop

    .line 8553
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ec
    if-eq v1, v2, :cond_1ed

    .line 8554
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8556
    goto/16 :goto_d

    .line 8557
    :cond_1ed
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8560
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 8561
    goto/16 :goto_d

    .line 8536
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ed
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ee

    move v1, v2

    nop

    .line 8537
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ee
    if-eq v1, v2, :cond_1ef

    .line 8538
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8540
    goto/16 :goto_d

    .line 8541
    :cond_1ef
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8544
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 8545
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8546
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 8547
    goto/16 :goto_d

    .line 8520
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_ee
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f0

    move v1, v2

    nop

    .line 8521
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f0
    if-eq v1, v2, :cond_1f1

    .line 8522
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8523
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8524
    goto/16 :goto_d

    .line 8525
    :cond_1f1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8528
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 8529
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8530
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 8531
    goto/16 :goto_d

    .line 8503
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_ef
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f2

    move v1, v2

    nop

    .line 8504
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f2
    if-eq v1, v2, :cond_1f3

    .line 8505
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8507
    goto/16 :goto_d

    .line 8508
    :cond_1f3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8511
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8512
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8513
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8514
    .local v4, "off":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 8515
    goto/16 :goto_d

    .line 8488
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f4

    move v1, v2

    nop

    .line 8489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f4
    if-eq v1, v2, :cond_1f5

    .line 8490
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8492
    goto/16 :goto_d

    .line 8493
    :cond_1f5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8496
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8497
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 8498
    goto/16 :goto_d

    .line 8474
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f6

    move v1, v2

    nop

    .line 8475
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f6
    if-eq v1, v2, :cond_1f7

    .line 8476
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8477
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8478
    goto/16 :goto_d

    .line 8479
    :cond_1f7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8482
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 8483
    goto/16 :goto_d

    .line 8459
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f8

    move v1, v2

    nop

    .line 8460
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f8
    if-eq v1, v2, :cond_1f9

    .line 8461
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8463
    goto/16 :goto_d

    .line 8464
    :cond_1f9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8467
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8468
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 8469
    goto/16 :goto_d

    .line 8445
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_f3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fa

    move v1, v2

    nop

    .line 8446
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fa
    if-eq v1, v2, :cond_1fb

    .line 8447
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8449
    goto/16 :goto_d

    .line 8450
    :cond_1fb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8453
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getTTYMode(I)V

    .line 8454
    goto/16 :goto_d

    .line 8430
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fc

    move v1, v2

    nop

    .line 8431
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fc
    if-eq v1, v2, :cond_1fd

    .line 8432
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8434
    goto/16 :goto_d

    .line 8435
    :cond_1fd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8438
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8439
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setTTYMode(II)V

    .line 8440
    goto/16 :goto_d

    .line 8416
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_f5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fe

    move v1, v2

    nop

    .line 8417
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fe
    if-eq v1, v2, :cond_1ff

    .line 8418
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8420
    goto/16 :goto_d

    .line 8421
    :cond_1ff
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8424
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 8425
    goto/16 :goto_d

    .line 8401
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_200

    move v1, v2

    nop

    .line 8402
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_200
    if-eq v1, v2, :cond_201

    .line 8403
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8405
    goto/16 :goto_d

    .line 8406
    :cond_201
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8409
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8410
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 8411
    goto/16 :goto_d

    .line 8386
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_f7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_202

    move v1, v2

    nop

    .line 8387
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_202
    if-eq v1, v2, :cond_203

    .line 8388
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8389
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8390
    goto/16 :goto_d

    .line 8391
    :cond_203
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8394
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8395
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 8396
    goto/16 :goto_d

    .line 8371
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSub":I
    :pswitch_f8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_204

    move v1, v2

    nop

    .line 8372
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_204
    if-eq v1, v2, :cond_205

    .line 8373
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8375
    goto/16 :goto_d

    .line 8376
    :cond_205
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8379
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8380
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 8381
    goto/16 :goto_d

    .line 8357
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_f9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_206

    move v1, v2

    nop

    .line 8358
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_206
    if-eq v1, v2, :cond_207

    .line 8359
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8361
    goto/16 :goto_d

    .line 8362
    :cond_207
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8365
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getNeighboringCids(I)V

    .line 8366
    goto/16 :goto_d

    .line 8343
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_208

    move v1, v2

    nop

    .line 8344
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_208
    if-eq v1, v2, :cond_209

    .line 8345
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8347
    goto/16 :goto_d

    .line 8348
    :cond_209
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8351
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 8352
    goto/16 :goto_d

    .line 8328
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20a

    move v1, v2

    nop

    .line 8329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20a
    if-eq v1, v2, :cond_20b

    .line 8330
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8332
    goto/16 :goto_d

    .line 8333
    :cond_20b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8336
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8337
    .local v2, "nwType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 8338
    goto/16 :goto_d

    .line 8314
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_fc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20c

    move v1, v2

    nop

    .line 8315
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20c
    if-eq v1, v2, :cond_20d

    .line 8316
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8318
    goto/16 :goto_d

    .line 8319
    :cond_20d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8322
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->explicitCallTransfer(I)V

    .line 8323
    goto/16 :goto_d

    .line 8299
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20e

    move v1, v2

    nop

    .line 8300
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20e
    if-eq v1, v2, :cond_20f

    .line 8301
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8303
    goto/16 :goto_d

    .line 8304
    :cond_20f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8307
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8308
    .local v2, "accept":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 8309
    goto/16 :goto_d

    .line 8284
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accept":Z
    :pswitch_fe
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_210

    move v1, v2

    nop

    .line 8285
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_210
    if-eq v1, v2, :cond_211

    .line 8286
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8288
    goto/16 :goto_d

    .line 8289
    :cond_211
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8292
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8293
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 8294
    goto/16 :goto_d

    .line 8269
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_ff
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_212

    move v1, v2

    nop

    .line 8270
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_212
    if-eq v1, v2, :cond_213

    .line 8271
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8272
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8273
    goto/16 :goto_d

    .line 8274
    :cond_213
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8277
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8278
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 8279
    goto/16 :goto_d

    .line 8255
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_100
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_214

    move v1, v2

    nop

    .line 8256
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_214
    if-eq v1, v2, :cond_215

    .line 8257
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8259
    goto/16 :goto_d

    .line 8260
    :cond_215
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8263
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAvailableBandModes(I)V

    .line 8264
    goto/16 :goto_d

    .line 8240
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_101
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_216

    move v1, v2

    nop

    .line 8241
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_216
    if-eq v1, v2, :cond_217

    .line 8242
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8244
    goto/16 :goto_d

    .line 8245
    :cond_217
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8248
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8249
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setBandMode(II)V

    .line 8250
    goto/16 :goto_d

    .line 8225
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_102
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_218

    move v1, v2

    nop

    .line 8226
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_218
    if-eq v1, v2, :cond_219

    .line 8227
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8229
    goto/16 :goto_d

    .line 8230
    :cond_219
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8233
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8234
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 8235
    goto/16 :goto_d

    .line 8209
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_103
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21a

    move v1, v2

    nop

    .line 8210
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21a
    if-eq v1, v2, :cond_21b

    .line 8211
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8212
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8213
    goto/16 :goto_d

    .line 8214
    :cond_21b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8217
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 8218
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8219
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 8220
    goto/16 :goto_d

    .line 8194
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_104
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21c

    move v1, v2

    nop

    .line 8195
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21c
    if-eq v1, v2, :cond_21d

    .line 8196
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8198
    goto/16 :goto_d

    .line 8199
    :cond_21d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8202
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8203
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 8204
    goto/16 :goto_d

    .line 8180
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_105
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21e

    move v1, v2

    nop

    .line 8181
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21e
    if-eq v1, v2, :cond_21f

    .line 8182
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8184
    goto/16 :goto_d

    .line 8185
    :cond_21f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8188
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDataCallList(I)V

    .line 8189
    goto/16 :goto_d

    .line 8166
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_106
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_220

    move v1, v2

    nop

    .line 8167
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_220
    if-eq v1, v2, :cond_221

    .line 8168
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8170
    goto/16 :goto_d

    .line 8171
    :cond_221
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8174
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getClip(I)V

    .line 8175
    goto/16 :goto_d

    .line 8152
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_107
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_222

    move v1, v2

    nop

    .line 8153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_222
    if-eq v1, v2, :cond_223

    .line 8154
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8156
    goto/16 :goto_d

    .line 8157
    :cond_223
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8160
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getMute(I)V

    .line 8161
    goto/16 :goto_d

    .line 8137
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_108
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_224

    move v1, v2

    nop

    .line 8138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_224
    if-eq v1, v2, :cond_225

    .line 8139
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8141
    goto/16 :goto_d

    .line 8142
    :cond_225
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8145
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8146
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setMute(IZ)V

    .line 8147
    goto/16 :goto_d

    .line 8122
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_109
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_226

    move v1, v2

    nop

    .line 8123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_226
    if-eq v1, v2, :cond_227

    .line 8124
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8126
    goto/16 :goto_d

    .line 8127
    :cond_227
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8130
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8131
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->separateConnection(II)V

    .line 8132
    goto/16 :goto_d

    .line 8108
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_10a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_228

    move v1, v2

    nop

    .line 8109
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_228
    if-eq v1, v2, :cond_229

    .line 8110
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8112
    goto/16 :goto_d

    .line 8113
    :cond_229
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8116
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getBasebandVersion(I)V

    .line 8117
    goto/16 :goto_d

    .line 8094
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22a

    move v1, v2

    nop

    .line 8095
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22a
    if-eq v1, v2, :cond_22b

    .line 8096
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8098
    goto/16 :goto_d

    .line 8099
    :cond_22b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8102
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopDtmf(I)V

    .line 8103
    goto/16 :goto_d

    .line 8079
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22c

    move v1, v2

    nop

    .line 8080
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22c
    if-eq v1, v2, :cond_22d

    .line 8081
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8083
    goto/16 :goto_d

    .line 8084
    :cond_22d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8087
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8088
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 8089
    goto/16 :goto_d

    .line 8065
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_10d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22e

    move v1, v2

    nop

    .line 8066
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22e
    if-eq v1, v2, :cond_22f

    .line 8067
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8069
    goto/16 :goto_d

    .line 8070
    :cond_22f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8072
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8073
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAvailableNetworks(I)V

    .line 8074
    goto/16 :goto_d

    .line 8050
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_230

    move v1, v2

    nop

    .line 8051
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_230
    if-eq v1, v2, :cond_231

    .line 8052
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8053
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8054
    goto/16 :goto_d

    .line 8055
    :cond_231
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8057
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8058
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8059
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 8060
    goto/16 :goto_d

    .line 8036
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_10f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_232

    move v1, v2

    nop

    .line 8037
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_232
    if-eq v1, v2, :cond_233

    .line 8038
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8040
    goto/16 :goto_d

    .line 8041
    :cond_233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8044
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 8045
    goto/16 :goto_d

    .line 8022
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_110
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_234

    move v1, v2

    nop

    .line 8023
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_234
    if-eq v1, v2, :cond_235

    .line 8024
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8025
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8026
    goto/16 :goto_d

    .line 8027
    :cond_235
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8030
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 8031
    goto/16 :goto_d

    .line 8005
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_111
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_236

    move v1, v2

    nop

    .line 8006
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_236
    if-eq v1, v2, :cond_237

    .line 8007
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8009
    goto/16 :goto_d

    .line 8010
    :cond_237
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8013
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8014
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8015
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8016
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8017
    goto/16 :goto_d

    .line 7986
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_112
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_238

    move v1, v2

    nop

    :cond_238
    move v7, v1

    .line 7987
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_239

    .line 7988
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7989
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7990
    goto/16 :goto_d

    .line 7991
    :cond_239
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7993
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7994
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7995
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 7996
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 7997
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7998
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7999
    .local v16, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 8000
    goto/16 :goto_d

    .line 7968
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_113
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23a

    move v1, v2

    nop

    :cond_23a
    move v6, v1

    .line 7969
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_23b

    .line 7970
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7972
    goto/16 :goto_d

    .line 7973
    :cond_23b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7976
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 7977
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7978
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7979
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 7980
    .local v11, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7981
    goto/16 :goto_d

    .line 7952
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_114
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23c

    move v1, v2

    nop

    .line 7953
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23c
    if-eq v1, v2, :cond_23d

    .line 7954
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7956
    goto/16 :goto_d

    .line 7957
    :cond_23d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7960
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7961
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7962
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 7963
    goto/16 :goto_d

    .line 7938
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_115
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23e

    move v1, v2

    nop

    .line 7939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23e
    if-eq v1, v2, :cond_23f

    .line 7940
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7942
    goto/16 :goto_d

    .line 7943
    :cond_23f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7946
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acceptCall(I)V

    .line 7947
    goto/16 :goto_d

    .line 7922
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_116
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_240

    move v1, v2

    nop

    .line 7923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_240
    if-eq v1, v2, :cond_241

    .line 7924
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7926
    goto/16 :goto_d

    .line 7927
    :cond_241
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7930
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7931
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7932
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 7933
    goto/16 :goto_d

    .line 7906
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_117
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_242

    move v1, v2

    nop

    .line 7907
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_242
    if-eq v1, v2, :cond_243

    .line 7908
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7910
    goto/16 :goto_d

    .line 7911
    :cond_243
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7914
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7915
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7916
    .local v3, "serviceClass":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallWaiting(IZI)V

    .line 7917
    goto/16 :goto_d

    .line 7891
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_118
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_244

    move v1, v2

    nop

    .line 7892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v1, v2, :cond_245

    .line 7893
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7895
    goto/16 :goto_d

    .line 7896
    :cond_245
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7899
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7900
    .local v2, "serviceClass":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCallWaiting(II)V

    .line 7901
    goto/16 :goto_d

    .line 7875
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_119
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_246

    move v1, v2

    nop

    .line 7876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_246
    if-eq v1, v2, :cond_247

    .line 7877
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7879
    goto/16 :goto_d

    .line 7880
    :cond_247
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7883
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 7884
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7885
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 7886
    goto/16 :goto_d

    .line 7859
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_248

    move v1, v2

    nop

    .line 7860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_248
    if-eq v1, v2, :cond_249

    .line 7861
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7863
    goto/16 :goto_d

    .line 7864
    :cond_249
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7867
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 7868
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7869
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 7870
    goto/16 :goto_d

    .line 7844
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24a

    move v1, v2

    nop

    .line 7845
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24a
    if-eq v1, v2, :cond_24b

    .line 7846
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7848
    goto/16 :goto_d

    .line 7849
    :cond_24b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7852
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7853
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setClir(II)V

    .line 7854
    goto/16 :goto_d

    .line 7830
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_11c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24c

    move v1, v2

    nop

    .line 7831
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24c
    if-eq v1, v2, :cond_24d

    .line 7832
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7834
    goto/16 :goto_d

    .line 7835
    :cond_24d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7838
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getClir(I)V

    .line 7839
    goto/16 :goto_d

    .line 7816
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24e

    move v1, v2

    nop

    .line 7817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24e
    if-eq v1, v2, :cond_24f

    .line 7818
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7820
    goto/16 :goto_d

    .line 7821
    :cond_24f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7824
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->cancelPendingUssd(I)V

    .line 7825
    goto/16 :goto_d

    .line 7801
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_250

    move v1, v2

    nop

    .line 7802
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_250
    if-eq v1, v2, :cond_251

    .line 7803
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7805
    goto/16 :goto_d

    .line 7806
    :cond_251
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7809
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7810
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 7811
    goto/16 :goto_d

    .line 7785
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_11f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_252

    move v1, v2

    nop

    .line 7786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_252
    if-eq v1, v2, :cond_253

    .line 7787
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7789
    goto/16 :goto_d

    .line 7790
    :cond_253
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7793
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 7794
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7795
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 7796
    goto/16 :goto_d

    .line 7765
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_120
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_254

    move v1, v2

    nop

    :cond_254
    move v7, v1

    .line 7766
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_255

    .line 7767
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7769
    goto/16 :goto_d

    .line 7770
    :cond_255
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7773
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7774
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 7775
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 7777
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 7778
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 7779
    .local v16, "isRoaming":Z
    move-object v0, v13

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 7780
    goto/16 :goto_d

    .line 7749
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_121
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_256

    move v1, v2

    nop

    .line 7750
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_256
    if-eq v1, v2, :cond_257

    .line 7751
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7753
    goto/16 :goto_d

    .line 7754
    :cond_257
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7757
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 7758
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7759
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 7760
    goto/16 :goto_d

    .line 7733
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_122
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_258

    move v1, v2

    nop

    .line 7734
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_258
    if-eq v1, v2, :cond_259

    .line 7735
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7737
    goto/16 :goto_d

    .line 7738
    :cond_259
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7741
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 7742
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7743
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 7744
    goto/16 :goto_d

    .line 7718
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_123
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25a

    move v1, v2

    nop

    .line 7719
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25a
    if-eq v1, v2, :cond_25b

    .line 7720
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7721
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7722
    goto/16 :goto_d

    .line 7723
    :cond_25b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7726
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7727
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 7728
    goto/16 :goto_d

    .line 7703
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_124
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25c

    move v1, v2

    nop

    .line 7704
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25c
    if-eq v1, v2, :cond_25d

    .line 7705
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7707
    goto/16 :goto_d

    .line 7708
    :cond_25d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7711
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7712
    .local v2, "on":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRadioPower(IZ)V

    .line 7713
    goto/16 :goto_d

    .line 7689
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_125
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25e

    move v1, v2

    nop

    .line 7690
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25e
    if-eq v1, v2, :cond_25f

    .line 7691
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7692
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7693
    goto/16 :goto_d

    .line 7694
    :cond_25f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7697
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getOperator(I)V

    .line 7698
    goto/16 :goto_d

    .line 7675
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_126
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_260

    move v1, v2

    nop

    .line 7676
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_260
    if-eq v1, v2, :cond_261

    .line 7677
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7679
    goto/16 :goto_d

    .line 7680
    :cond_261
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7683
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDataRegistrationState(I)V

    .line 7684
    goto/16 :goto_d

    .line 7661
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_127
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_262

    move v1, v2

    nop

    .line 7662
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_262
    if-eq v1, v2, :cond_263

    .line 7663
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7665
    goto/16 :goto_d

    .line 7666
    :cond_263
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7669
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 7670
    goto/16 :goto_d

    .line 7647
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_128
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_264

    move v1, v2

    nop

    .line 7648
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_264
    if-eq v1, v2, :cond_265

    .line 7649
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7651
    goto/16 :goto_d

    .line 7652
    :cond_265
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7655
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSignalStrength(I)V

    .line 7656
    goto/16 :goto_d

    .line 7633
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_129
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_266

    move v1, v2

    nop

    .line 7634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_266
    if-eq v1, v2, :cond_267

    .line 7635
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7637
    goto/16 :goto_d

    .line 7638
    :cond_267
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7641
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getLastCallFailCause(I)V

    .line 7642
    goto/16 :goto_d

    .line 7619
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_268

    move v1, v2

    nop

    .line 7620
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_268
    if-eq v1, v2, :cond_269

    .line 7621
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7623
    goto/16 :goto_d

    .line 7624
    :cond_269
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7627
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->rejectCall(I)V

    .line 7628
    goto/16 :goto_d

    .line 7605
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26a

    move v1, v2

    nop

    .line 7606
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26a
    if-eq v1, v2, :cond_26b

    .line 7607
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7609
    goto/16 :goto_d

    .line 7610
    :cond_26b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7613
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->conference(I)V

    .line 7614
    goto/16 :goto_d

    .line 7591
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26c

    move v1, v2

    nop

    .line 7592
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26c
    if-eq v1, v2, :cond_26d

    .line 7593
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7594
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7595
    goto/16 :goto_d

    .line 7596
    :cond_26d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7599
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 7600
    goto/16 :goto_d

    .line 7577
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26e

    move v1, v2

    nop

    .line 7578
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26e
    if-eq v1, v2, :cond_26f

    .line 7579
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7581
    goto/16 :goto_d

    .line 7582
    :cond_26f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7585
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 7586
    goto/16 :goto_d

    .line 7563
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_270

    move v1, v2

    nop

    .line 7564
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_270
    if-eq v1, v2, :cond_271

    .line 7565
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7567
    goto/16 :goto_d

    .line 7568
    :cond_271
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7571
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 7572
    goto/16 :goto_d

    .line 7548
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_272

    move v1, v2

    nop

    .line 7549
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_272
    if-eq v1, v2, :cond_273

    .line 7550
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7552
    goto/16 :goto_d

    .line 7553
    :cond_273
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7556
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7557
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangup(II)V

    .line 7558
    goto/16 :goto_d

    .line 7533
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_130
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_274

    move v1, v2

    nop

    .line 7534
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_274
    if-eq v1, v2, :cond_275

    .line 7535
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7537
    goto/16 :goto_d

    .line 7538
    :cond_275
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7541
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7542
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 7543
    goto/16 :goto_d

    .line 7517
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_131
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_276

    move v1, v2

    nop

    .line 7518
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_276
    if-eq v1, v2, :cond_277

    .line 7519
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7521
    goto/16 :goto_d

    .line 7522
    :cond_277
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7525
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 7526
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7527
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 7528
    goto/16 :goto_d

    .line 7503
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_132
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_278

    move v1, v2

    nop

    .line 7504
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_278
    if-eq v1, v2, :cond_279

    .line 7505
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7507
    goto/16 :goto_d

    .line 7508
    :cond_279
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7511
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCurrentCalls(I)V

    .line 7512
    goto/16 :goto_d

    .line 7488
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_133
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27a

    move v1, v2

    nop

    .line 7489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27a
    if-eq v1, v2, :cond_27b

    .line 7490
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7492
    goto/16 :goto_d

    .line 7493
    :cond_27b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7496
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7497
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 7498
    goto/16 :goto_d

    .line 7471
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_134
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27c

    move v1, v2

    nop

    .line 7472
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27c
    if-eq v1, v2, :cond_27d

    .line 7473
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7474
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7475
    goto/16 :goto_d

    .line 7476
    :cond_27d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7479
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7480
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7481
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7482
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7483
    goto/16 :goto_d

    .line 7454
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_135
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27e

    move v1, v2

    nop

    .line 7455
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27e
    if-eq v1, v2, :cond_27f

    .line 7456
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7458
    goto/16 :goto_d

    .line 7459
    :cond_27f
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
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7464
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7465
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7466
    goto/16 :goto_d

    .line 7437
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_136
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_280

    move v1, v2

    nop

    .line 7438
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_280
    if-eq v1, v2, :cond_281

    .line 7439
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7441
    goto/16 :goto_d

    .line 7442
    :cond_281
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7445
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7446
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7447
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7448
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7449
    goto/16 :goto_d

    .line 7421
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_137
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_282

    move v1, v2

    nop

    .line 7422
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_282
    if-eq v1, v2, :cond_283

    .line 7423
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7425
    goto/16 :goto_d

    .line 7426
    :cond_283
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7429
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7430
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7431
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 7432
    goto/16 :goto_d

    .line 7404
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_138
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_284

    move v1, v2

    nop

    .line 7405
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_284
    if-eq v1, v2, :cond_285

    .line 7406
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7408
    goto/16 :goto_d

    .line 7409
    :cond_285
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7412
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7413
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7414
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7415
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7416
    goto/16 :goto_d

    .line 7388
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_139
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_286

    move v1, v2

    nop

    .line 7389
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_286
    if-eq v1, v2, :cond_287

    .line 7390
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7392
    goto :goto_d

    .line 7393
    :cond_287
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7396
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7397
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7398
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 7399
    goto :goto_d

    .line 7374
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_288

    move v1, v2

    nop

    .line 7375
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_288
    if-eq v1, v2, :cond_289

    .line 7376
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7377
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7378
    goto :goto_d

    .line 7379
    :cond_289
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7382
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getIccCardStatus(I)V

    .line 7383
    goto :goto_d

    .line 7357
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28a

    goto :goto_c

    :cond_28a
    move v2, v1

    .line 7358
    .local v2, "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_28b

    .line 7359
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7361
    goto :goto_d

    .line 7362
    :cond_28b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 7365
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 7366
    .local v3, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 7367
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7369
    nop

    .line 12375
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 7310
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 7336
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7337
    return-object p0

    .line 7339
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

    .line 7343
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 7344
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 7301
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 7330
    const/4 v0, 0x1

    return v0
.end method
