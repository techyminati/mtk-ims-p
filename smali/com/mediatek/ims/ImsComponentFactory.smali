.class public Lcom/mediatek/ims/ImsComponentFactory;
.super Ljava/lang/Object;
.source "ImsComponentFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ImsComponentFactory"

.field private static sInstance:Lcom/mediatek/ims/ImsComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/ImsComponentFactory;
    .locals 9

    .line 55
    sget-object v0, Lcom/mediatek/ims/ImsComponentFactory;->sInstance:Lcom/mediatek/ims/ImsComponentFactory;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "com.mediatek.ims.MtkImsComponentFactory"

    .line 57
    .local v0, "className":Ljava/lang/String;
    const-string v1, "/system/framework/mediatek-framework.jar"

    .line 58
    .local v1, "classPackage":Ljava/lang/String;
    new-instance v2, Ldalvik/system/PathClassLoader;

    .line 59
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 60
    .local v2, "pathClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "ImsComponentFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pathClassLoader = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v3, 0x0

    .line 63
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 64
    const-string v5, "ImsComponentFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 66
    .local v5, "clazzConstructfunc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v6, "ImsComponentFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "constructor function = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsComponentFactory;

    sput-object v4, Lcom/mediatek/ims/ImsComponentFactory;->sInstance:Lcom/mediatek/ims/ImsComponentFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v5    # "clazzConstructfunc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 68
    :catch_0
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ImsComponentFactory"

    const-string v6, "No MtkImsComponentFactory! Use AOSP for instead!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v5, Lcom/mediatek/ims/ImsComponentFactory;

    invoke-direct {v5}, Lcom/mediatek/ims/ImsComponentFactory;-><init>()V

    sput-object v5, Lcom/mediatek/ims/ImsComponentFactory;->sInstance:Lcom/mediatek/ims/ImsComponentFactory;

    .line 73
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classPackage":Ljava/lang/String;
    .end local v2    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/mediatek/ims/ImsComponentFactory;->sInstance:Lcom/mediatek/ims/ImsComponentFactory;

    return-object v0
.end method
