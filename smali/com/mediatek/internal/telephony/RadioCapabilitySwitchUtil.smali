.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final ENHANCEMENT_T_PLUS_C:I = 0x2

.field public static final ENHANCEMENT_T_PLUS_T:I = 0x0

.field public static final ENHANCEMENT_T_PLUS_W:I = 0x1

.field public static final ENHANCEMENT_W_PLUS_C:I = 0x3

.field public static final ENHANCEMENT_W_PLUS_NA:I = 0x5

.field public static final ENHANCEMENT_W_PLUS_W:I = 0x4

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final IMSI_READY:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "RadioCapabilitySwitchUtil"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP18:[Ljava/lang/String;

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "vendor.ril.iccid.sim"

.field private static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field private static final PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OP18:I = 0x4

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 91
    const-string v0, "46000"

    const-string v1, "46002"

    const-string v2, "46007"

    const-string v3, "46008"

    const-string v4, "45412"

    const-string v5, "45413"

    const-string v6, "00101"

    const-string v7, "00211"

    const-string v8, "00321"

    const-string v9, "00431"

    const-string v10, "00541"

    const-string v11, "00651"

    const-string v12, "00761"

    const-string v13, "00871"

    const-string v14, "00902"

    const-string v15, "01012"

    const-string v16, "01122"

    const-string v17, "01232"

    const-string v18, "46004"

    const-string v19, "46602"

    const-string v20, "50270"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 100
    const-string v0, "46001"

    const-string v1, "46006"

    const-string v2, "46009"

    const-string v3, "45407"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 105
    const-string v0, "46005"

    const-string v1, "45502"

    const-string v2, "46003"

    const-string v3, "46011"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 110
    const-string v1, "405840"

    const-string v2, "405854"

    const-string v3, "405855"

    const-string v4, "405856"

    const-string v5, "405857"

    const-string v6, "405858"

    const-string v7, "405855"

    const-string v8, "405856"

    const-string v9, "405857"

    const-string v10, "405858"

    const-string v11, "405859"

    const-string v12, "405860"

    const-string v13, "405861"

    const-string v14, "405862"

    const-string v15, "405863"

    const-string v16, "405864"

    const-string v17, "405865"

    const-string v18, "405866"

    const-string v19, "405867"

    const-string v20, "405868"

    const-string v21, "405869"

    const-string v22, "405870"

    const-string v23, "405871"

    const-string v24, "405872"

    const-string v25, "405873"

    const-string v26, "405874"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    .line 123
    const-string v0, "vendor.ril.iccid.sim1"

    const-string v1, "vendor.ril.iccid.sim2"

    const-string v2, "vendor.ril.iccid.sim3"

    const-string v3, "vendor.ril.iccid.sim4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    .line 139
    const-string v0, "vendor.ril.imsi.status.sim1"

    const-string v1, "vendor.ril.imsi.status.sim2"

    const-string v2, "vendor.ril.imsi.status.sim3"

    const-string v3, "vendor.ril.imsi.status.sim4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    .line 146
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 153
    const-string v0, "vendor.gsm.ril.ct3g"

    const-string v1, "vendor.gsm.ril.ct3g.2"

    const-string v2, "vendor.gsm.ril.ct3g.3"

    const-string v3, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllSimImsiStatus()V
    .locals 2

    .line 747
    const-string v0, "clearAllSimImsiStatus"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 749
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static getHashCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "iccid"    # Ljava/lang/String;

    .line 783
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 784
    .local v0, "alga":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 785
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 786
    .local v1, "hashCode":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .local v2, "strIccid":Ljava/lang/String;
    return-object v2

    .line 788
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v1    # "hashCode":[B
    .end local v2    # "strIccid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RadioCapabilitySwitchUtil SHA-256 must exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 7
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .line 492
    const/4 v0, -0x1

    .line 493
    .local v0, "targetSim":I
    array-length v1, p1

    .line 495
    .local v1, "phoneNum":I
    aget-boolean v2, p1, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 496
    return p0

    .line 498
    :cond_0
    const/4 v2, 0x0

    move v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "targetSim":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 499
    aget-boolean v5, p1, v0

    if-ne v5, v3, :cond_1

    .line 500
    move v4, v0

    .line 498
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    if-ne v4, v0, :cond_e

    aget-boolean v5, p2, p0

    if-ne v5, v3, :cond_3

    goto :goto_6

    .line 506
    :cond_3
    move v5, v4

    move v4, v2

    .local v4, "i":I
    .local v5, "targetSim":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 507
    aget-boolean v6, p2, v4

    if-ne v6, v3, :cond_4

    .line 508
    move v5, v4

    .line 506
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 511
    .end local v4    # "i":I
    :cond_5
    if-ne v5, v0, :cond_d

    aget-boolean v4, p3, p0

    if-ne v4, v3, :cond_6

    goto :goto_5

    .line 514
    :cond_6
    move v4, v2

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_8

    .line 515
    aget-boolean v6, p3, v4

    if-ne v6, v3, :cond_7

    .line 516
    move v5, v4

    .line 514
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 519
    .end local v4    # "i":I
    :cond_8
    if-ne v5, v0, :cond_c

    aget-boolean v0, p4, p0

    if-ne v0, v3, :cond_9

    goto :goto_4

    .line 522
    :cond_9
    nop

    .local v2, "i":I
    :goto_3
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    if-ge v0, v1, :cond_b

    .line 523
    aget-boolean v2, p4, v0

    if-ne v2, v3, :cond_a

    .line 524
    move v2, v0

    .line 522
    .end local v5    # "targetSim":I
    .local v2, "targetSim":I
    move v5, v2

    .end local v2    # "targetSim":I
    .restart local v5    # "targetSim":I
    :cond_a
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_3

    .line 527
    .end local v2    # "i":I
    :cond_b
    return v5

    .line 520
    :cond_c
    :goto_4
    return v5

    .line 512
    :cond_d
    :goto_5
    return v5

    .line 504
    .end local v5    # "targetSim":I
    .local v4, "targetSim":I
    :cond_e
    :goto_6
    return v4
.end method

.method public static getHighestPriorityPhone(I[I)I
    .locals 8
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "targetPhone":I
    array-length v1, p1

    .line 540
    .local v1, "phoneNum":I
    const/4 v2, 0x0

    .line 541
    .local v2, "highestPriorityCount":I
    const/4 v3, 0x0

    .line 543
    .local v3, "highestPriorityBitMap":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_2

    .line 544
    aget v6, p1, v4

    aget v7, p1, v0

    if-ge v6, v7, :cond_0

    .line 545
    move v0, v4

    .line 546
    const/4 v2, 0x1

    .line 547
    shl-int v3, v5, v4

    goto :goto_1

    .line 548
    :cond_0
    aget v6, p1, v4

    aget v7, p1, v0

    if-ne v6, v7, :cond_1

    .line 549
    add-int/lit8 v2, v2, 0x1

    .line 550
    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    .line 543
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 554
    .end local v4    # "i":I
    :cond_2
    if-ne v2, v5, :cond_3

    .line 555
    return v0

    .line 556
    :cond_3
    const/4 v4, -0x1

    if-ne p0, v4, :cond_4

    .line 559
    return v4

    .line 560
    :cond_4
    shl-int/2addr v5, p0

    and-int/2addr v5, v3

    if-eqz v5, :cond_5

    .line 561
    return p0

    .line 563
    :cond_5
    return v4
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 3

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 574
    .end local v0    # "phoneId":I
    .local v1, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 575
    return v1
.end method

.method public static getProtocolStackId(I)I
    .locals 2
    .param p0, "slot"    # I

    .line 767
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 768
    .local v0, "majorSlot":I
    if-ne p0, v0, :cond_0

    .line 769
    const/4 v1, 0x1

    return v1

    .line 771
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isDssNoResetSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    if-ge p0, v0, :cond_2

    .line 773
    add-int/lit8 v1, p0, 0x2

    return v1

    .line 775
    :cond_1
    if-nez p0, :cond_2

    .line 776
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 778
    :cond_2
    add-int/lit8 v1, p0, 0x1

    return v1
.end method

.method private static getSimImsiStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "slot"    # I

    .line 742
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 743
    .local v0, "propStr":Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfo([I[II)Z
    .locals 12
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .line 174
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 175
    .local v0, "strMnc":[Ljava/lang/String;
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 178
    .local v1, "strSimType":[Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_19

    .line 179
    if-nez v3, :cond_0

    .line 180
    const-string v4, "vendor.gsm.ril.uicctype"

    .local v4, "propStr":Ljava/lang/String;
    goto :goto_1

    .line 182
    .end local v4    # "propStr":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vendor.gsm.ril.uicctype."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    .restart local v4    # "propStr":Ljava/lang/String;
    :goto_1
    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 185
    aget-object v6, v1, v3

    const-string v7, "SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    .line 186
    aput v2, p1, v3

    goto :goto_2

    .line 187
    :cond_1
    aget-object v6, v1, v3

    const-string v8, "USIM"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    aput v5, p1, v3

    goto :goto_2

    .line 190
    :cond_2
    aput v7, p1, v3

    .line 192
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SimType["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", simType["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 195
    :try_start_0
    const-string v6, "iphonesubinfo"

    .line 196
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 195
    invoke-static {v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v6

    .line 197
    .local v6, "subInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v6, :cond_3

    .line 198
    const-string v8, "subInfo stub is null"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 199
    return v2

    .line 201
    :cond_3
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    .line 202
    .local v8, "subIdList":[I
    if-nez v8, :cond_4

    .line 203
    const-string v9, "subIdList is null"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 204
    return v2

    .line 206
    :cond_4
    aget v9, v8, v2

    const-string v10, "com.mediatek.internal.telephony"

    invoke-interface {v6, v9, v10}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 208
    aget-object v9, v0, v3

    if-nez v9, :cond_5

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strMnc["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] is null, get mnc by ril.uim.subscriberid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vendor.ril.uim.subscriberid."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 211
    const-string v9, ""

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 213
    :cond_5
    aget-object v9, v0, v3

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 214
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strMnc["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] is null, get mnc by vendor.gsm.ril.uicc.mccmnc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 215
    if-nez v3, :cond_6

    .line 216
    const-string v9, "vendor.gsm.ril.uicc.mccmnc"

    move-object v4, v9

    goto :goto_3

    .line 218
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vendor.gsm.ril.uicc.mccmnc."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 220
    :goto_3
    const-string v9, ""

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v6    # "subInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v8    # "subIdList":[I
    :cond_7
    goto :goto_4

    .line 222
    :catch_0
    move-exception v6

    .line 223
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v8, "get subInfo stub fail"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 224
    const-string v8, "error"

    aput-object v8, v0, v3

    .line 227
    .end local v6    # "ex":Landroid/os/RemoteException;
    :goto_4
    aget-object v6, v0, v3

    if-nez v6, :cond_8

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "strMnc["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] is null"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 229
    const-string v6, ""

    aput-object v6, v0, v3

    .line 232
    :cond_8
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x6

    if-lt v6, v8, :cond_9

    .line 233
    aget-object v6, v0, v3

    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    goto :goto_5

    .line 234
    :cond_9
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x5

    if-lt v6, v8, :cond_a

    .line 235
    aget-object v6, v0, v3

    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 237
    :cond_a
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertedStatus:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "imsi status:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 238
    if-ltz p2, :cond_f

    shl-int v6, v5, v3

    and-int/2addr v6, p2

    if-lez v6, :cond_f

    .line 239
    aget-object v6, v0, v3

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    aget-object v6, v0, v3

    const-string v8, "error"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_6

    .line 243
    :cond_b
    aget-object v6, v0, v3

    const-string v8, "sim_lock"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 244
    const-string v5, "SIM is lock, wait pin unlock"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 245
    return v2

    .line 247
    :cond_c
    aget-object v6, v0, v3

    const-string v8, "N/A"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    aget-object v6, v0, v3

    const-string v8, "sim_absent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 248
    :cond_d
    const-string v5, "strMnc have invalid value, return false"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 249
    return v2

    .line 240
    :cond_e
    :goto_6
    const-string v5, "SIM is inserted but no imsi"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 241
    return v2

    .line 252
    :cond_f
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    array-length v8, v6

    move v9, v2

    :goto_7
    if-ge v9, v8, :cond_11

    aget-object v10, v6, v9

    .line 253
    .local v10, "mccmnc":Ljava/lang/String;
    aget-object v11, v0, v3

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 254
    aput v7, p0, v3

    .line 255
    goto :goto_8

    .line 252
    .end local v10    # "mccmnc":Ljava/lang/String;
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 258
    :cond_11
    :goto_8
    aget v6, p0, v3

    if-nez v6, :cond_13

    .line 259
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    array-length v7, v6

    move v8, v2

    :goto_9
    if-ge v8, v7, :cond_13

    aget-object v9, v6, v8

    .line 260
    .local v9, "mccmnc":Ljava/lang/String;
    aget-object v10, v0, v3

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 261
    const/4 v6, 0x3

    aput v6, p0, v3

    .line 262
    goto :goto_a

    .line 259
    .end local v9    # "mccmnc":Ljava/lang/String;
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 266
    :cond_13
    :goto_a
    aget v6, p0, v3

    const/4 v7, 0x4

    if-nez v6, :cond_15

    .line 267
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    array-length v8, v6

    move v9, v2

    :goto_b
    if-ge v9, v8, :cond_15

    aget-object v10, v6, v9

    .line 268
    .restart local v10    # "mccmnc":Ljava/lang/String;
    aget-object v11, v0, v3

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 269
    aput v7, p0, v3

    .line 270
    goto :goto_c

    .line 267
    .end local v10    # "mccmnc":Ljava/lang/String;
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 274
    :cond_15
    :goto_c
    const-string v6, "persist.vendor.operator.optr"

    const-string v8, ""

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "OP18"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 275
    aget v6, p0, v3

    if-nez v6, :cond_17

    .line 276
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    array-length v8, v6

    move v9, v2

    :goto_d
    if-ge v9, v8, :cond_17

    aget-object v10, v6, v9

    .line 277
    .restart local v10    # "mccmnc":Ljava/lang/String;
    aget-object v11, v0, v3

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 278
    aput v7, p0, v3

    .line 279
    goto :goto_e

    .line 276
    .end local v10    # "mccmnc":Ljava/lang/String;
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 284
    :cond_17
    :goto_e
    aget v6, p0, v3

    if-nez v6, :cond_18

    .line 285
    aget-object v6, v0, v3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    aget-object v6, v0, v3

    const-string v7, "N/A"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 286
    aput v5, p0, v3

    .line 289
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", simOpInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 291
    .end local v3    # "i":I
    .end local v4    # "propStr":Ljava/lang/String;
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimInfo(simOpInfo): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimInfo(simType): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 293
    return v5
.end method

.method public static isAnySimLocked(I)Z
    .locals 6
    .param p0, "phoneNum"    # I

    .line 685
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "isAnySimLocked always returns false in C2K"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 687
    return v1

    .line 690
    :cond_0
    new-array v0, p0, [Ljava/lang/String;

    .line 691
    .local v0, "mnc":[Ljava/lang/String;
    new-array v2, p0, [Ljava/lang/String;

    .line 693
    .local v2, "iccid":[Ljava/lang/String;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_6

    .line 694
    sget-object v4, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 696
    aget-object v4, v2, v3

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 697
    const-string v4, "vendor.gsm.sim.operator.numeric"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 699
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_1

    .line 700
    aget-object v4, v0, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_1

    .line 701
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 702
    aget-object v4, v0, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 704
    :cond_2
    :goto_1
    aget-object v4, v0, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from gsm.sim.operator.numeric:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 710
    :cond_3
    aget-object v4, v2, v3

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, v0, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, v0, v3

    const-string v5, "sim_lock"

    .line 711
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 712
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 693
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 715
    .end local v3    # "i":I
    :cond_6
    return v1
.end method

.method public static isCdmaCard(II)Z
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "opInfo"    # I

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "isCdmaSim":Z
    if-ltz p0, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 304
    return v2

    .line 306
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "cardType":Ljava/lang/String;
    const-string v3, "CSIM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    const-string v3, "RUIM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    :cond_3
    :goto_0
    move v0, v2

    .line 309
    if-nez v0, :cond_4

    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    sget-object v2, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "uimDualMode":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    const/4 v0, 0x1

    .line 316
    .end local v2    # "uimDualMode":Ljava/lang/String;
    :cond_4
    return v0

    .line 299
    .end local v1    # "cardType":Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaCard invalid phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 300
    return v0
.end method

.method public static isDssNoResetSupport()Z
    .locals 2

    .line 754
    const-string v0, "vendor.ril.simswitch.no_reset_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const-string v0, "return true for isDssNoResetSupport"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x1

    return v0

    .line 758
    :cond_0
    const-string v0, "return false for isDssNoResetSupport"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public static isNeedShowSimDialog()I
    .locals 17

    .line 593
    const-string v0, "ro.vendor.mtk_disable_cap_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 594
    const-string v0, "mtk_disable_cap_switch is true"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 595
    return v1

    .line 598
    :cond_0
    const-string v0, "isNeedShowSimDialog start"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 599
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 600
    .local v0, "phoneCount":I
    new-array v3, v0, [I

    .line 601
    .local v3, "simOpInfo":[I
    new-array v4, v0, [I

    .line 602
    .local v4, "simType":[I
    new-array v5, v0, [Ljava/lang/String;

    .line 603
    .local v5, "currIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 604
    .local v6, "insertedSimCount":I
    const/4 v7, 0x0

    .line 605
    .local v7, "insertedStatus":I
    const/4 v8, 0x0

    .line 606
    .local v8, "op02CardCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v9, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v10, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v11, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v12, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v13, v7

    move v7, v6

    move v6, v1

    .local v6, "i":I
    .local v7, "insertedSimCount":I
    .local v13, "insertedStatus":I
    :goto_0
    const/4 v14, 0x3

    if-ge v6, v0, :cond_4

    .line 612
    sget-object v15, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    .line 613
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currIccid["

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v5, v6

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 614
    aget-object v1, v5, v6

    if-eqz v1, :cond_3

    const-string v1, ""

    aget-object v15, v5, v6

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 618
    :cond_1
    const-string v1, "N/A"

    aget-object v14, v5, v6

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 619
    add-int/lit8 v7, v7, 0x1

    .line 620
    shl-int v1, v2, v6

    or-int/2addr v1, v13

    .line 611
    .end local v13    # "insertedStatus":I
    .local v1, "insertedStatus":I
    move v13, v1

    .end local v1    # "insertedStatus":I
    .restart local v13    # "insertedStatus":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    goto :goto_0

    .line 615
    :cond_3
    :goto_1
    const-string v1, "RadioCapabilitySwitchUtil"

    const-string v2, "iccid not found, wait for next sim state change"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return v14

    .line 624
    .end local v6    # "i":I
    :cond_4
    const/4 v1, 0x2

    if-ge v7, v1, :cond_5

    .line 625
    const-string v1, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 626
    return v2

    .line 629
    :cond_5
    invoke-static {v3, v4, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v6

    if-nez v6, :cond_6

    .line 630
    const-string v2, "RadioCapabilitySwitchUtil"

    const-string v6, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return v1

    .line 633
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v0, :cond_a

    .line 635
    aget v15, v4, v6

    if-ne v2, v15, :cond_7

    .line 636
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 637
    :cond_7
    aget v15, v4, v6

    if-nez v15, :cond_8

    .line 638
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_8
    :goto_3
    aget v15, v3, v6

    if-ne v14, v15, :cond_9

    .line 643
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 645
    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 648
    .end local v6    # "i":I
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "usimIndexList size = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "op02IndexList size = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v1, :cond_d

    .line 653
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 654
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 655
    add-int/lit8 v8, v8, 0x1

    .line 653
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 659
    .end local v1    # "i":I
    :cond_c
    if-ne v8, v2, :cond_11

    .line 660
    const-string v1, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 661
    return v2

    .line 663
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_e

    .line 664
    const-string v1, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 665
    return v2

    .line 669
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_10

    .line 670
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 671
    add-int/lit8 v8, v8, 0x1

    .line 669
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 675
    .end local v1    # "i":I
    :cond_10
    if-ne v8, v2, :cond_11

    .line 676
    const-string v1, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 677
    return v2

    .line 680
    :cond_11
    const-string v1, "isNeedShowSimDialog: Show dialog"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 681
    const/4 v1, 0x0

    return v1
.end method

.method public static isPS2SupportLTE()Z
    .locals 2

    .line 719
    const-string v0, "persist.vendor.radio.mtk_ps2_rat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 720
    const-string v0, "isPS2SupportLTE = true"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 721
    const/4 v0, 0x1

    return v0

    .line 723
    :cond_0
    const-string v0, "isPS2SupportLTE = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public static isSkipCapabilitySwitch(II)Z
    .locals 17
    .param p0, "majorPhoneId"    # I
    .param p1, "phoneNum"    # I

    move/from16 v0, p0

    .line 372
    move/from16 v1, p1

    new-array v2, v1, [I

    .line 373
    .local v2, "simOpInfo":[I
    new-array v3, v1, [I

    .line 374
    .local v3, "simType":[I
    const/4 v4, 0x0

    .line 375
    .local v4, "insertedState":I
    const/4 v5, 0x0

    .line 376
    .local v5, "insertedSimCount":I
    const/4 v6, 0x0

    .line 377
    .local v6, "tSimCount":I
    const/4 v7, 0x0

    .line 378
    .local v7, "wSimCount":I
    const/4 v8, 0x0

    .line 379
    .local v8, "cSimCount":I
    new-array v9, v1, [Ljava/lang/String;

    .line 380
    .local v9, "currIccId":[Ljava/lang/String;
    const-string v10, "persist.vendor.operator.optr"

    const-string v11, "OM"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 381
    .local v10, "opSpec":Ljava/lang/String;
    const-string v11, "OM"

    .line 383
    .local v11, "opOM":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isPS2SupportLTE()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_12

    .line 384
    const/4 v12, 0x2

    const/4 v14, 0x1

    if-le v1, v12, :cond_1

    .line 385
    if-ge v0, v12, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v15

    if-ge v15, v12, :cond_0

    .line 386
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v12

    if-nez v12, :cond_0

    .line 387
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isTdscdmaSupported()Z

    move-result v12

    if-nez v12, :cond_0

    .line 388
    return v14

    .line 390
    :cond_0
    return v13

    .line 393
    :cond_1
    move v15, v4

    move v4, v13

    .local v4, "i":I
    .local v15, "insertedState":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 394
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vendor.ril.iccid.sim"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v4

    .line 395
    aget-object v12, v9, v4

    if-eqz v12, :cond_4

    const-string v12, ""

    aget-object v13, v9, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    .line 399
    :cond_2
    const-string v12, "N/A"

    aget-object v13, v9, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 400
    add-int/lit8 v5, v5, 0x1

    .line 401
    shl-int v12, v14, v4

    or-int/2addr v12, v15

    .line 393
    .end local v15    # "insertedState":I
    .local v12, "insertedState":I
    move v15, v12

    .end local v12    # "insertedState":I
    .restart local v15    # "insertedState":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto :goto_0

    .line 396
    :cond_4
    :goto_1
    const-string v12, "iccid not found, do capability switch"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 397
    const/4 v12, 0x0

    return v12

    .line 406
    .end local v4    # "i":I
    :cond_5
    if-nez v5, :cond_6

    .line 407
    const-string v4, "no sim card, skip capability switch"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 408
    return v14

    .line 412
    :cond_6
    invoke-static {v2, v3, v15}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v4

    if-nez v4, :cond_7

    .line 413
    const-string v4, "cannot get sim operator info, do capability switch"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 414
    const/4 v4, 0x0

    return v4

    .line 417
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_b

    .line 418
    aget v12, v2, v4

    const/4 v13, 0x2

    if-ne v13, v12, :cond_8

    .line 419
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 420
    :cond_8
    aget v12, v2, v4

    invoke-static {v4, v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(II)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 421
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 422
    :cond_9
    aget v12, v2, v4

    if-eqz v12, :cond_a

    .line 423
    add-int/lit8 v7, v7, 0x1

    .line 417
    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 427
    .end local v4    # "i":I
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isSkipCapabilitySwitch : Inserted SIM count: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", insertedStatus: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", tSimCount: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", wSimCount: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", cSimCount: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 433
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v4, 0x2

    if-ne v5, v4, :cond_d

    if-ne v6, v4, :cond_d

    .line 435
    return v14

    .line 439
    :cond_c
    const/4 v4, 0x2

    :cond_d
    invoke-static {v14}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v12

    if-eqz v12, :cond_e

    if-ne v5, v4, :cond_e

    if-ne v6, v14, :cond_e

    if-ne v7, v14, :cond_e

    .line 441
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isTPlusWSupport()Z

    move-result v12

    if-eqz v12, :cond_e

    aget v12, v2, v0

    if-eq v12, v4, :cond_e

    .line 442
    return v14

    .line 447
    :cond_e
    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v12

    if-eqz v12, :cond_f

    if-ne v5, v4, :cond_f

    if-ne v6, v14, :cond_f

    if-ne v8, v14, :cond_f

    .line 449
    aget v4, v2, v0

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(II)Z

    move-result v4

    if-nez v4, :cond_f

    .line 450
    return v14

    .line 455
    :cond_f
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x2

    if-ne v5, v4, :cond_10

    if-ne v7, v14, :cond_10

    if-ne v8, v14, :cond_10

    .line 457
    aget v4, v2, v0

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isCdmaCard(II)Z

    move-result v4

    if-nez v4, :cond_10

    .line 458
    return v14

    .line 465
    :cond_10
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x2

    if-ne v5, v4, :cond_11

    if-ne v7, v4, :cond_11

    .line 467
    return v14

    .line 471
    :cond_11
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSupportSimSwitchEnhancement(I)Z

    move-result v4

    if-eqz v4, :cond_13

    if-ne v5, v14, :cond_13

    if-ne v7, v14, :cond_13

    .line 473
    return v14

    .line 477
    .end local v15    # "insertedState":I
    .local v4, "insertedState":I
    :cond_12
    move v15, v4

    .end local v4    # "insertedState":I
    .restart local v15    # "insertedState":I
    :cond_13
    const/4 v4, 0x0

    return v4
.end method

.method public static isSupportSimSwitchEnhancement(I)Z
    .locals 1
    .param p0, "simType"    # I

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "ret":Z
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    const/4 v0, 0x1

    .line 356
    goto :goto_0

    .line 350
    :pswitch_1
    const/4 v0, 0x1

    .line 351
    goto :goto_0

    .line 345
    :pswitch_2
    const/4 v0, 0x0

    .line 346
    goto :goto_0

    .line 340
    :pswitch_3
    const/4 v0, 0x0

    .line 341
    goto :goto_0

    .line 335
    :pswitch_4
    const/4 v0, 0x1

    .line 336
    goto :goto_0

    .line 330
    :pswitch_5
    const/4 v0, 0x1

    .line 331
    nop

    .line 361
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isTPlusWSupport()Z
    .locals 2

    .line 728
    const-string v0, "vendor.ril.simswitch.tpluswsupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "return true for T+W support"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x1

    return v0

    .line 732
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 579
    const-string v0, "RadioCapabilitySwitchUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method public static updateSimImsiStatus(ILjava/lang/String;)V
    .locals 2
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimImsiStatus slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 737
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 738
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method
