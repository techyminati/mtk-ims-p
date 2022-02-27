.class public final Lcom/mediatek/common/regionalphone/RegionalPhone$BROWSER;
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
    name = "BROWSER"
.end annotation


# static fields
.field public static final BOOKMARK_TITLE:Ljava/lang/String; = "bookmarkTitle"

.field public static final BOOKMARK_URL:Ljava/lang/String; = "bookmarkURL"

.field public static final IS_FOLDER:Ljava/lang/String; = "folder"

.field public static final MCC_MNC_TIMESTAMP:Ljava/lang/String; = "mcc_mnc_timestamp"

.field public static final PARENT:Ljava/lang/String; = "parent"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
