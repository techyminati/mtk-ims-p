.class public Lcom/mediatek/ims/ImsEcbmProxy;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "ImsEcbmProxy.java"


# static fields
.field protected static final EVENT_ON_ENTER_ECBM:I = 0x1

.field protected static final EVENT_ON_EXIT_ECBM:I = 0x2

.field protected static final EVENT_ON_NO_ECBM:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ImsEcbmProxy"

.field private static final MTK_VZW_SUPPORT:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandleExitEcbmInd:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-string v0, "OP12"

    const-string v1, "persist.vendor.operator.optr"

    const-string v2, "OM"

    .line 63
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsEcbmProxy;->MTK_VZW_SUPPORT:Z

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 97
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/ims/ImsEcbmProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsEcbmProxy$1;-><init>(Lcom/mediatek/ims/ImsEcbmProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    .line 98
    const-string v0, "new EcbmProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 101
    iput p3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    .line 102
    iget v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnEnterECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnExitECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnNoECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsEcbmProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;

    .line 59
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/ImsEcbmProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsEcbmProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;

    .line 59
    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->tryTurnOffVolteAfterE911()V

    return-void
.end method

.method private isImsEcbmSupported()Z
    .locals 7

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "res":Z
    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 140
    .local v1, "subId":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 142
    .local v2, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 143
    .local v3, "carrierConfig":Landroid/os/PersistableBundle;
    const-string v4, "mtk_carrier_ims_ecbm_supported"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 146
    .local v4, "isImsEcbmSupportedByCarrier":Z
    if-nez v4, :cond_0

    sget-boolean v5, Lcom/mediatek/ims/ImsEcbmProxy;->MTK_VZW_SUPPORT:Z

    if-eqz v5, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x1

    .line 150
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isImsEcbmSupported(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 151
    return v0
.end method

.method private logWithPhoneId(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 156
    const-string v0, "ImsEcbmProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private tryTurnOffVolteAfterE911()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVolteForImsEcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 131
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVolteForImsEcc(Z)V

    .line 134
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "request exit ECBM"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->requestExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "request exit ECBM failed"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void
.end method
