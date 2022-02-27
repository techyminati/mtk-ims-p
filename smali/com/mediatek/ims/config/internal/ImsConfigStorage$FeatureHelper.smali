.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIsFeatureBroadcast:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContext:Landroid/content/Context;

    .line 778
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    .line 783
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    .line 784
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContext:Landroid/content/Context;

    .line 785
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 787
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->resetBroadcastFlag()V

    .line 788
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 775
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->initFeatureStorage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 775
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->isAllFeatureFalse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;III)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 775
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 775
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->clear()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 775
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->resetBroadcastFlag()V

    return-void
.end method

.method private checkIfBroadcastOnce(II)Z
    .locals 5
    .param p1, "feature"    # I
    .param p2, "phoneId"    # I

    .line 889
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->LatestSimState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 890
    .local v0, "simState":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImsConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfBroadcastOnce() phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Sim state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 893
    return v1

    .line 895
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "READY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IMSI"

    .line 896
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LOADED"

    .line 897
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 898
    return v1

    .line 900
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    return v1

    .line 904
    :cond_3
    return v3
.end method

.method private clear()V
    .locals 4

    .line 820
    const-string v0, "phone_id = ?"

    .line 821
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 822
    .local v1, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 823
    return-void
.end method

.method private initFeatureStorage()V
    .locals 6

    .line 792
    const-string v0, "persist.vendor.mtk.volte.enable"

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v0

    .line 794
    .local v0, "volte":I
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    .line 796
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFeature: VoLTE initial value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v2, "persist.vendor.mtk.vilte.enable"

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v2

    .line 801
    .local v2, "vilte":I
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    .line 803
    const-string v1, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFeature: ViLTE initial value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v1, "persist.vendor.mtk.wfc.enable"

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-static {v1, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v1

    .line 808
    .local v1, "vowifi":I
    const/4 v3, 0x2

    const/16 v4, 0x12

    invoke-direct {p0, v3, v4, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    .line 810
    const-string v3, "ImsConfigStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFeature: VoWIFI initial value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method private isAllFeatureFalse()Z
    .locals 8

    .line 917
    const/4 v0, -0x1

    .local v0, "volte":I
    const/4 v1, -0x1

    .local v1, "vilte":I
    const/4 v2, -0x1

    .line 920
    .local v2, "wfc":I
    nop

    .line 921
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/mediatek/ims/config/ImsConfigContract;->getNetworkTypeByFeature(I)I

    move-result v4

    .line 920
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v4

    move v0, v4

    .line 923
    nop

    .line 924
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/ims/config/ImsConfigContract;->getNetworkTypeByFeature(I)I

    move-result v5

    .line 923
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v5

    move v1, v5

    .line 926
    nop

    .line 927
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/mediatek/ims/config/ImsConfigContract;->getNetworkTypeByFeature(I)I

    move-result v6

    .line 926
    invoke-virtual {p0, v5, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v5
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 929
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 930
    return v4

    .line 932
    :cond_0
    return v3

    .line 934
    :catch_0
    move-exception v4

    .line 935
    .local v4, "e":Lcom/android/ims/ImsException;
    const-string v5, "ImsConfigStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllFeatureFalse volte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", vilte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", wfc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return v3
.end method

.method private resetBroadcastFlag()V
    .locals 4

    .line 910
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    return-void
.end method

.method private updateFeature(III)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I

    .line 826
    const/4 v0, -0x1

    .line 827
    .local v0, "curValue":I
    const/4 v1, 0x0

    .line 828
    .local v1, "result":Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 829
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "phone_id"

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    const-string v3, "feature_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v3, "network_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    const-string v3, "value"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v3

    move v0, v3

    .line 837
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImsConfigStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFeature() comparing: curValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->checkIfBroadcastOnce(II)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, p3, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 840
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    .line 841
    invoke-static {v4, p1, p2}, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->getUriWithFeatureId(III)Landroid/net/Uri;

    move-result-object v4

    .line 840
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :cond_2
    goto :goto_0

    .line 844
    :catch_0
    move-exception v3

    .line 845
    .local v3, "e":Lcom/android/ims/ImsException;
    const-string v4, "ImsConfigStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFeature() ImsException featureId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 848
    .end local v3    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method


# virtual methods
.method getFeatureValue(II)I
    .locals 12
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, -0x1

    .line 853
    .local v1, "result":I
    const-string v2, "phone_id"

    const-string v3, "feature_id"

    const-string v4, "network_id"

    const-string v5, "value"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 860
    .local v8, "projection":[Ljava/lang/String;
    const/16 v2, 0x65

    :try_start_0
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    .line 861
    invoke-static {v3, p1, p2}, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->getUriWithFeatureId(III)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 860
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 863
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 864
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 865
    const-string v3, "value"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 866
    .local v3, "valueIndex":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v1, v4

    .line 867
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    .end local v3    # "valueIndex":I
    nop

    .line 878
    if-eqz v0, :cond_0

    .line 879
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_0
    return v1

    .line 869
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not assigned with value!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 873
    :catch_0
    move-exception v3

    .line 874
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Feature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not assigned with value! or something wrong with cursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_2

    .line 879
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method
