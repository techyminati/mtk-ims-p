.class public final Lcom/mediatek/common/regionalphone/RegionalPhone$SEARCHENGINE;
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
    name = "SEARCHENGINE"
.end annotation


# static fields
.field public static final ENCODING:Ljava/lang/String; = "encoding"

.field public static final FAVICON:Ljava/lang/String; = "favicon"

.field public static final KEYWORD:Ljava/lang/String; = "keyword"

.field public static final MCC_MNC_TIMESTAMP:Ljava/lang/String; = "mcc_mnc_timestamp"

.field public static final SEARCH_ENGINE_LABEL:Ljava/lang/String; = "searchEngineLabel"

.field public static final SEARCH_ENGINE_NAME:Ljava/lang/String; = "searchEngineName"

.field public static final SEARCH_URL:Ljava/lang/String; = "searchURL"

.field public static final SUGGESTION_URL:Ljava/lang/String; = "suggestionURL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
