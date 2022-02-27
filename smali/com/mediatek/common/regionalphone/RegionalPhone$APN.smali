.class public final Lcom/mediatek/common/regionalphone/RegionalPhone$APN;
.super Ljava/lang/Object;
.source "RegionalPhone.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/regionalphone/RegionalPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "APN"
.end annotation


# static fields
.field public static final MCC_MNC_TIMESTAMP:Ljava/lang/String; = "mcc_mnc_timestamp"

.field public static final MMS_GPRS_APN:Ljava/lang/String; = "mms_GPRS_APN"

.field public static final MMS_NAME:Ljava/lang/String; = "mms_name"

.field public static final MMS_PORT:Ljava/lang/String; = "mms_port"

.field public static final MMS_PROXY:Ljava/lang/String; = "mms_proxy"

.field public static final MMS_SERVER:Ljava/lang/String; = "mms_server"

.field public static final SMS_PREFERRED_BEARER:Ljava/lang/String; = "sms_preferredBearer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
