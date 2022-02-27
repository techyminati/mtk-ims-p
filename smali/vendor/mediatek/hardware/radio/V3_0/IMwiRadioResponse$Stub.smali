.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IMwiRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 436
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 478
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 479
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 480
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 481
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 482
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

    .line 454
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
        -0x15t
        -0x63t
        0xet
        -0x5bt
        0x3ft
        0x7at
        0x66t
        -0x4ct
        0x3dt
        -0x9t
        0x1dt
        0x21t
        -0x11t
        -0x1ft
        0x63t
        0x50t
        -0x2et
        0xdt
        -0x43t
        0x57t
        0x49t
        -0x79t
        -0x53t
        -0x36t
        -0x14t
        -0x72t
        0x41t
        -0x5dt
        -0x40t
        -0x16t
        0x13t
        -0x1dt
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

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

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

    .line 448
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 487
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 488
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

    .line 516
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 785
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 786
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_23

    .line 787
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 789
    goto/16 :goto_7

    .line 772
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 773
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 774
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 776
    goto/16 :goto_7

    .line 777
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->notifySyspropsChanged()V

    .line 780
    goto/16 :goto_7

    .line 756
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 757
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 758
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 759
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 760
    goto/16 :goto_7

    .line 761
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 764
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 767
    goto/16 :goto_7

    .line 741
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 742
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 743
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 745
    goto/16 :goto_7

    .line 746
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->ping()V

    .line 749
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 750
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 751
    goto/16 :goto_7

    .line 731
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 732
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_23

    .line 733
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 735
    goto/16 :goto_7

    .line 718
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 719
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 720
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 722
    goto/16 :goto_7

    .line 723
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setHALInstrumentation()V

    .line 726
    goto/16 :goto_7

    .line 685
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 686
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 687
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 688
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 689
    goto/16 :goto_7

    .line 690
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 693
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 695
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 697
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 698
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 699
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 700
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 701
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 703
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 704
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 705
    nop

    .line 701
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 708
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 710
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 712
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_7

    .line 669
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 670
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 671
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 673
    goto/16 :goto_7

    .line 674
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 680
    goto/16 :goto_7

    .line 655
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 656
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 657
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 658
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 659
    goto/16 :goto_7

    .line 660
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 664
    goto/16 :goto_7

    .line 639
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 640
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 641
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    goto/16 :goto_7

    .line 644
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 647
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 648
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 649
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 650
    goto/16 :goto_7

    .line 624
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 625
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 626
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 628
    goto/16 :goto_7

    .line 629
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 632
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 633
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 634
    goto/16 :goto_7

    .line 609
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 610
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 611
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 613
    goto/16 :goto_7

    .line 614
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 617
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 618
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 619
    goto/16 :goto_7

    .line 594
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 595
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 596
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 598
    goto/16 :goto_7

    .line 599
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 602
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 603
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 604
    goto/16 :goto_7

    .line 579
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 580
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 581
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_7

    .line 584
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 587
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 588
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 589
    goto/16 :goto_7

    .line 564
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 565
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 566
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 568
    goto/16 :goto_7

    .line 569
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 572
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 573
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 574
    goto :goto_7

    .line 549
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 550
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 551
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 552
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 553
    goto :goto_7

    .line 554
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 557
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 558
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 559
    goto :goto_7

    .line 534
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 535
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 536
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 538
    goto :goto_7

    .line 539
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 542
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 543
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 544
    goto :goto_7

    .line 519
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 520
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 521
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 522
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 523
    goto :goto_7

    .line 524
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 527
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 528
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 529
    nop

    .line 794
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :cond_23
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 472
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 498
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IMwiRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    return-object p0

    .line 501
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

    .line 505
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 463
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 492
    const/4 v0, 0x1

    return v0
.end method
