.class public final Lcom/mediatek/common/regionalphone/RegionalPhone$MMS_SMS;
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
    name = "MMS_SMS"
.end annotation


# static fields
.field public static final MCC_MNC_TIMESTAMP:Ljava/lang/String; = "mcc_mnc_timestamp"

.field public static final MMS_CREATION_MODE:Ljava/lang/String; = "creationMode"

.field public static final SMS_C_NUMBER:Ljava/lang/String; = "CNumber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
