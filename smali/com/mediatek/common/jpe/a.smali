.class public Lcom/mediatek/common/jpe/a;
.super Ljava/lang/Object;
.source "a.java"


# static fields
.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/common/jpe/a;->b:Z

    .line 59
    const-string v0, "nativecheck-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/common/jpe/JpeException;
        }
    .end annotation

    .line 49
    sget-boolean v0, Lcom/mediatek/common/jpe/a;->b:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/common/jpe/a;->b:Z

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/common/jpe/a;->aa()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/mediatek/common/jpe/JpeException;

    const-string v1, "Class Not Found"

    invoke-direct {v0, v1}, Lcom/mediatek/common/jpe/JpeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native aa()I
.end method
