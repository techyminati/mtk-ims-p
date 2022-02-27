.class public Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigEventReceiver.java"


# static fields
.field private static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field private static final DEBUG:Z

.field private static final PROPERTY_MTK_RCS_UA_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_rcs_ua_support"

.field private static final PROPERTY_MTK_VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final PROPERTY_MTK_VIWIFI_SUPPORT:Ljava/lang/String; = "persist.vendor.viwifi_support"

.field private static final PROPERTY_MTK_VOLTE_SUPPORT:Ljava/lang/String; = "persist.vendor.volte_support"

.field private static final PROPERTY_MTK_WFC_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_wfc_support"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.log.mLogTag.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigEventReceiver"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mLogTag:Ljava/lang/String;

.field private final mPhoneId:I

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.log.mLogTag.tel_dbg"

    .line 36
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->DEBUG:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 58
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    .line 59
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsConfigEventReceiver["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 192
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-eq v0, v1, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 199
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "No need to reload config storage"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 209
    :cond_1
    const-string v2, "ACTION_CARRIER_CONFIG_CHANGED"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 211
    const-string v2, "mtk_wfc_remove_preference_mode_bool"

    invoke-static {p1, v2, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 213
    .local v2, "removeWfcPrefMode":Z
    const-string v3, "editable_wfc_mode_bool"

    invoke-static {p1, v3, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 215
    .local v3, "wfcModeEditable":Z
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_WFC_REMOVE_PREFERENCE_MODE_BOOL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_EDITABLE_WFC_MODE_BOOL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez v2, :cond_2

    if-nez v3, :cond_5

    .line 218
    :cond_2
    const-string v4, "carrier_default_wfc_ims_mode_int"

    invoke-static {p1, v4, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 220
    .local v4, "wfcMode":I
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

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

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v5

    if-nez v5, :cond_4

    .line 225
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v5

    if-ne v5, v0, :cond_3

    goto :goto_0

    .line 228
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no set wfc mode due to mims: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", main phone id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "wfcMode":I
    goto :goto_1

    .line 226
    .restart local v4    # "wfcMode":I
    :cond_4
    :goto_0
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 232
    .end local v4    # "wfcMode":I
    :cond_5
    :goto_1
    return-void
.end method

.method private resetWfcModeFlag(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 237
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWfcModeFlag, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    return-void
.end method

.method private updateFeatureSupportProperty(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 139
    const-string v0, "persist.vendor.mtk_wfc_support"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 141
    .local v0, "isWfcOn":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnWfc(Landroid/os/Message;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffWfc(Landroid/os/Message;)V

    .line 148
    :goto_0
    const-string v2, "persist.vendor.volte_support"

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 150
    .local v2, "isVolteOn":Z
    if-eqz v2, :cond_1

    .line 151
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVolte(Landroid/os/Message;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVolte(Landroid/os/Message;)V

    .line 157
    :goto_1
    const-string v3, "persist.vendor.vilte_support"

    const-string v4, "0"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 159
    .local v3, "isVilteOn":Z
    if-eqz v3, :cond_2

    .line 160
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVilte(Landroid/os/Message;)V

    goto :goto_2

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVilte(Landroid/os/Message;)V

    .line 166
    :goto_2
    const-string v4, "persist.vendor.viwifi_support"

    const-string v5, "0"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 168
    .local v4, "isViWiFiOn":Z
    if-eqz v4, :cond_3

    .line 169
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnViwifi(Landroid/os/Message;)V

    goto :goto_3

    .line 171
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffViwifi(Landroid/os/Message;)V

    .line 175
    :goto_3
    const-string v5, "persist.vendor.mtk_rcs_ua_support"

    const-string v6, "0"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 177
    .local v5, "isRcsUaOn":Z
    if-eqz v5, :cond_4

    .line 178
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnRcsUa(Landroid/os/Message;)V

    goto :goto_4

    .line 180
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffRcsUa(Landroid/os/Message;)V

    .line 183
    :goto_4
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFeatureSupportProperty(), volte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    if-eqz v2, :cond_5

    const-string v7, "1"

    goto :goto_5

    :cond_5
    const-string v7, "0"

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " wfc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    if-eqz v0, :cond_6

    const-string v7, "1"

    goto :goto_6

    :cond_6
    const-string v7, "0"

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " vilte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    if-eqz v3, :cond_7

    const-string v7, "1"

    goto :goto_7

    :cond_7
    const-string v7, "0"

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " viwifi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    if-eqz v4, :cond_8

    const-string v7, "1"

    goto :goto_8

    :cond_8
    const-string v7, "0"

    :goto_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isRcsUaOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    if-eqz v5, :cond_9

    const-string v7, "1"

    goto :goto_9

    :cond_9
    const-string v7, "0"

    :goto_9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method private updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 243
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 245
    invoke-interface {v0, p1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 248
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v1, "Do not update if phoneId is not main capability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 251
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 256
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 67
    const/4 v0, -0x1

    .line 68
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x43dd7a3f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

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

    move v1, v5

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

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v7

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 119
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 121
    .local v1, "opFeature":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 124
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateFeatureSupportProperty(Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 129
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "ACTION_CXP_NOTIFY_FEATURE, opFeature is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "opFeature":Landroid/os/Bundle;
    goto/16 :goto_5

    .line 105
    :pswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 106
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-ne v1, v0, :cond_b

    .line 107
    const-string v1, "ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 111
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_RADIO_CAPABILITY_DONE, update IMS config with phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput v2, v1, Landroid/os/Message;->what:I

    .line 114
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_5

    .line 101
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    goto/16 :goto_5

    .line 70
    :pswitch_3
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "state":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-ne v0, v2, :cond_b

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x79d7dbfb

    if-eq v2, v3, :cond_8

    const v3, 0x4a3e183

    if-eq v2, v3, :cond_7

    const v3, 0x72b3d739

    if-eq v2, v3, :cond_6

    goto :goto_2

    :cond_6
    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v4, v6

    goto :goto_3

    :cond_7
    const-string v2, "READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_8
    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v4, v5

    goto :goto_3

    :cond_9
    :goto_2
    move v4, v7

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 86
    :pswitch_4
    const-string v2, "1"

    const-string v3, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 88
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsServiceConfig after SIM event, phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto :goto_4

    .line 76
    :pswitch_5
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    .line 77
    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getWfcMode(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_a

    .line 79
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {p1, v2, v6}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    .line 80
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "Turn OFF radio, after sim ready and wfc mode is wifi_only"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_a
    :goto_4
    nop

    .line 134
    .end local v1    # "state":Ljava/lang/String;
    :cond_b
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
