.class public abstract Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;
.super Landroid/os/HwBinder;
.source "ISap.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_5/ISap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_5/ISap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 419
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 477
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 478
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 479
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 480
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 481
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

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

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

    new-array v3, v2, [B

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x8t
        -0x58t
        0x3at
        -0x7bt
        0x6t
        -0x29t
        0x5ft
        0x3et
        0x49t
        0x71t
        -0x1dt
        0x3ft
        0x76t
        0x72t
        0x65t
        -0x4ft
        0x6bt
        -0x50t
        -0x10t
        -0x42t
        0x5ct
        0x16t
        -0x7bt
        0x6ft
        0x40t
        -0xft
        0x1et
        -0x65t
        -0x64t
        0x78t
        0x23t
        -0x7et
    .end array-data

    :array_1
    .array-data 1
        -0x69t
        -0xet
        -0x29t
        -0x4et
        0x70t
        -0x16t
        -0x32t
        0x67t
        0x65t
        0x23t
        0x28t
        0x25t
        -0x57t
        -0x40t
        -0x78t
        0x3bt
        0xet
        0x13t
        0x5t
        0x74t
        -0x6dt
        -0x9t
        -0x69t
        -0x26t
        0x6et
        -0x16t
        0xft
        0x1ft
        0xdt
        -0x5at
        -0x4ct
        0x48t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        -0x29t
        0x17t
        -0x34t
        0x4t
        0x6t
        0x33t
        0x55t
        0x24t
        -0x47t
        -0x3ft
        -0x1ct
        0x60t
        -0x11t
        0x5ct
        -0x47t
        -0x58t
        -0x26t
        -0x79t
        -0x78t
        0x56t
        0x0t
        0x1dt
        -0x44t
        -0x6at
        -0x4et
        -0x35t
        -0x3bt
        -0x73t
        -0xat
        0x6at
        0x1ct
    .end array-data

    :array_3
    .array-data 1
        0x57t
        0x30t
        0x21t
        0xft
        0x24t
        0x5ct
        0x34t
        -0x44t
        0x51t
        -0x22t
        0x1ft
        -0xdt
        0x37t
        0x0t
        0x2dt
        0x8t
        0x53t
        0x52t
        -0x59t
        -0x60t
        0x7at
        0x78t
        -0x6et
        -0x40t
        0x33t
        -0x35t
        0x62t
        -0x5ct
        0x4et
        0x5at
        -0x3et
        -0x70t
    .end array-data

    :array_4
    .array-data 1
        0x43t
        -0x43t
        0x2ct
        0x58t
        -0x31t
        -0x46t
        0x41t
        -0x1ct
        0x6t
        -0x37t
        0x37t
        0x5ct
        0x53t
        -0x45t
        -0x46t
        -0x70t
        -0xat
        0x1ft
        0x73t
        0x3bt
        -0x1t
        -0x41t
        -0x7dt
        -0x31t
        -0xat
        -0x76t
        0x3dt
        0x6at
        -0x7bt
        -0x4dt
        -0x80t
        -0x75t
    .end array-data

    :array_5
    .array-data 1
        -0x67t
        -0x37t
        0x3et
        0x3ft
        0x30t
        0x3ct
        0x5ct
        0x4ct
        0x8t
        -0x76t
        0x20t
        -0xat
        0x5bt
        -0x1et
        0x47t
        -0x7ft
        0x6at
        0x59t
        -0x41t
        0x37t
        0xat
        0x65t
        -0x3at
        0x7bt
        0x39t
        0x47t
        -0x17t
        0x62t
        0x69t
        -0x71t
        -0x2t
        -0x46t
    .end array-data

    :array_6
    .array-data 1
        0x2dt
        -0x7at
        -0x6et
        -0x69t
        -0x6ct
        0x79t
        0x5et
        0x5ct
        0x70t
        -0xct
        -0x3t
        -0x4bt
        0x7t
        0x34t
        -0x7bt
        -0x3t
        0x5t
        -0x7dt
        0x5ct
        -0x64t
        0x6ft
        0x49t
        0x61t
        0x16t
        0x68t
        0x7ct
        0x3dt
        -0x61t
        0x32t
        -0x1at
        -0x21t
        0x3et
    .end array-data

    :array_7
    .array-data 1
        -0x7t
        0x6ct
        -0x44t
        0x59t
        -0x21t
        -0x1ft
        0x6ct
        -0x73t
        0xct
        0x2at
        0x7et
        0x6t
        -0x25t
        0x24t
        -0x28t
        0x73t
        -0x76t
        0x63t
        0x28t
        -0x4at
        -0x17t
        0xft
        0x7bt
        -0x72t
        0x16t
        0x40t
        -0x16t
        0x2bt
        0x46t
        0x0t
        -0x22t
        -0x43t
    .end array-data

    :array_8
    .array-data 1
        -0x22t
        0x3at
        -0x47t
        -0x9t
        0x3bt
        0x10t
        0x73t
        -0x33t
        0x67t
        0x7bt
        0x19t
        -0x28t
        -0x7at
        -0x5t
        -0x6et
        0x7et
        -0x6dt
        -0x7ft
        -0x4dt
        0x1t
        0x61t
        -0x59t
        0x4t
        0x71t
        0x2dt
        0x2bt
        0x30t
        -0x8t
        0x75t
        -0x79t
        0x3ft
        0x5ct
    .end array-data

    :array_9
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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.5::ISap"

    const-string v2, "vendor.mediatek.hardware.radio@3.4::ISap"

    const-string v3, "vendor.mediatek.hardware.radio@3.3::ISap"

    const-string v4, "vendor.mediatek.hardware.radio@3.2::ISap"

    const-string v5, "vendor.mediatek.hardware.radio@3.1::ISap"

    const-string v6, "vendor.mediatek.hardware.radio@3.0::ISap"

    const-string v7, "android.hardware.radio@1.2::ISap"

    const-string v8, "android.hardware.radio@1.1::ISap"

    const-string v9, "android.hardware.radio@1.0::ISap"

    const-string v10, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 439
    const-string v0, "vendor.mediatek.hardware.radio@3.5::ISap"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 486
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 487
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

    .line 515
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 797
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 798
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_25

    .line 799
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 801
    goto/16 :goto_8

    .line 784
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 785
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 786
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 788
    goto/16 :goto_8

    .line 789
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->notifySyspropsChanged()V

    .line 792
    goto/16 :goto_8

    .line 768
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 769
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 770
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto/16 :goto_8

    .line 773
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 776
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 779
    goto/16 :goto_8

    .line 753
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 754
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 755
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 756
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 757
    goto/16 :goto_8

    .line 758
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->ping()V

    .line 761
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 763
    goto/16 :goto_8

    .line 743
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 744
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_25

    .line 745
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 747
    goto/16 :goto_8

    .line 730
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 731
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 732
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 733
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 734
    goto/16 :goto_8

    .line 735
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->setHALInstrumentation()V

    .line 738
    goto/16 :goto_8

    .line 697
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 698
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 699
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 701
    goto/16 :goto_8

    .line 702
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 705
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 707
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 709
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 710
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 711
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 712
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 713
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 715
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 716
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 717
    nop

    .line 713
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 720
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 722
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 724
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 725
    goto/16 :goto_8

    .line 681
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 682
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 683
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 685
    goto/16 :goto_8

    .line 686
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 692
    goto/16 :goto_8

    .line 667
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 668
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 669
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 671
    goto/16 :goto_8

    .line 672
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 675
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 676
    goto/16 :goto_8

    .line 651
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 652
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 653
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 655
    goto/16 :goto_8

    .line 656
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 659
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 662
    goto/16 :goto_8

    .line 636
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 637
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 638
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 640
    goto/16 :goto_8

    .line 641
    :cond_14
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 644
    .local v0, "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 645
    .local v2, "transferProtocol":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->setTransferProtocolReq(II)V

    .line 646
    goto/16 :goto_8

    .line 622
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "transferProtocol":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 623
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 624
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 626
    goto/16 :goto_8

    .line 627
    :cond_16
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 630
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->transferCardReaderStatusReq(I)V

    .line 631
    goto/16 :goto_8

    .line 608
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 609
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 610
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_8

    .line 613
    :cond_18
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 616
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->resetSimReq(I)V

    .line 617
    goto/16 :goto_8

    .line 593
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 594
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 595
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 597
    goto/16 :goto_8

    .line 598
    :cond_1a
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 601
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 602
    .local v2, "state":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->powerReq(IZ)V

    .line 603
    goto/16 :goto_8

    .line 579
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 580
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 581
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_8

    .line 584
    :cond_1c
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 587
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->transferAtrReq(I)V

    .line 588
    goto/16 :goto_8

    .line 563
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 564
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 565
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_8

    .line 568
    :cond_1e
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 571
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 572
    .local v2, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 573
    .local v3, "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->apduReq(IILjava/util/ArrayList;)V

    .line 574
    goto/16 :goto_8

    .line 549
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 550
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 551
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 552
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 553
    goto :goto_8

    .line 554
    :cond_20
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 557
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->disconnectReq(I)V

    .line 558
    goto :goto_8

    .line 534
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 535
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 536
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 538
    goto :goto_8

    .line 539
    :cond_22
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 542
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 543
    .local v2, "maxMsgSize":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->connectReq(II)V

    .line 544
    goto :goto_8

    .line 518
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "maxMsgSize":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_7

    :cond_23
    move v2, v1

    .line 519
    .local v2, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_24

    .line 520
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 522
    goto :goto_8

    .line 523
    :cond_24
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/ISapCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/ISapCallback;

    move-result-object v0

    .line 526
    .local v0, "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->setCallback(Landroid/hardware/radio/V1_0/ISapCallback;)V

    .line 527
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 529
    nop

    .line 806
    .end local v0    # "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_25
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 471
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 497
    const-string v0, "vendor.mediatek.hardware.radio@3.5::ISap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    return-object p0

    .line 500
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

    .line 504
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->registerService(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 462
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 491
    const/4 v0, 0x1

    return v0
.end method
