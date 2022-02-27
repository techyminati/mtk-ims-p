.class public Lcom/mediatek/ims/MtkImsConstants;
.super Ljava/lang/Object;
.source "MtkImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsConstants$ConfigConstants;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_SERVICE_DEREGISTERED:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DEREGISTERED"

.field public static final ACTION_MTK_IMS_SERVICE_UP:Ljava/lang/String; = "com.mediatek.ims.MTK_IMS_SERVICE_UP"

.field public static final AUDIO_QUALITY_EVS_AWB:I = 0x15

.field public static final EXTRA_DIAL_STRING:Ljava/lang/String; = "android:imsDialString"

.field public static final MTK_CONFIG_START:I = 0x3e8

.field public static final MTK_IMS_SERVICE:Ljava/lang/String; = "mtkIms"

.field public static final MULTI_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field public static final OOS_END_WITH_DISCONN:I = 0x0

.field public static final OOS_END_WITH_RESUME:I = 0x2

.field public static final OOS_START:I = 0x1

.field public static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field public static final SERVICE_REG_CAPABILITY_EVENT_ECC_NOT_SUPPORT:I = 0x4

.field public static final SERVICE_REG_CAPABILITY_EVENT_ECC_SUPPORT:I = 0x2

.field public static final SERVICE_REG_EVENT_WIFI_PDN_OOS_END_WITH_DISCONN:I = 0x6

.field public static final SERVICE_REG_EVENT_WIFI_PDN_OOS_END_WITH_RESUME:I = 0x7

.field public static final SERVICE_REG_EVENT_WIFI_PDN_OOS_START:I = 0x5

.field public static final WFC_IMS_ENABLED_SIM2:Ljava/lang/String; = "wfc_ims_enabled_sim2"

.field public static final WFC_IMS_ENABLED_SIM3:Ljava/lang/String; = "wfc_ims_enabled_sim3"

.field public static final WFC_IMS_ENABLED_SIM4:Ljava/lang/String; = "wfc_ims_enabled_sim4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
