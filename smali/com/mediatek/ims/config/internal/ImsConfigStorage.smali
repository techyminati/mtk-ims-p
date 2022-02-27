.class public Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;,
        Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;,
        Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;,
        Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;,
        Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;,
        Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    }
.end annotation


# static fields
.field private static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field private static final DEBUG:Z

.field static final EVENT_GET_PROVISION_DONE_URC:I = 0x6

.field static FeatureSendArray:[Lcom/mediatek/ims/config/internal/ImsFeatureMap; = null

.field static final MDCONFIG_CMD_ERROR:I = 0x20

.field static final MDCONFIG_CMD_SUCCESS:I = 0x21

.field static final MDCONFIG_INTERRUPT_ERROR:I = 0x1f

.field static final MDCONFIG_TIMEOUT_ERROR:I = 0x1e

.field static final MSG_FORCE_TO_SEND_WFC_MODE:I = 0xa

.field static final MSG_IMS_GET_PROVISION_DONE:I = 0x4

.field static final MSG_IMS_SET_MDCFG_DONE:I = 0x7

.field static final MSG_IMS_SET_PROVISION_DONE:I = 0x5

.field static final MSG_LOAD_CONFIG_STORAGE:I = 0x1

.field static final MSG_RESET_BROADCAST_FLAG:I = 0x2

.field static final MSG_RESET_CONFIG_STORAGE:I = 0x0

.field static final MSG_RESET_WFC_MODE_FLAG:I = 0x8

.field static final MSG_SIM_ABSENT_ECC_BROADCAST:I = 0x3

.field static final MSG_UPDATE_IMS_SERVICE_CONFIG:I = 0x9

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field static final PROVISION_CMD_ERROR:I = 0x16

.field static final PROVISION_CMD_SUCCESS:I = 0x17

.field static final PROVISION_INTERRUPT_ERROR:I = 0x15

.field static final PROVISION_NO_DEFAULT_VALUE:I = 0x19

.field static final PROVISION_TIMEOUT_ERROR:I = 0x14

.field static final PROVISION_URC_PARSE_ERROR:I = 0x18

.field private static final TAG:Ljava/lang/String; = "ImsConfigStorage"

.field private static final TELDBG:Z


# instance fields
.field private IMS_PROVISION_NO_DEFAULT_ERROR:I

.field private curWfcMode:I

.field private mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

.field private mContext:Landroid/content/Context;

.field private mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

.field private mFeatureLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mMdCfgLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mProvisionedStringValueLock:Ljava/lang/Object;

.field private mProvisionedValueLock:Ljava/lang/Object;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResourceHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mWfcLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.log.tel_dbg"

    .line 58
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->DEBUG:Z

    .line 59
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->TELDBG:Z

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/ims/config/internal/ImsFeatureMap;

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->FeatureSendArray:[Lcom/mediatek/ims/config/internal/ImsFeatureMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 66
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    .line 67
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mResourceHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    .line 73
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    .line 77
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->curWfcMode:I

    .line 79
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 82
    const/16 v0, 0x19cc

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->IMS_PROVISION_NO_DEFAULT_ERROR:I

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedValueLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedStringValueLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mWfcLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mMdCfgLock:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 66
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    .line 67
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mResourceHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    .line 73
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    .line 77
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->curWfcMode:I

    .line 79
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 82
    const/16 v1, 0x19cc

    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->IMS_PROVISION_NO_DEFAULT_ERROR:I

    .line 133
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureLock:Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedValueLock:Ljava/lang/Object;

    .line 135
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedStringValueLock:Ljava/lang/Object;

    .line 136
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mWfcLock:Ljava/lang/Object;

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mMdCfgLock:Ljava/lang/Object;

    .line 155
    const-string v1, "ImsConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsConfigStorage() on phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    .line 157
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    .line 159
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 162
    sget-object v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->FeatureSendArray:[Lcom/mediatek/ims/config/internal/ImsFeatureMap;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    new-instance v3, Lcom/mediatek/ims/config/internal/ImsFeatureMap;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-direct {v3, v4}, Lcom/mediatek/ims/config/internal/ImsFeatureMap;-><init>(I)V

    aput-object v3, v1, v2

    .line 164
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsConfig-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;ILandroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 169
    new-instance v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    .line 170
    new-instance v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-direct {v2, v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mResourceHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;

    .line 173
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V

    .line 176
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForGetProvisionComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->resetFeatureSendCmd()V

    .line 183
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v0, v2, v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;-><init>(Landroid/os/Handler;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "com.mediatek.common.carrierexpress.cxp_notify_feature"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isDssNoResetSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 54
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 54
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    return-object v0
.end method

.method static synthetic access$2300()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->TELDBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 54
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->resetFeatureSendCmd()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 54
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 54
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->resetWfcModeFlag()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 54
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->curWfcMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 54
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    .param p1, "x1"    # Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 54
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    return-object p1
.end method

.method private enforceConfigStorageInit(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->isInitDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    return-void

    .line 625
    :cond_0
    const-string v0, "ImsConfigStorage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x66

    const-string v2, "Config storage not ready"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static isProvisionStoreModem(I)Z
    .locals 4
    .param p0, "configId"    # I

    .line 633
    invoke-static {p0}, Lcom/mediatek/ims/config/ImsConfigSettings;->getIsStoreModem(I)Z

    move-result v0

    .line 634
    .local v0, "checkIsStoreModem":Z
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ImsConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isProvisionStoreModem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", checkIsStoreModem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    return v0
.end method

.method private static isProvisionSuccess(I)Z
    .locals 2
    .param p0, "reason"    # I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "isSuccess":Z
    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    const/4 v0, 0x1

    .line 653
    nop

    .line 658
    :goto_0
    return v0
.end method

.method private resetFeatureSendCmd()V
    .locals 4

    .line 640
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->FeatureSendArray:[Lcom/mediatek/ims/config/internal/ImsFeatureMap;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsFeatureMap;->getFeatureMap()Ljava/util/HashMap;

    move-result-object v0

    .line 642
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    return-void
.end method

.method private resetWfcModeFlag()V
    .locals 2

    .line 769
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->TELDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImsConfigStorage"

    const-string v1, "resetWfcModeFlag()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mWfcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->curWfcMode:I

    .line 772
    monitor-exit v0

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFeatureValue(II)I
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getImsResCapability(I)I
    .locals 1
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mResourceHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->getResourceValue(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "featureId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    throw p1
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 8
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedStringValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionStoreModem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;)V

    .line 490
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigSettings;->getProvisionStr(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "mProvisionStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 492
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 493
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-interface {v5, v6, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :try_start_2
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    goto :goto_0

    .line 496
    :catch_0
    move-exception v5

    .line 497
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 498
    const/16 v6, 0x15

    iput v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 500
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    :try_start_4
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    const/16 v5, 0x19

    if-ne v4, v5, :cond_0

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MD no default value, getProvisionedStringValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->enforceConfigStorageInit(Ljava/lang/String;)V

    .line 505
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v5, "tb_master"

    invoke-static {v4, v5, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1500(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 507
    :cond_0
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    monitor-exit v0

    return-object v4

    .line 508
    :cond_1
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something wrong, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 500
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 514
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .end local v2    # "mProvisionStr":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedStringValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->enforceConfigStorageInit(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v2, "tb_master"

    invoke-static {v1, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1500(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 517
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public getProvisionedValue(I)I
    .locals 8
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionStoreModem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;)V

    .line 445
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigSettings;->getProvisionStr(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "mProvisionStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 447
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 448
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-interface {v5, v6, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :try_start_2
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    goto :goto_0

    .line 451
    :catch_0
    move-exception v5

    .line 452
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 453
    const/16 v6, 0x15

    iput v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 455
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    :try_start_4
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    const/16 v5, 0x19

    if-ne v4, v5, :cond_0

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MD no default value, getProvisionedValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->enforceConfigStorageInit(Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v5, "tb_master"

    invoke-static {v4, v5, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1400(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)I

    move-result v4

    monitor-exit v0

    return v4

    .line 462
    :cond_0
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    monitor-exit v0

    return v4

    .line 463
    :cond_1
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something wrong, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 455
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 469
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .end local v2    # "mProvisionStr":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->enforceConfigStorageInit(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v2, "tb_master"

    invoke-static {v1, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1400(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 472
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public resetConfigStorage()V
    .locals 1

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->resetConfigStorage(I)V

    .line 665
    return-void
.end method

.method public resetConfigStorage(I)V
    .locals 3
    .param p1, "opCode"    # I

    .line 669
    const-string v0, "ImsConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetConfigStorage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    monitor-enter v0

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V

    .line 672
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->init(I)V

    .line 673
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetFeatureStorage()V
    .locals 2

    .line 678
    const-string v0, "ImsConfigStorage"

    const-string v1, "resetFeatureStorage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    monitor-enter v0

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->access$2100(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V

    .line 681
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendWfcProfileInfo(I)V
    .locals 4
    .param p1, "rilWfcMode"    # I

    .line 696
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mWfcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    const-string v1, "ImsConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWfcProfileInfo rilWfcMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", curWfcMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->curWfcMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->curWfcMode:I

    if-eq p1, v1, :cond_5

    .line 700
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 702
    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 703
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ImsConfigStorage"

    const-string v2, "Wifi-only and WFC setting enabled, send intent to turn radio OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 708
    :cond_1
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ImsConfigStorage"

    const-string v3, "Wifi-only and WFC setting disabled, send intent to turn radio ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-static {v2, v3, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 713
    :cond_3
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ImsConfigStorage"

    const-string v3, "Not wifi-only mode, trun radio ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-static {v2, v3, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    .line 717
    :goto_0
    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->curWfcMode:I

    .line 719
    :cond_5
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFeatureValue(III)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mFeatureHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    invoke-static {v1, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->access$1200(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;III)V

    .line 427
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setImsResCapability(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mResourceHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->access$2000(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 614
    .end local p1    # "featureId":I
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    throw p1
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 10
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "type"    # I

    .line 723
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mMdCfgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    const/4 v1, 0x0

    .line 725
    .local v1, "keysStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 726
    .local v2, "valuesStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 729
    .local v3, "resultArray":[I
    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 730
    :try_start_0
    const-string v5, "ImsConfigStorage"

    const-string v6, "keys is null, return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    monitor-exit v0

    return-object v4

    .line 765
    .end local v1    # "keysStr":Ljava/lang/String;
    .end local v2    # "valuesStr":Ljava/lang/String;
    .end local v3    # "resultArray":[I
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 734
    .restart local v1    # "keysStr":Ljava/lang/String;
    .restart local v2    # "valuesStr":Ljava/lang/String;
    .restart local v3    # "resultArray":[I
    :cond_0
    array-length v5, p1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    array-length v5, p2

    if-ge v5, v6, :cond_1

    goto :goto_1

    .line 739
    :cond_1
    array-length v5, p1

    array-length v6, p2

    if-ne v5, v6, :cond_2

    .line 740
    const-string v5, "ImsConfigStorage"

    const-string v6, "keys and values length equals"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 742
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 743
    const-string v5, "ImsConfigStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keysStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", valuesStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;

    invoke-direct {v5, p0, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;)V

    move-object v4, v5

    .line 746
    .local v4, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    array-length v5, p1

    iput v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->requestConfigNum:I

    .line 748
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 749
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v1, v2, p3, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 753
    :try_start_2
    iget-object v7, v4, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
    goto :goto_0

    .line 754
    :catch_0
    move-exception v7

    .line 755
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 756
    const/16 v8, 0x1f

    iput v8, v4, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->configResult:I

    .line 758
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 759
    :try_start_4
    iget-object v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->resultArray:[I

    move-object v3, v6

    .line 760
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    .end local v5    # "msg":Landroid/os/Message;
    nop

    .line 764
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v3

    .line 758
    .restart local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    .restart local v5    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 761
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_2
    const-string v5, "ImsConfigStorage"

    const-string v6, "keys and values length not equals"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    monitor-exit v0

    return-object v4

    .line 735
    :cond_3
    :goto_1
    const-string v5, "ImsConfigStorage"

    const-string v6, "keys or values length is smaller than 1, return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    monitor-exit v0

    return-object v4

    .line 765
    .end local v1    # "keysStr":Ljava/lang/String;
    .end local v2    # "valuesStr":Ljava/lang/String;
    .end local v3    # "resultArray":[I
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .locals 8
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedStringValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedStringValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->enforceConfigStorageInit(Ljava/lang/String;)V

    .line 584
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionStoreModem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;)V

    .line 587
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigSettings;->getProvisionStr(I)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "mProvisionStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 589
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 590
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-interface {v5, v6, v2, p2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :try_start_2
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    goto :goto_0

    .line 593
    :catch_0
    move-exception v5

    .line 594
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 595
    const/16 v6, 0x15

    iput v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 597
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 598
    :try_start_4
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .end local v2    # "mProvisionStr":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 599
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .restart local v2    # "mProvisionStr":Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something wrong, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 597
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 605
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .end local v2    # "mProvisionStr":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v2, "tb_provision"

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1800(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    .line 608
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v2, "tb_master"

    invoke-static {v1, v2, p1, v3, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1900(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)I

    .line 610
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public setProvisionedValue(II)V
    .locals 8
    .param p1, "configId"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mProvisionedValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->enforceConfigStorageInit(Ljava/lang/String;)V

    .line 537
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionStoreModem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;)V

    .line 540
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigSettings;->getProvisionStr(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "mProvisionStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 542
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    .line 544
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 543
    invoke-interface {v5, v6, v2, v7, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :try_start_2
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    goto :goto_0

    .line 547
    :catch_0
    move-exception v5

    .line 548
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 549
    const/16 v6, 0x15

    iput v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 551
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    :try_start_4
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->isProvisionSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .end local v2    # "mProvisionStr":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 553
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .restart local v2    # "mProvisionStr":Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something wrong, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 551
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 559
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    .end local v2    # "mProvisionStr":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v2, "tb_provision"

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)Landroid/net/Uri;

    .line 562
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mConfigHelper:Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    const-string v2, "tb_master"

    invoke-static {v1, v2, p1, v3, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$1700(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)I

    .line 564
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public declared-synchronized setVoltePreference(I)V
    .locals 3
    .param p1, "mode"    # I

    monitor-enter p0

    .line 688
    :try_start_0
    const-string v0, "ImsConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoltePreference mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setVoiceDomainPreference(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    .line 687
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    throw p1
.end method
