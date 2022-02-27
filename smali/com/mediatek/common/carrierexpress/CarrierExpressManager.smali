.class public Lcom/mediatek/common/carrierexpress/CarrierExpressManager;
.super Ljava/lang/Object;
.source "CarrierExpressManager.java"


# static fields
.field public static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field public static final ACTION_CXP_RESET_MODEM:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_reset_modem"

.field public static final ACTION_CXP_SET_VENDOR_PROP:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_set_vendor_prop"

.field public static final ACTION_OPERATOR_CONFIG_CHANGED:Ljava/lang/String; = "com.mediatek.common.carrierexpress.operator_config_changed"

.field public static final ACTION_USER_NOTIFICATION_INTENT:Ljava/lang/String; = "com.mediatek.common.carrierexpress.action.user_notification_intent"

.field public static final CARRIEREXPRESS_SERVICE:Ljava/lang/String; = "carrierexpress"

.field private static final DBG:Z = true

.field public static final OPERATOR_OP03_SUBID_1:I = 0x1

.field public static final OPERATOR_OP03_SUBID_2:I = 0x2

.field public static final OPERATOR_OP03_SUBID_3:I = 0x3

.field public static final OPERATOR_OP03_SUBID_4:I = 0x4

.field public static final OPERATOR_OP03_SUBID_5:I = 0x5

.field public static final OPERATOR_OP03_SUBID_DEFAULT:I = 0x0

.field public static final SRV_CONFIG_STATE_IDLE:I = 0x2

.field public static final SRV_CONFIG_STATE_INIT:I = 0x0

.field public static final SRV_CONFIG_STATE_WAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarrierExpressManager"

.field private static sInstance:Lcom/mediatek/common/carrierexpress/CarrierExpressManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/common/carrierexpress/CarrierExpressManager;->sInstance:Lcom/mediatek/common/carrierexpress/CarrierExpressManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
