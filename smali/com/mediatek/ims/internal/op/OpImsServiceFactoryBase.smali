.class public Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;
.super Ljava/lang/Object;
.source "OpImsServiceFactoryBase.java"

# interfaces
.implements Lcom/mediatek/ims/internal/op/OpImsServiceFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpImsServiceFactoryBase"

.field private static sInstance:Lcom/mediatek/ims/internal/op/OpImsServiceFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/ims/internal/op/OpImsServiceFactory;
    .locals 5

    const-class v0, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->sInstance:Lcom/mediatek/ims/internal/op/OpImsServiceFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 59
    :try_start_1
    const-string v1, "com.mediatek.op.imsservice.OpImsServiceFactoryImpl"

    .line 60
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 61
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/internal/op/OpImsServiceFactory;

    sput-object v3, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->sInstance:Lcom/mediatek/ims/internal/op/OpImsServiceFactory;

    .line 62
    const-string v3, "OpImsServiceFactoryBase"

    const-string v4, "Load OP packages successfully"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v3, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->sInstance:Lcom/mediatek/ims/internal/op/OpImsServiceFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v3

    .line 68
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OpImsServiceFactoryBase"

    const-string v3, "Load OP packages fail due to some reason"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 65
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "OpImsServiceFactoryBase"

    const-string v3, "OP packages classes are not found"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 72
    :goto_0
    new-instance v1, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;

    invoke-direct {v1}, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;-><init>()V

    sput-object v1, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->sInstance:Lcom/mediatek/ims/internal/op/OpImsServiceFactory;

    .line 75
    :cond_0
    sget-object v1, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->sInstance:Lcom/mediatek/ims/internal/op/OpImsServiceFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public makeOpImsCallSessionProxy()Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;
    .locals 1

    .line 85
    new-instance v0, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;-><init>()V

    return-object v0
.end method

.method public makeOpImsService()Lcom/mediatek/ims/internal/op/OpImsService;
    .locals 1

    .line 90
    new-instance v0, Lcom/mediatek/ims/internal/op/OpImsServiceBase;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/op/OpImsServiceBase;-><init>()V

    return-object v0
.end method

.method public makeOpImsServiceCall(Landroid/content/Context;I)Lcom/mediatek/ims/internal/op/OpImsServiceCall;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 80
    new-instance v0, Lcom/mediatek/ims/internal/op/OpImsServiceCallBase;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/ims/internal/op/OpImsServiceCallBase;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
