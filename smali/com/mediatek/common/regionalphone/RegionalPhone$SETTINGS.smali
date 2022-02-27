.class public final Lcom/mediatek/common/regionalphone/RegionalPhone$SETTINGS;
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
    name = "SETTINGS"
.end annotation


# static fields
.field public static final MCC_MNC_TIMESTAMP:Ljava/lang/String; = "mcc_mnc_timestamp"

.field public static final NITZ_AUTOUPDATE:Ljava/lang/String; = "NITZAutoUpdate"

.field public static final WIFI_DEFAULT:Ljava/lang/String; = "wifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
