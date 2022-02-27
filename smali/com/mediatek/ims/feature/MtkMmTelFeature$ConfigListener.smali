.class Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;
.super Lcom/android/ims/ImsConfigListener$Stub;
.source "MtkMmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/feature/MtkMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigListener"
.end annotation


# instance fields
.field private final mCapability:I

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mTech:I


# direct methods
.method public constructor <init>(IILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 235
    invoke-direct {p0}, Lcom/android/ims/ImsConfigListener$Stub;-><init>()V

    .line 236
    iput p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mCapability:I

    .line 237
    iput p2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mTech:I

    .line 238
    iput-object p3, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 239
    return-void
.end method


# virtual methods
.method public getFeatureValueReceived(I)V
    .locals 0
    .param p1, "value"    # I

    .line 274
    return-void
.end method

.method public onGetFeatureResponse(IIII)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mCapability:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mTech:I

    if-ne p2, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 246
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->getFeatureValueReceived(I)V

    goto :goto_0

    .line 248
    :cond_0
    const-string v0, "MtkMmTelFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetFeatureResponse: response different than requested: feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void
.end method

.method public onGetVideoQuality(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method public onSetFeatureResponse(IIII)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mCapability:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mTech:I

    if-ne p2, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 258
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;->setFeatureValueReceived(I)V

    goto :goto_0

    .line 260
    :cond_0
    const-string v0, "MtkMmTelFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetFeatureResponse: response different than requested: feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void
.end method

.method public onSetVideoQuality(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    return-void
.end method

.method public setFeatureValueReceived(I)V
    .locals 0
    .param p1, "value"    # I

    .line 277
    return-void
.end method
