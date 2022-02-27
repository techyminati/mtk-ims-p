.class public Lcom/mediatek/ims/config/internal/ImsConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigReceiver.java"


# static fields
.field private static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field private static final DEBUG:Z

.field private static final PROPERTY_MTK_RCS_UA_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_rcs_ua_support"

.field private static final PROPERTY_MTK_VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final PROPERTY_MTK_VIWIFI_SUPPORT:Ljava/lang/String; = "persist.vendor.viwifi_support"

.field private static final PROPERTY_MTK_VOLTE_SUPPORT:Ljava/lang/String; = "persist.vendor.volte_support"

.field private static final PROPERTY_MTK_WFC_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_wfc_support"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigReceiver"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mMainPhoneId:I

.field private final mPhoneId:I

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.log.tel_dbg"

    .line 39
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->DEBUG:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mMainPhoneId:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 61
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    .line 62
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 65
    return-void
.end method

.method private forceToSendWfcMode()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 295
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 296
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    return-void
.end method

.method private handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 231
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 233
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    if-eq v0, v1, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 238
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const-string v2, "ImsConfigReceiver"

    const-string v3, "No need to reload config storage"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 248
    :cond_1
    const-string v2, "ACTION_CARRIER_CONFIG_CHANGED"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 250
    const-string v2, "mtk_wfc_remove_preference_mode_bool"

    invoke-static {p1, v2, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 252
    .local v2, "removeWfcPrefMode":Z
    const-string v3, "editable_wfc_mode_bool"

    invoke-static {p1, v3, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 254
    .local v3, "wfcModeEditable":Z
    const-string v4, "ImsConfigReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_WFC_REMOVE_PREFERENCE_MODE_BOOL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v4, "ImsConfigReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_EDITABLE_WFC_MODE_BOOL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-nez v2, :cond_2

    if-nez v3, :cond_5

    .line 257
    :cond_2
    const-string v4, "carrier_default_wfc_ims_mode_int"

    invoke-static {p1, v4, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 259
    .local v4, "wfcMode":I
    const-string v5, "ImsConfigReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_CARRIER_CONFIG_CHANGED: set wfc mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v5

    if-nez v5, :cond_4

    .line 264
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v5

    if-ne v5, v0, :cond_3

    goto :goto_0

    .line 267
    :cond_3
    const-string v5, "ImsConfigReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no set wfc mode due to mims: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", main phone id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "wfcMode":I
    goto :goto_1

    .line 265
    .restart local v4    # "wfcMode":I
    :cond_4
    :goto_0
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 272
    .end local v4    # "wfcMode":I
    :cond_5
    :goto_1
    const-string v4, "operator_id"

    invoke-static {p1, v4, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 275
    .local v4, "operatorCode":I
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 277
    .local v5, "msg":Landroid/os/Message;
    const-string v7, "ImsConfigReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "carrier config changed, operatorCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " on phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput v6, v5, Landroid/os/Message;->what:I

    .line 280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void
.end method

.method private resetWfcModeFlag(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 287
    .local v0, "msg":Landroid/os/Message;
    const-string v2, "ImsConfigReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWfcModeFlag, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput v1, v0, Landroid/os/Message;->what:I

    .line 289
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    return-void
.end method

.method private updateFeatureSupportProperty(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 185
    const-string v0, "persist.vendor.mtk_wfc_support"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    .local v0, "isWfcOn":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnWfc(Landroid/os/Message;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffWfc(Landroid/os/Message;)V

    .line 194
    :goto_0
    const-string v2, "persist.vendor.volte_support"

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 196
    .local v2, "isVolteOn":Z
    if-eqz v2, :cond_1

    .line 197
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVolte(Landroid/os/Message;)V

    goto :goto_1

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVolte(Landroid/os/Message;)V

    .line 203
    :goto_1
    const-string v3, "persist.vendor.vilte_support"

    const-string v4, "0"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 205
    .local v3, "isVilteOn":Z
    if-eqz v3, :cond_2

    .line 206
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVilte(Landroid/os/Message;)V

    goto :goto_2

    .line 208
    :cond_2
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVilte(Landroid/os/Message;)V

    .line 212
    :goto_2
    const-string v4, "persist.vendor.viwifi_support"

    const-string v5, "0"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 214
    .local v4, "isViWiFiOn":Z
    if-eqz v4, :cond_3

    .line 215
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnViwifi(Landroid/os/Message;)V

    goto :goto_3

    .line 217
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffViwifi(Landroid/os/Message;)V

    .line 221
    :goto_3
    const-string v5, "persist.vendor.mtk_rcs_ua_support"

    const-string v6, "0"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 223
    .local v5, "isRcsUaOn":Z
    if-eqz v5, :cond_4

    .line 224
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnRcsUa(Landroid/os/Message;)V

    goto :goto_4

    .line 226
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffRcsUa(Landroid/os/Message;)V

    .line 228
    :goto_4
    return-void
.end method

.method private updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 300
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 302
    invoke-interface {v0, p1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 305
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 311
    const-string v0, "ImsConfigReceiver"

    const-string v1, "Do not update if phoneId is not main capability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 313
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 69
    const/4 v0, -0x1

    .line 70
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x43dd7a3f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-eq v2, v3, :cond_3

    const v3, -0x1a88cade

    if-eq v2, v3, :cond_2

    const v3, -0xdb21ee7

    if-eq v2, v3, :cond_1

    const v3, 0x3d6899a4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    goto :goto_1

    :cond_1
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v2, "com.mediatek.common.carrierexpress.cxp_notify_feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_3
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v8

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 167
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 169
    .local v1, "opFeature":Landroid/os/Bundle;
    if-eqz v1, :cond_b

    .line 172
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->updateFeatureSupportProperty(Landroid/os/Bundle;)V

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    .end local v1    # "opFeature":Landroid/os/Bundle;
    goto/16 :goto_6

    .line 129
    :pswitch_1
    const/4 v1, 0x1

    .line 131
    .local v1, "isNeedUpdate":Z
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mMainPhoneId:I

    if-ne v2, v8, :cond_5

    .line 133
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mMainPhoneId:I

    .line 135
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mMainPhoneId:I

    if-eq v2, v3, :cond_7

    .line 136
    const/4 v1, 0x0

    goto :goto_2

    .line 139
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 141
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mMainPhoneId:I

    if-ne v0, v2, :cond_6

    .line 143
    const/4 v1, 0x0

    goto :goto_2

    .line 146
    :cond_6
    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mMainPhoneId:I

    .line 148
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mMainPhoneId:I

    if-eq v2, v3, :cond_7

    .line 149
    const/4 v1, 0x0

    .line 154
    :cond_7
    :goto_2
    if-eqz v1, :cond_b

    .line 155
    const-string v2, "ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 159
    .local v2, "msg":Landroid/os/Message;
    const-string v4, "ImsConfigReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_RADIO_CAPABILITY_DONE, update IMS config with phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput v3, v2, Landroid/os/Message;->what:I

    .line 162
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    .end local v2    # "msg":Landroid/os/Message;
    goto/16 :goto_6

    .line 125
    .end local v1    # "isNeedUpdate":Z
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    goto/16 :goto_6

    .line 72
    :pswitch_3
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "state":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    if-ne v0, v2, :cond_b

    .line 77
    const-string v2, "ImsConfigReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update LatestSimState, phoneId = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", state = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v2, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->LatestSimState:Ljava/util/HashMap;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :sswitch_1
    const-string v2, "NOT_READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v4, v5

    goto :goto_4

    :sswitch_2
    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v4, v7

    goto :goto_4

    :sswitch_3
    const-string v2, "READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v4, 0x6

    goto :goto_4

    :sswitch_4
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v4, v6

    goto :goto_4

    :sswitch_5
    const-string v2, "LOCKED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v4, 0x4

    goto :goto_4

    :sswitch_6
    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v4, 0x5

    goto :goto_4

    :cond_8
    :goto_3
    move v4, v8

    :goto_4
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_5

    .line 103
    :pswitch_4
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    .line 104
    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getWfcMode(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_9

    .line 106
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    invoke-static {p1, v2, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    .line 107
    const-string v2, "ImsConfigReceiver"

    const-string v3, "Turn OFF radio, after sim ready and wfc mode is wifi_only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 101
    :pswitch_5
    goto :goto_5

    .line 82
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 84
    .restart local v2    # "msg":Landroid/os/Message;
    const-string v3, "ImsConfigReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim state changed, event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", check for ECC flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput v6, v2, Landroid/os/Message;->what:I

    .line 87
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_7
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 94
    .restart local v2    # "msg":Landroid/os/Message;
    const-string v3, "ImsConfigReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim state changed, event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reset broadcast flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput v7, v2, Landroid/os/Message;->what:I

    .line 97
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    nop

    .line 113
    .end local v2    # "msg":Landroid/os/Message;
    :cond_9
    :goto_5
    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "LOADED"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 115
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_TRIGGER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v3, "phone"

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigReceiver;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v3, "ss"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    .end local v2    # "mIntent":Landroid/content/Intent;
    nop

    .line 180
    .end local v1    # "state":Ljava/lang/String;
    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_6
        -0x79d6d8f6 -> :sswitch_5
        -0x6d207e22 -> :sswitch_4
        0x4a3e183 -> :sswitch_3
        0x19d1382a -> :sswitch_2
        0x3da260f7 -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
