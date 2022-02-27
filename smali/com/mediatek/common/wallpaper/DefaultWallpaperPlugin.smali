.class public Lcom/mediatek/common/wallpaper/DefaultWallpaperPlugin;
.super Landroid/content/ContextWrapper;
.source "DefaultWallpaperPlugin.java"

# interfaces
.implements Lcom/mediatek/common/wallpaper/IWallpaperPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWallpaperPlugin"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getPluginDefaultImage()I
    .locals 2

    .line 41
    const-string v0, "DefaultWallpaperPlugin"

    const-string v1, "into getPluginDefaultImage: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "DefaultWallpaperPlugin"

    const-string v1, "into getPluginResources: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
