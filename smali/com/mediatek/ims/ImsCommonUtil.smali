.class public Lcom/mediatek/ims/ImsCommonUtil;
.super Ljava/lang/Object;
.source "ImsCommonUtil.java"


# static fields
.field public static final ENGLOAD:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCommonUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsCommonUtil;->ENGLOAD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 61
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 62
    .local v0, "hexArray":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 63
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 64
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 65
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 66
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 63
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 4

    .line 113
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 114
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 115
    :cond_0
    const/4 v0, -0x1

    .line 117
    :cond_1
    sget-boolean v1, Lcom/mediatek/ims/ImsCommonUtil;->ENGLOAD:Z

    if-eqz v1, :cond_2

    const-string v1, "ImsCommonUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainCapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    return v0
.end method

.method public static getMainPhoneIdForSingleIms()I
    .locals 4

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 143
    .end local v0    # "phoneId":I
    .local v1, "phoneId":I
    const-string v0, "ImsCommonUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMainPhoneIdForSingleIms] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 12
    .param p0, "inputString"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 83
    .local v1, "len":I
    const-string v2, "ImsCommonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hexToBytes: inputLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 85
    .local v2, "result":[B
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 86
    .local v4, "temp":[I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    div-int/lit8 v7, v1, 0x2

    if-ge v6, v7, :cond_5

    .line 87
    mul-int/lit8 v7, v6, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput v7, v4, v5

    .line 88
    mul-int/lit8 v7, v6, 0x2

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput v7, v4, v8

    .line 89
    move v7, v5

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 90
    aget v9, v4, v7

    const/16 v10, 0x41

    if-lt v9, v10, :cond_1

    aget v9, v4, v7

    const/16 v11, 0x46

    if-gt v9, v11, :cond_1

    .line 91
    aget v9, v4, v7

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xa

    aput v9, v4, v7

    goto :goto_2

    .line 92
    :cond_1
    aget v9, v4, v7

    const/16 v10, 0x61

    if-lt v9, v10, :cond_2

    aget v9, v4, v7

    const/16 v11, 0x66

    if-gt v9, v11, :cond_2

    .line 93
    aget v9, v4, v7

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xa

    aput v9, v4, v7

    goto :goto_2

    .line 94
    :cond_2
    aget v9, v4, v7

    const/16 v10, 0x30

    if-lt v9, v10, :cond_3

    aget v9, v4, v7

    const/16 v11, 0x39

    if-gt v9, v11, :cond_3

    .line 95
    aget v9, v4, v7

    sub-int/2addr v9, v10

    aput v9, v4, v7

    .line 89
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 97
    :cond_3
    return-object v0

    .line 100
    .end local v7    # "j":I
    :cond_4
    aget v7, v4, v5

    shl-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 101
    aget-byte v7, v2, v6

    aget v8, v4, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    .end local v6    # "i":I
    :cond_5
    return-object v2
.end method

.method public static supportMdAutoSetupIms()Z
    .locals 2

    .line 122
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static supportMims()Z
    .locals 2

    .line 136
    const-string v0, "persist.vendor.mims_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
