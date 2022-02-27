.class public Lcom/mediatek/common/regionalphone/RegionalPhone;
.super Ljava/lang/Object;
.source "RegionalPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/regionalphone/RegionalPhone$WALLPAPER;,
        Lcom/mediatek/common/regionalphone/RegionalPhone$SEARCHENGINE;,
        Lcom/mediatek/common/regionalphone/RegionalPhone$BROWSER;,
        Lcom/mediatek/common/regionalphone/RegionalPhone$SETTINGS;,
        Lcom/mediatek/common/regionalphone/RegionalPhone$APN;,
        Lcom/mediatek/common/regionalphone/RegionalPhone$MMS_SMS;
    }
.end annotation


# static fields
.field public static final APN_URI:Landroid/net/Uri;

.field public static final AUTHORITY:Ljava/lang/String; = "com.mediatek.provider.regionalphone"

.field public static final BROWSER_URI:Landroid/net/Uri;

.field public static final DATABASE_NAME:Ljava/lang/String; = "regionalphone.db"

.field public static final MMS_SMS_URI:Landroid/net/Uri;

.field public static final SEARCHENGINE_URI:Landroid/net/Uri;

.field public static final SETTINGS_URI:Landroid/net/Uri;

.field public static final TABLE_APN:Ljava/lang/String; = "apn"

.field public static final TABLE_BROWSER:Ljava/lang/String; = "browser"

.field public static final TABLE_MMS_SMS:Ljava/lang/String; = "mms_sms"

.field public static final TABLE_SEARCHENGINE:Ljava/lang/String; = "searchengine"

.field public static final TABLE_SETTINGS:Ljava/lang/String; = "settings"

.field public static final TABLE_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "content://com.mediatek.provider.regionalphone/mms_sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/regionalphone/RegionalPhone;->MMS_SMS_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.mediatek.provider.regionalphone/apn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/regionalphone/RegionalPhone;->APN_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://com.mediatek.provider.regionalphone/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/regionalphone/RegionalPhone;->SETTINGS_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "content://com.mediatek.provider.regionalphone/browser"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/regionalphone/RegionalPhone;->BROWSER_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://com.mediatek.provider.regionalphone/wallpaper"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/regionalphone/RegionalPhone;->WALLPAPER_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://com.mediatek.provider.regionalphone/searchengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/regionalphone/RegionalPhone;->SEARCHENGINE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
