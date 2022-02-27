.class public Lcom/mediatek/ims/MtkImsComponentFactory;
.super Lcom/mediatek/ims/ImsComponentFactory;
.source "MtkImsComponentFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MtkImsComponentFactory"

.field private static sInstance:Lcom/mediatek/ims/MtkImsComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/mediatek/ims/ImsComponentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/MtkImsComponentFactory;
    .locals 2

    .line 49
    sget-object v0, Lcom/mediatek/ims/MtkImsComponentFactory;->sInstance:Lcom/mediatek/ims/MtkImsComponentFactory;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "MtkImsComponentFactory"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/mediatek/ims/MtkImsComponentFactory;

    invoke-direct {v0}, Lcom/mediatek/ims/MtkImsComponentFactory;-><init>()V

    sput-object v0, Lcom/mediatek/ims/MtkImsComponentFactory;->sInstance:Lcom/mediatek/ims/MtkImsComponentFactory;

    .line 53
    :cond_0
    sget-object v0, Lcom/mediatek/ims/MtkImsComponentFactory;->sInstance:Lcom/mediatek/ims/MtkImsComponentFactory;

    return-object v0
.end method
