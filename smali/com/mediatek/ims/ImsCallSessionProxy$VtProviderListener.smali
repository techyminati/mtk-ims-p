.class Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;
.super Ljava/lang/Object;
.source "ImsCallSessionProxy.java"

# interfaces
.implements Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VtProviderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p2, "x1"    # Lcom/mediatek/ims/ImsCallSessionProxy$1;

    .line 369
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    return-void
.end method


# virtual methods
.method public onReceivePauseState(Z)V
    .locals 3
    .param p1, "isPause"    # Z

    .line 371
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivePauseState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 375
    if-eqz p1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 384
    return-void
.end method

.method public onReceiveWiFiUsage(J)V
    .locals 0
    .param p1, "usage"    # J

    .line 387
    return-void
.end method
