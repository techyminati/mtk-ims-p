.class public Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
.super Ljava/lang/Object;
.source "ImsCallPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsCallPlugin;


# static fields
.field private static final MULTI_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final TAG:Ljava/lang/String; = "ImsConfigPluginBase"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public getMainCapabilityPhoneId()I
    .locals 4

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 116
    .end local v0    # "phoneId":I
    .local v1, "phoneId":I
    const-string v0, "ImsConfigPluginBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainCapabilityPhoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1
.end method

.method public getModemMultiImsCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x2

    return v0
.end method

.method public getRealRequest(I)I
    .locals 0
    .param p1, "request"    # I

    .line 79
    return p1
.end method

.method public getServiceCategoryFromEcc(Ljava/lang/String;)I
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getSimApplicationState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 132
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimApplicationState()I

    move-result v0

    return v0
.end method

.method public getSimCardState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCardState()I

    move-result v0

    return v0
.end method

.method public getUpgradeCancelFlag()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getUpgradeCancelTimeoutFlag()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isCapabilitySwitching()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isImsFwkRequest(I)Z
    .locals 1
    .param p1, "request"    # I

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMims()Z
    .locals 2

    .line 69
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

.method public setImsFwkRequest(I)I
    .locals 0
    .param p1, "request"    # I

    .line 74
    return p1
.end method

.method public setSpecificEccCategory(I)V
    .locals 0
    .param p1, "eccCat"    # I

    .line 104
    return-void
.end method
