.class public Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;
.super Ljava/lang/Object;
.source "OpWallpaperCustomizationFactoryBase.java"


# static fields
.field static sFactory:Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

.field private static final sOpFactoryInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sOpFactoryInfoList:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sOpFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP03Wallpaper.apk"

    const-string v3, "com.mediatek.op03.wallpaper.Op03WallpaperCustomizationFactory"

    const-string v4, "com.mediatek.op03.wallpaper"

    const-string v5, "OP03"

    const-string v6, "SEGDEFAULT"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sFactory:Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpFactory(Landroid/content/Context;)Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sFactory:Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sOpFactoryInfoList:Ljava/util/List;

    .line 32
    invoke-static {p0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    sput-object v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sFactory:Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    .line 33
    sget-object v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sFactory:Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    invoke-direct {v1}, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;-><init>()V

    sput-object v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sFactory:Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;

    .line 37
    :cond_0
    sget-object v1, Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;->sFactory:Lcom/mediatek/common/wallpaper/OpWallpaperCustomizationFactoryBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public makeWallpaperPlugin(Landroid/content/Context;)Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    new-instance v0, Lcom/mediatek/common/wallpaper/DefaultWallpaperPlugin;

    invoke-direct {v0, p1}, Lcom/mediatek/common/wallpaper/DefaultWallpaperPlugin;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
