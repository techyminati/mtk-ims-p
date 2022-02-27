.class public Lcom/mediatek/ims/internal/ImsVTUsageManager;
.super Ljava/lang/Object;
.source "ImsVTUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ImsVT Usage"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

.field public mId:I

.field private mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field private mNeedReportDataUsage:Z

.field protected mSimId:I

.field private mUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field public mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    .line 112
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    .line 115
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 116
    return-void
.end method

.method private canRequestDataUsage()Z
    .locals 5

    .line 240
    const-string v0, "ImsVT Usage"

    const-string v1, "[canRequestDataUsage]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "persist.vendor.vt.data_simulate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 243
    .local v0, "forceRequest":Z
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x1

    return v1

    .line 247
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v1}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 249
    .local v1, "subId":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v2, v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v3, "ignore_data_enabled_changed_for_video_calls"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 254
    .local v2, "ignoreDataEnabledChanged":Z
    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 256
    const-string v3, "ImsVT Usage"

    const-string v4, "[canRequestDataUsage] set dataUsage as false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    .line 260
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    return v3
.end method

.method private getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 265
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 267
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 269
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 273
    :cond_0
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 277
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private getTaggedSnapshot(Landroid/net/NetworkStats;ILjava/lang/String;I)J
    .locals 8
    .param p1, "uidSnapshot"    # Landroid/net/NetworkStats;
    .param p2, "match_uid"    # I
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "tag"    # I

    .line 306
    const-string v0, "ImsVT Usage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaggedSnapshot match_uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", iface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-wide/16 v0, 0x0

    .line 309
    .local v0, "TotalBytes":J
    const/4 v2, 0x0

    .line 311
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 313
    invoke-virtual {p1, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 315
    iget-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v4, p2, :cond_0

    iget v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v4, p4, :cond_0

    .line 317
    const-string v4, "ImsVT Usage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTaggedSnapshot entry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v0, v4

    .line 320
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v0, v4

    .line 321
    const-string v4, "ImsVT Usage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTaggedSnapshot entry.rxBytes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", entry.txBytes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 322
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    .end local v3    # "j":I
    :cond_1
    const-string v3, "ImsVT Usage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TotalBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-wide v0
.end method


# virtual methods
.method public requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 25

    .line 136
    move-object/from16 v1, p0

    const-string v0, "ImsVT Usage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->canRequestDataUsage()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 139
    return-object v2

    .line 145
    :cond_0
    const-string v0, ""

    .line 146
    .local v0, "mActiveImsIface":Ljava/lang/String;
    const-string v3, ""

    .line 148
    .local v3, "mActiveWifiIface":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v5}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "subIdStr":Ljava/lang/String;
    iget-object v5, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 150
    .local v5, "sConnMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v6

    .line 153
    .local v6, "nets":[Landroid/net/Network;
    if-eqz v6, :cond_9

    .line 155
    array-length v7, v6

    const/4 v8, 0x0

    move-object v9, v3

    move-object v3, v0

    .end local v0    # "mActiveImsIface":Ljava/lang/String;
    .local v3, "mActiveImsIface":Ljava/lang/String;
    .local v9, "mActiveWifiIface":Ljava/lang/String;
    :goto_0
    if-ge v8, v7, :cond_7

    aget-object v0, v6, v8

    .line 157
    .local v0, "net":Landroid/net/Network;
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 159
    .local v10, "nwInfo":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 161
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    .line 163
    .local v11, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v11, :cond_1

    .line 164
    const-string v12, "ImsVT Usage"

    const-string v13, "[onRequestCallDataUsage] netCap = null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    goto/16 :goto_1

    .line 168
    :cond_1
    const-string v12, "ImsVT Usage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onRequestCallDataUsage] nwInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", checking net="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " cap="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 172
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 173
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 174
    const-string v12, "ImsVT Usage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onRequestCallDataUsage] mActiveWifiIface="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 176
    :cond_2
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 177
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, "networkSpecifier":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 179
    const-string v13, "ImsVT Usage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onRequestCallDataUsage] Get Ims interface with different sub, net="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " specifier="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " sub="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "specifier.length="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " sub.length="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 179
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v13, "ImsVT Usage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onRequestCallDataUsage] mActiveImsIface="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v12    # "networkSpecifier":Ljava/lang/String;
    goto :goto_1

    .line 189
    :cond_4
    const-string v12, "ImsVT Usage"

    const-string v13, "[onRequestCallDataUsage] netCap neither contain WIF nor LTE."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    :cond_5
    const-string v12, "ImsVT Usage"

    const-string v13, "[onRequestCallDataUsage] sConnMgr.getLinkProperties(net) = NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "net":Landroid/net/Network;
    .end local v11    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 197
    .end local v10    # "nwInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v0, ""

    if-ne v0, v3, :cond_8

    .line 198
    const-string v0, "ImsVT Usage"

    const-string v7, "[onRequestCallDataUsage] mActiveImsIface is empty"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v2

    .line 210
    :cond_8
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 211
    .local v7, "b":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    move-object v8, v0

    .line 215
    .local v8, "mNetworkManager":Landroid/os/INetworkManagementService;
    const/4 v0, -0x1

    :try_start_0
    sget-object v10, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-interface {v8, v0, v10}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 217
    .local v0, "uidSnapshot":Landroid/net/NetworkStats;
    const/16 v10, 0x3e8

    .line 218
    .local v10, "VILTE_UID":I
    iget v11, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    const/high16 v12, -0x1000000

    add-int/2addr v11, v12

    invoke-direct {v1, v0, v10, v3, v11}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getTaggedSnapshot(Landroid/net/NetworkStats;ILjava/lang/String;I)J

    move-result-wide v13

    .line 220
    .local v13, "usage_ImsTaginImsInterface":J
    iget v11, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    const/high16 v15, -0xf00000

    add-int/2addr v11, v15

    invoke-direct {v1, v0, v10, v9, v11}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getTaggedSnapshot(Landroid/net/NetworkStats;ILjava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 222
    .local v18, "usage_WifiTaginWifiInterface":J
    iget-object v11, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    iget-object v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage()J

    move-result-wide v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v20, v3

    sub-long v2, v13, v16

    .end local v3    # "mActiveImsIface":Ljava/lang/String;
    .local v20, "mActiveImsIface":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v11, v2, v3}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setLteUsage(J)V

    .line 223
    iget-object v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    iget-object v3, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage()J

    move-result-wide v16
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v23, v4

    move-wide/from16 v21, v13

    move-wide/from16 v12, v18

    sub-long v3, v12, v16

    .end local v4    # "subIdStr":Ljava/lang/String;
    .end local v13    # "usage_ImsTaginImsInterface":J
    .end local v18    # "usage_WifiTaginWifiInterface":J
    .local v12, "usage_WifiTaginWifiInterface":J
    .local v21, "usage_ImsTaginImsInterface":J
    .local v23, "subIdStr":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(J)V

    .line 225
    iget-object v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v3, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v24, v5

    move-wide/from16 v4, v21

    const/high16 v11, -0x1000000

    :try_start_3
    invoke-virtual {v2, v3, v4, v5, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageSet(IJI)V

    .line 226
    .end local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    .end local v21    # "usage_ImsTaginImsInterface":J
    .local v4, "usage_ImsTaginImsInterface":J
    .local v24, "sConnMgr":Landroid/net/ConnectivityManager;
    iget-object v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v3, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v2, v3, v12, v13, v15}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageSet(IJI)V

    .line 228
    const-string v2, "ImsVT Usage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ID="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] [onRequestCallDataUsage] Finish (VIWIFI usage:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v2

    .line 233
    .end local v0    # "uidSnapshot":Landroid/net/NetworkStats;
    .end local v4    # "usage_ImsTaginImsInterface":J
    .end local v10    # "VILTE_UID":I
    .end local v12    # "usage_WifiTaginWifiInterface":J
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    .restart local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    :catch_1
    move-exception v0

    move-object/from16 v24, v5

    .end local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    .restart local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    goto :goto_2

    .end local v23    # "subIdStr":Ljava/lang/String;
    .end local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    .local v4, "subIdStr":Ljava/lang/String;
    .restart local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    :catch_2
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "subIdStr":Ljava/lang/String;
    .end local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    .restart local v23    # "subIdStr":Ljava/lang/String;
    .restart local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    goto :goto_2

    .end local v20    # "mActiveImsIface":Ljava/lang/String;
    .end local v23    # "subIdStr":Ljava/lang/String;
    .end local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    .restart local v3    # "mActiveImsIface":Ljava/lang/String;
    .restart local v4    # "subIdStr":Ljava/lang/String;
    .restart local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    :catch_3
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .line 234
    .end local v3    # "mActiveImsIface":Ljava/lang/String;
    .end local v4    # "subIdStr":Ljava/lang/String;
    .end local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v20    # "mActiveImsIface":Ljava/lang/String;
    .restart local v23    # "subIdStr":Ljava/lang/String;
    .restart local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    :goto_2
    const-string v2, "ImsVT Usage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v2, 0x0

    return-object v2

    .line 203
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "mNetworkManager":Landroid/os/INetworkManagementService;
    .end local v9    # "mActiveWifiIface":Ljava/lang/String;
    .end local v20    # "mActiveImsIface":Ljava/lang/String;
    .end local v23    # "subIdStr":Ljava/lang/String;
    .end local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    .local v0, "mActiveImsIface":Ljava/lang/String;
    .local v3, "mActiveWifiIface":Ljava/lang/String;
    .restart local v4    # "subIdStr":Ljava/lang/String;
    .restart local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    :cond_9
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "subIdStr":Ljava/lang/String;
    .end local v5    # "sConnMgr":Landroid/net/ConnectivityManager;
    .restart local v23    # "subIdStr":Ljava/lang/String;
    .restart local v24    # "sConnMgr":Landroid/net/ConnectivityManager;
    const-string v4, "ImsVT Usage"

    const-string v5, "[onRequestCallDataUsage] getAllNetworks returns null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-object v2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 119
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    .line 120
    return-void
.end method

.method public setInitUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 0
    .param p1, "initUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 127
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 128
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .param p1, "simId"    # I

    .line 123
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    .line 124
    return-void
.end method
