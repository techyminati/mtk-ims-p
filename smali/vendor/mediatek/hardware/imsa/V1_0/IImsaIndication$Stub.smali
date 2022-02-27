.class public abstract Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsaIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 286
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 328
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 329
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 330
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 331
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 332
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

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x2ft
        -0x22t
        0x54t
        -0x7ft
        -0x7et
        0x78t
        -0x49t
        -0x7ft
        -0x4bt
        -0x2bt
        -0x7et
        -0x14t
        0x52t
        0x6dt
        0x7ct
        -0x22t
        -0x77t
        0x4dt
        -0x20t
        0x76t
        -0x3dt
        0x41t
        0x54t
        0x4ft
        -0x58t
        -0x56t
        -0x67t
        0x32t
        -0x17t
        0x16t
        -0x65t
        -0x40t
    .end array-data

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.imsa@1.0::IImsaIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 298
    const-string v0, "vendor.mediatek.hardware.imsa@1.0::IImsaIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 337
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 338
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

    .line 366
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 531
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 532
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_15

    .line 533
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 535
    goto/16 :goto_7

    .line 518
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 519
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 520
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 522
    goto/16 :goto_7

    .line 523
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->notifySyspropsChanged()V

    .line 526
    goto/16 :goto_7

    .line 502
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 503
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 504
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 506
    goto/16 :goto_7

    .line 507
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 510
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 511
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 513
    goto/16 :goto_7

    .line 487
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 488
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 489
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 491
    goto/16 :goto_7

    .line 492
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->ping()V

    .line 495
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 496
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 497
    goto/16 :goto_7

    .line 477
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 478
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_15

    .line 479
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 481
    goto/16 :goto_7

    .line 464
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 466
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 468
    goto/16 :goto_7

    .line 469
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->setHALInstrumentation()V

    .line 472
    goto/16 :goto_7

    .line 431
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 432
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 433
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 435
    goto/16 :goto_7

    .line 436
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 439
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 441
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 443
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 444
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 445
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 446
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 447
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 449
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 450
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 451
    nop

    .line 447
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 454
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 456
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 458
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 459
    goto/16 :goto_7

    .line 415
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 416
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 417
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 418
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 419
    goto/16 :goto_7

    .line 420
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 424
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 426
    goto/16 :goto_7

    .line 401
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 402
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 403
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 404
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 405
    goto :goto_7

    .line 406
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 410
    goto :goto_7

    .line 385
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 386
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 387
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 388
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 389
    goto :goto_7

    .line 390
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 393
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 394
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 395
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 396
    goto :goto_7

    .line 369
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 370
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 371
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 372
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 373
    goto :goto_7

    .line 374
    :cond_14
    const-string v0, "vendor.mediatek.hardware.imsa@1.0::IImsaIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 377
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 378
    .local v2, "offset":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 379
    .local v3, "length":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->readEvent(Ljava/util/ArrayList;II)V

    .line 380
    nop

    .line 540
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "offset":I
    .end local v3    # "length":I
    :cond_15
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
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

    .line 322
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 348
    const-string v0, "vendor.mediatek.hardware.imsa@1.0::IImsaIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    return-object p0

    .line 351
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

    .line 355
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 313
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 342
    const/4 v0, 0x1

    return v0
.end method
