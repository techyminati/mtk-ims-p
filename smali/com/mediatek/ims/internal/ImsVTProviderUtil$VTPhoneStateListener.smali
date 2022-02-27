.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTPhoneStateListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .param p2, "subId"    # Ljava/lang/Integer;

    .line 289
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 290
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    .line 291
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 304
    if-nez p1, :cond_0

    .line 305
    const-string v0, "ImsVT Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onServiceStateChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": serviceState is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 311
    .local v0, "phondId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    const-string v1, "ImsVT Util"

    const-string v2, "[onServiceStateChanged] : phondId is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 317
    .local v1, "isDataRoaming":Z
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    .line 322
    .local v2, "isVoiceRoaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 325
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 298
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mContext:Landroid/content/Context;

    .line 299
    return-void
.end method

.method public setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p1, "owner"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 294
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 295
    return-void
.end method
