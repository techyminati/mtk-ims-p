.class public Lcom/mediatek/ims/internal/ImsXuiManager;
.super Ljava/lang/Object;
.source "ImsXuiManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsXuiManager"

.field static sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;


# instance fields
.field public mXui:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 23
    .local v0, "numPhones":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/mediatek/ims/internal/ImsXuiManager;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsXuiManager;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    .line 34
    sget-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsXuiManager;->loadXui()V

    .line 36
    :cond_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsXuiManager;->sInstance:Lcom/mediatek/ims/internal/ImsXuiManager;

    return-object v0
.end method

.method private loadXui()V
    .locals 0

    .line 82
    return-void
.end method


# virtual methods
.method public clearStoredXui()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public getSelfIdentifyUri(I)[Landroid/net/Uri;
    .locals 12
    .param p1, "phoneId"    # I

    .line 85
    const/4 v0, 0x0

    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_2

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 90
    .local v1, "xui":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 91
    return-object v0

    .line 93
    :cond_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "ids":[Ljava/lang/String;
    array-length v2, v0

    .line 95
    .local v2, "len":I
    new-array v3, v2, [Landroid/net/Uri;

    .line 97
    .local v3, "uris":[Landroid/net/Uri;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 98
    aget-object v6, v0, v5

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 99
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "number":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    const-string v8, "ImsXuiManager"

    const-string v9, "empty XUI"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_1

    .line 104
    :cond_2
    const-string v8, "[@;:]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "numberParts":[Ljava/lang/String;
    array-length v9, v8

    if-nez v9, :cond_3

    .line 106
    const-string v9, "ImsXuiManager"

    const-string v10, "no number in XUI handle"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_1

    .line 109
    :cond_3
    aget-object v7, v8, v4

    .line 110
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v3, v5

    .line 111
    const-string v9, "ImsXuiManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMS: getSelfIdentifyUri() uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "numberParts":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v5    # "i":I
    :cond_4
    return-object v3

    .line 86
    .end local v0    # "ids":[Ljava/lang/String;
    .end local v1    # "xui":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "uris":[Landroid/net/Uri;
    :cond_5
    :goto_2
    const-string v1, "ImsXuiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS: getSelfIdentifyUri() invalid phone Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v0
.end method

.method public getXui()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getXui(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 45
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setXui(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "xui"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 78
    return-void
.end method

.method public setXui(Ljava/lang/String;)V
    .locals 2
    .param p1, "xui"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsXuiManager;->mXui:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 67
    return-void
.end method
