.class public Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
.super Ljava/lang/Object;
.source "ImsVTUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTUsageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsVTUsage"
.end annotation


# instance fields
.field private mLTEUsage:J

.field private mWifiUsage:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLTEUsage:J

    .line 80
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 81
    return-void
.end method


# virtual methods
.method public getLteUsage()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLTEUsage:J

    return-wide v0
.end method

.method public getWifiUsage()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    return-wide v0
.end method

.method public setLteUsage(J)V
    .locals 0
    .param p1, "usage"    # J

    .line 92
    iput-wide p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLTEUsage:J

    .line 93
    return-void
.end method

.method public setWifiUsage(J)V
    .locals 0
    .param p1, "usage"    # J

    .line 96
    iput-wide p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 97
    return-void
.end method
