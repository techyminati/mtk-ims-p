.class public Lcom/mediatek/ims/ImsConfigManager;
.super Ljava/lang/Object;
.source "ImsConfigManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigManager"

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mImsConfigAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mMtkImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/internal/IMtkImsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.log.tel_dbg"

    .line 81
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
    sput-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    .line 82
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->SENLOG:Z

    .line 83
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRILAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    .line 103
    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 105
    new-instance v0, Lcom/mediatek/ims/ImsConfigManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConfigManager$1;-><init>(Lcom/mediatek/ims/ImsConfigManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImsConfigManager"

    const-string v1, "ImsConfigManager Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 129
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_TRIGGER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsConfigManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConfigManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigManager;->updateImsResrouceCapability(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 257
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    goto :goto_0

    .line 261
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :cond_0
    sget-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ImsConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ImsConfigAdapter phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    aget-object v2, p2, p3

    invoke-direct {v1, p1, v2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 263
    .restart local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_0
    monitor-exit v0

    move-object v0, v1

    .line 266
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .local v0, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    return-object v0

    .line 265
    .end local v0    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMainCapabilityPhoneId()I
    .locals 2

    .line 444
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 445
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 446
    :cond_0
    const/4 v0, -0x1

    .line 448
    :cond_1
    return v0
.end method

.method private static isTestSim(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "isTestSim":Z
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 431
    :pswitch_0
    const-string v1, "1"

    const-string v2, "vendor.gsm.sim.ril.testsim.4"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 428
    :pswitch_1
    const-string v1, "1"

    const-string v2, "vendor.gsm.sim.ril.testsim.3"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 429
    goto :goto_0

    .line 425
    :pswitch_2
    const-string v1, "1"

    const-string v2, "vendor.gsm.sim.ril.testsim.2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 426
    goto :goto_0

    .line 422
    :pswitch_3
    const-string v1, "1"

    const-string v2, "vendor.gsm.sim.ril.testsim"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 423
    nop

    .line 434
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapFeatureValue(Z)I
    .locals 1
    .param p0, "value"    # Z

    .line 414
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0
.end method

.method private updateImsResrouceCapability(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 271
    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 272
    .local v4, "mcc":I
    const/4 v5, 0x0

    .line 273
    .local v5, "mnc":I
    const/4 v0, 0x0

    .line 274
    .local v0, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    const/4 v6, 0x0

    .line 276
    .local v6, "mccMnc":Ljava/lang/String;
    const-string v7, "ss"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "simState":Ljava/lang/String;
    const-string v8, "phone"

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 279
    .local v8, "phoneId":I
    const-string v9, "1"

    const-string v10, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 280
    const-string v9, "ABSENT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "LOADED"

    .line 281
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 282
    :cond_0
    const-string v9, "ImsConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImsServiceConfig after SIM event, phoneId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {v1, v2, v8}, Lcom/mediatek/ims/ImsConfigManager;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 286
    :cond_1
    return-void

    .line 289
    :cond_2
    const-string v9, "ImsConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get MtkImsConfigImpl of phone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v9

    .line 297
    .end local v0    # "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .local v9, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :try_start_0
    const-string v0, "ABSENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    .line 298
    const-string v0, "ImsConfigManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setImsResCapability to volte only w/o SIM on phone "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x1

    .line 301
    .local v0, "volteResVal":I
    const/4 v13, 0x0

    .line 302
    .local v13, "vilteResVal":I
    const/4 v14, 0x0

    .line 304
    .local v14, "wfcResVal":I
    invoke-interface {v9, v12, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 306
    invoke-interface {v9, v11, v13}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 308
    invoke-interface {v9, v10, v14}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    goto/16 :goto_5

    .line 314
    .end local v0    # "volteResVal":I
    .end local v13    # "vilteResVal":I
    .end local v14    # "wfcResVal":I
    :cond_3
    const-string v0, "LOADED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 315
    invoke-static {v8}, Lcom/mediatek/ims/ImsConfigManager;->isTestSim(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 316
    const-string v0, "phone"

    .line 317
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v13, v0

    .line 319
    .local v13, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 320
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 326
    :cond_4
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move v4, v14

    .line 327
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v0

    .line 331
    nop

    .line 333
    :try_start_2
    const-string v0, "ImsConfigManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM loaded on phone "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " with mcc: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " mnc: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {v8}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 337
    .local v0, "subId":I
    invoke-virtual {v13, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v14

    .line 338
    .local v14, "iccid":Ljava/lang/String;
    sget-boolean v15, Lcom/mediatek/ims/ImsConfigManager;->SENLOG:Z

    if-eqz v15, :cond_5

    sget-boolean v15, Lcom/mediatek/ims/ImsConfigManager;->TELDBG:Z

    if-eqz v15, :cond_6

    .line 339
    :cond_5
    const-string v15, "ImsConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check iccid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 343
    const-string v10, "8988605"

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 344
    sget-boolean v10, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "ImsConfigManager"

    const-string v11, "Replace mccmnc for APTG roaming case"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_7
    const/16 v4, 0x1d2

    .line 346
    const/4 v5, 0x5

    goto :goto_0

    .line 349
    :cond_8
    const-string v10, "898603"

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "898611"

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 350
    :cond_9
    const/16 v4, 0x1cc

    .line 351
    const/4 v5, 0x3

    .line 352
    sget-boolean v10, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "ImsConfigManager"

    const-string v11, "Replace mccmnc for CT roaming case"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_a
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 360
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 361
    .local v11, "newConfiguration":Landroid/content/res/Configuration;
    iput v4, v11, Landroid/content/res/Configuration;->mcc:I

    .line 362
    if-nez v5, :cond_b

    const v15, 0xffff

    goto :goto_1

    :cond_b
    move v15, v5

    :goto_1
    iput v15, v11, Landroid/content/res/Configuration;->mnc:I

    .line 363
    const/4 v15, 0x0

    invoke-virtual {v10, v11, v15}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 365
    invoke-static {v8}, Lcom/mediatek/ims/OperatorUtils;->isCTVolteDisabled(I)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 366
    const/4 v15, 0x0

    .line 367
    .local v15, "volteResVal":I
    const/16 v16, 0x0

    .line 368
    .local v16, "vilteResVal":I
    const/16 v17, 0x0

    .local v17, "wfcResVal":I
    goto :goto_2

    .line 370
    .end local v15    # "volteResVal":I
    .end local v16    # "vilteResVal":I
    .end local v17    # "wfcResVal":I
    :cond_c
    const v15, 0x112003d

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    invoke-static {v15}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v15

    .line 372
    .restart local v15    # "volteResVal":I
    const v12, 0x112003e

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-static {v12}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v12

    move/from16 v16, v12

    .line 374
    .restart local v16    # "vilteResVal":I
    const v12, 0x112003f

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-static {v12}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v17

    .end local v0    # "subId":I
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v13    # "tm":Landroid/telephony/TelephonyManager;
    .end local v14    # "iccid":Ljava/lang/String;
    .restart local v17    # "wfcResVal":I
    :goto_2
    move/from16 v11, v17

    .line 377
    .end local v17    # "wfcResVal":I
    .local v11, "wfcResVal":I
    nop

    .line 382
    move/from16 v0, v16

    goto :goto_4

    .line 328
    .end local v11    # "wfcResVal":I
    .end local v15    # "volteResVal":I
    .end local v16    # "vilteResVal":I
    .restart local v13    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "ImsConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid mccMnc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 321
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    :goto_3
    const-string v0, "ImsConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid mccMnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 379
    .end local v13    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    const-string v0, "ImsConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found test SIM on phone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v15, 0x1

    .line 381
    .restart local v15    # "volteResVal":I
    const/16 v16, 0x1

    .line 382
    .restart local v16    # "vilteResVal":I
    move/from16 v0, v16

    const/4 v11, 0x1

    .end local v16    # "vilteResVal":I
    .local v0, "vilteResVal":I
    .restart local v11    # "wfcResVal":I
    :goto_4
    move v10, v11

    .line 385
    .end local v11    # "wfcResVal":I
    .local v10, "wfcResVal":I
    const-string v11, "ImsConfigManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Set res capability: volte = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", vilte = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", wfc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v11, 0x0

    invoke-interface {v9, v11, v15}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 390
    const/4 v11, 0x1

    invoke-interface {v9, v11, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 392
    const/4 v11, 0x2

    invoke-interface {v9, v11, v10}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 401
    .end local v0    # "vilteResVal":I
    .end local v10    # "wfcResVal":I
    .end local v15    # "volteResVal":I
    :cond_f
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v10, "phone"

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v10, "ss"

    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    const-string v10, "ImsConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", simState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 410
    .end local v0    # "mIntent":Landroid/content/Intent;
    goto :goto_6

    .line 408
    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "ImsConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SetImsCapability fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    return-void
.end method

.method private updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 452
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_0

    .line 453
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 454
    invoke-interface {v0, p1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 457
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConfigManager;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 465
    :cond_2
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ImsConfigManager"

    const-string v1, "Do not update if phoneId is not main capability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/ims/internal/IImsConfig;
    .locals 7
    .param p1, "phoneId"    # I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 167
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 169
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v4}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 173
    :cond_0
    new-instance v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v6, p1

    invoke-direct {v4, v5, v6, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v4

    .line 174
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    .line 175
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_0
    monitor-exit v3

    .line 178
    return-object v1

    .line 177
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .locals 12
    .param p1, "phoneId"    # I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 221
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    const/4 v2, 0x0

    .line 223
    .local v2, "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v3, v4, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v3

    .line 225
    .local v3, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 226
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v5}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 229
    :cond_0
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v7, p1

    invoke-direct {v5, v6, v7, v3, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v5

    .line 231
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    move-object v1, v5

    .line 232
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    iget-object v11, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v11

    .line 237
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-object v2, v4

    goto :goto_1

    .line 240
    :cond_1
    new-instance v4, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v5, p1

    move-object v5, v4

    move-object v8, v1

    move-object v9, v3

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v2, v4

    .line 242
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_1
    monitor-exit v11

    .line 245
    return-object v2

    .line 244
    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 234
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method public init(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v1, v2, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v1

    .line 148
    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    sget-boolean v2, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init ImsConfigImpl phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v2

    .line 150
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v5, v5, p1

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v3

    .line 152
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v2

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initEx(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 192
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 194
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    sget-boolean v3, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ImsConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initEx ImsConfigImpl phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v3

    .line 196
    :try_start_0
    new-instance v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v6, p1

    invoke-direct {v4, v5, v6, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v4

    .line 198
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 199
    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v7, "instance":Lcom/android/ims/internal/IImsConfig;
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    sget-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 203
    const-string v1, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initEx MtkImsConfigImpl phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v1

    .line 205
    :try_start_2
    new-instance v3, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v4, p1

    move-object v4, v3

    move-object v8, v2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    .line 207
    .local v3, "instanceEx":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    .end local v3    # "instanceEx":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 200
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v7

    goto :goto_0

    .end local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_2
    move-exception v4

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4
.end method
