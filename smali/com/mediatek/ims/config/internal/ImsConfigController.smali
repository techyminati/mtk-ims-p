.class public Lcom/mediatek/ims/config/internal/ImsConfigController;
.super Ljava/lang/Object;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;,
        Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;,
        Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;,
        Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    }
.end annotation


# static fields
.field private static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field static final CONFIG_CMD_ERROR:I = 0x2

.field static final CONFIG_CMD_SUCCESS:I = 0x1

.field static final CONFIG_INTERRUPT_ERROR:I = 0x4

.field static final CONFIG_TIMEOUT_ERROR:I = 0x3

.field private static final DEBUG:Z

.field static final EVENT_IMS_CFG_CONFIG_CHANGED:I = 0x3eb

.field static final EVENT_IMS_CFG_CONFIG_LOADED:I = 0x3ec

.field static final EVENT_IMS_CFG_DYNAMIC_IMS_SWITCH_COMPLETE:I = 0x3e9

.field static final EVENT_IMS_CFG_FEATURE_CHANGED:I = 0x3ea

.field static final MSG_IMS_GET_FEATURE_DONE:I = 0x67

.field static final MSG_IMS_GET_PROVISION_DONE:I = 0x65

.field static final MSG_IMS_GET_RESOURCE_DONE:I = 0x6a

.field static final MSG_IMS_SET_FEATURE_DONE:I = 0x68

.field static final MSG_IMS_SET_MDCFG_DONE:I = 0x6b

.field static final MSG_IMS_SET_PROVISION_DONE:I = 0x66

.field static final MSG_IMS_SET_RESOURCE_DONE:I = 0x69

.field static final MSG_RESET_WFC_MODE_FLAG:I = 0x6c

.field static final MSG_UPDATE_IMS_SERVICE_CONFIG:I = 0x6d

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.mLogTag.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurWfcMode:I

.field private mEventHandler:Landroid/os/Handler;

.field private mFeatureValueLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mLogTag:Ljava/lang/String;

.field private mMdCfgLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mProvisionedValueLock:Ljava/lang/Object;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResourceValueLock:Ljava/lang/Object;

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mWfcLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.log.mLogTag.tel_dbg"

    .line 34
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    .line 53
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    .line 54
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    .line 55
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mResourceValueLock:Ljava/lang/Object;

    .line 56
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    .line 57
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mMdCfgLock:Ljava/lang/Object;

    .line 59
    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 61
    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    .line 53
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    .line 54
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    .line 55
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mResourceValueLock:Ljava/lang/Object;

    .line 56
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    .line 57
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mMdCfgLock:Ljava/lang/Object;

    .line 59
    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 61
    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 116
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    .line 117
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    .line 118
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConfigController["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsConfigThread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "configThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsEventThread-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "eventThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mEventHandler:Landroid/os/Handler;

    .line 133
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mEventHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;-><init>(Landroid/os/Handler;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v4, "com.mediatek.common.carrierexpress.cxp_notify_feature"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isDssNoResetSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    const-string v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgFeatureChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgConfigLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 30
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/config/internal/ImsConfigController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->messageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/internal/ImsConfigController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 30
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->resetWfcModeFlag()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 30
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;
    .param p1, "x1"    # Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 30
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 30
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static isConfigSuccess(I)Z
    .locals 2
    .param p0, "reason"    # I

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "isSuccess":Z
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    const/4 v0, 0x1

    .line 615
    nop

    .line 620
    :goto_0
    return v0
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .line 155
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_0
    const-string v0, "EVENT_IMS_CFG_CONFIG_LOADED"

    return-object v0

    .line 179
    :pswitch_1
    const-string v0, "EVENT_IMS_CFG_CONFIG_CHANGED"

    return-object v0

    .line 177
    :pswitch_2
    const-string v0, "EVENT_IMS_CFG_FEATURE_CHANGED"

    return-object v0

    .line 175
    :pswitch_3
    const-string v0, "EVENT_IMS_CFG_DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 173
    :pswitch_4
    const-string v0, "MSG_UPDATE_IMS_SERVICE_CONFIG"

    return-object v0

    .line 171
    :pswitch_5
    const-string v0, "MSG_RESET_WFC_MODE_FLAG"

    return-object v0

    .line 169
    :pswitch_6
    const-string v0, "MSG_IMS_SET_MDCFG_DONE"

    return-object v0

    .line 167
    :pswitch_7
    const-string v0, "MSG_IMS_GET_RESOURCE_DONE"

    return-object v0

    .line 165
    :pswitch_8
    const-string v0, "MSG_IMS_SET_RESOURCE_DONE"

    return-object v0

    .line 163
    :pswitch_9
    const-string v0, "MSG_IMS_SET_FEATURE_DONE"

    return-object v0

    .line 161
    :pswitch_a
    const-string v0, "MSG_IMS_GET_FEATURE_DONE"

    return-object v0

    .line 159
    :pswitch_b
    const-string v0, "MSG_IMS_SET_PROVISION_DONE"

    return-object v0

    .line 157
    :pswitch_c
    const-string v0, "MSG_IMS_GET_PROVISION_DONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetWfcModeFlag()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v1, "resetWfcModeFlag()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 683
    monitor-exit v0

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFeatureValue(II)I
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 435
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 437
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 438
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getImsCfgFeatureValue(IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :try_start_2
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    goto :goto_0

    .line 441
    :catch_0
    move-exception v4

    .line 442
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 443
    const/4 v5, 0x4

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 445
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    :try_start_4
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    monitor-exit v0

    return v3

    .line 448
    :cond_0
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 445
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 452
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public declared-synchronized getImsResCapability(I)I
    .locals 7
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    monitor-enter p0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mResourceValueLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 589
    :try_start_1
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 590
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 592
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 593
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getImsCfgResourceCapValue(ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    :try_start_3
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 599
    goto :goto_0

    .line 596
    :catch_0
    move-exception v4

    .line 597
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 598
    const/4 v5, 0x4

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 600
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 602
    :try_start_5
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v3

    .line 603
    :cond_0
    :try_start_6
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 600
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v4

    .line 607
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 587
    .end local p1    # "featureId":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    throw p1
.end method

.method public getProvisionedValue(I)Ljava/lang/String;
    .locals 8
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 501
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 502
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 503
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, p1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getImsCfgProvisionValue(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :try_start_2
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    goto :goto_0

    .line 506
    :catch_0
    move-exception v5

    .line 507
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 508
    const/4 v6, 0x4

    iput v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 510
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    :try_start_4
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 512
    :cond_0
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something wrong, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 510
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 516
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public sendWfcProfileInfo(I)V
    .locals 4
    .param p1, "rilWfcMode"    # I

    .line 690
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWfcProfileInfo rilWfcMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurWfcMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    if-eq p1, v1, :cond_5

    .line 694
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 696
    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 697
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v2, "Wifi-only and WFC setting enabled, send intent to turn radio OFF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 702
    :cond_1
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v3, "Wifi-only and WFC setting disabled, send intent to turn radio ON"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-static {v2, v3, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 707
    :cond_3
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v3, "Not wifi-only mode, turn radio ON"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-static {v2, v3, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    .line 711
    :goto_0
    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 713
    :cond_5
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFeatureValue(IIII)V
    .locals 10
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 469
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 470
    .local v9, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 471
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :try_start_2
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    goto :goto_0

    .line 474
    :catch_0
    move-exception v3

    .line 475
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 476
    const/4 v4, 0x4

    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 479
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 484
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v9    # "msg":Landroid/os/Message;
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 485
    return-void

    .line 480
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .restart local v9    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_5
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 483
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 484
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v9    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public declared-synchronized setImsResCapability(II)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mResourceValueLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 567
    :try_start_1
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 568
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 569
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 570
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfgResourceCapValue(IILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    :try_start_3
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 576
    goto :goto_0

    .line 573
    :catch_0
    move-exception v4

    .line 574
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 575
    const/4 v5, 0x4

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 578
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 584
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v2    # "msg":Landroid/os/Message;
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 585
    monitor-exit p0

    return-void

    .line 579
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_6
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something wrong, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 583
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4

    .line 584
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 565
    .end local p1    # "featureId":I
    .end local p2    # "value":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    throw p1
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 10
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "type"    # I

    .line 634
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mMdCfgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    const/4 v1, 0x0

    .line 636
    .local v1, "keysStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 637
    .local v2, "valuesStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 640
    .local v3, "resultArray":[I
    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 641
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys is null, return null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    monitor-exit v0

    return-object v4

    .line 676
    .end local v1    # "keysStr":Ljava/lang/String;
    .end local v2    # "valuesStr":Ljava/lang/String;
    .end local v3    # "resultArray":[I
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 645
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

    .line 650
    :cond_1
    array-length v5, p1

    array-length v6, p2

    if-ne v5, v6, :cond_2

    .line 651
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys and values length equals"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 653
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 654
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

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

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;

    invoke-direct {v5, p0, v4}, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    move-object v4, v5

    .line 657
    .local v4, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    array-length v5, p1

    iput v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->requestConfigNum:I

    .line 659
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6b

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 660
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v1, v2, p3, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 664
    :try_start_2
    iget-object v7, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 668
    goto :goto_0

    .line 665
    :catch_0
    move-exception v7

    .line 666
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 667
    const/4 v8, 0x4

    iput v8, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 669
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 670
    :try_start_4
    iget-object v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    move-object v3, v6

    .line 671
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    .end local v5    # "msg":Landroid/os/Message;
    nop

    .line 675
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v3

    .line 669
    .restart local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    .restart local v5    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 672
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys and values length not equals"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    monitor-exit v0

    return-object v4

    .line 646
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys or values length is smaller than 1, return null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    monitor-exit v0

    return-object v4

    .line 676
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
    .locals 0
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setProvisionedValue(ILjava/lang/String;)V

    .line 563
    return-void
.end method

.method public setProvisionedValue(ILjava/lang/String;)V
    .locals 7
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 533
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 534
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 535
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :try_start_2
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    goto :goto_0

    .line 538
    :catch_0
    move-exception v4

    .line 539
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 540
    const/4 v5, 0x4

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 542
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    :try_start_4
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 548
    return-void

    .line 544
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 542
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 547
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .end local v2    # "msg":Landroid/os/Message;
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

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoltePreference mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setVoiceDomainPreference(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    .line 628
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    throw p1
.end method
