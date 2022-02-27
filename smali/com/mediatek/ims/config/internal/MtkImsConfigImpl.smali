.class public Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
.super Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;
.source "MtkImsConfigImpl.java"


# static fields
.field private static final DEBUG:Z

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "MtkImsConfigImpl"


# instance fields
.field private mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

.field private mContext:Landroid/content/Context;

.field private mImsCapabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsCapabilitiesIsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsConfig:Lcom/android/ims/internal/IImsConfig;

.field private mPhoneId:I

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.log.tel_dbg"

    .line 36
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->DEBUG:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "imsConfig"    # Lcom/android/ims/internal/IImsConfig;
    .param p4, "adapter"    # Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .param p5, "phoneId"    # I

    .line 61
    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 63
    iput p5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    .line 64
    iput-object p2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 65
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    .line 66
    iput-object p4, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .line 69
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 69
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 71
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 73
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 180
    :try_start_0
    const-string v0, "MtkImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeatureValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : on phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .line 186
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeatureValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") remote failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getImsResCapability(I)I
    .locals 4
    .param p1, "feature"    # I

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "value":I
    goto :goto_0

    .line 403
    .end local v0    # "value":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getImsResCapability(I)I

    move-result v0

    .line 406
    .restart local v0    # "value":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 408
    :cond_1
    new-instance v1, Lcom/android/ims/ImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " result value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " incorrect!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_2
    :goto_1
    return v0

    .line 413
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "MtkImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsResCapability("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") failed, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "result":Ljava/lang/String;
    const-string v1, "MtkImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisionedStringValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from binder pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", binder uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", process pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", process uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-object v0

    .line 124
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedStringValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") remote failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProvisionedValue(I)I
    .locals 4
    .param p1, "item"    # I

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result v0

    .line 95
    .local v0, "result":I
    const-string v1, "MtkImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisionedValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from binder pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", binder uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", process pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", process uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return v0

    .line 101
    .end local v0    # "result":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") remote failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 363
    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 206
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFeatureValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") remote failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setImsResCapability(II)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "value"    # I

    .line 380
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :try_start_0
    sget-boolean v0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MtkImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsResCapability("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from binder pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", binder uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setImsResCapability(II)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "MtkImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsResCapability("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") failed, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 467
    .local v1, "type":I
    const-string v2, "MtkImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setModemImsCfg phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    .line 470
    return-object v0
.end method

.method public setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "result":[I
    const/4 v1, 0x2

    .line 501
    .local v1, "type":I
    const-string v2, "MtkImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setModemImsIwlanCfg phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    .line 504
    return-object v0
.end method

.method public setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "result":[I
    const/4 v1, 0x1

    .line 484
    .local v1, "type":I
    const-string v2, "MtkImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setModemImsWoCfg phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    .line 487
    return-object v0
.end method

.method public setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V
    .locals 8
    .param p1, "feature"    # [I
    .param p2, "network"    # [I
    .param p3, "value"    # [I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v2

    iget v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    const-string v2, "MtkImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFeatureValue is not allow on non main capability phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in non MIMS project"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v2, Lcom/android/ims/ImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not setFeatureValue for non MIMS not main capability phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 242
    :cond_1
    :goto_0
    nop

    .line 246
    nop

    .line 248
    move v2, v0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_c

    .line 252
    :try_start_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 255
    array-length v3, p1

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_2

    .line 256
    const/4 v3, 0x1

    .local v3, "isLast":I
    goto :goto_2

    .line 258
    .end local v3    # "isLast":I
    :cond_2
    move v3, v0

    .line 262
    .restart local v3    # "isLast":I
    :goto_2
    aget v4, p3, v2

    if-ne v4, v1, :cond_3

    .line 263
    const-string v4, "1"

    const-string v5, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getImsResCapability(I)I

    move-result v4

    .line 267
    .local v4, "resCap":I
    if-eq v4, v1, :cond_3

    .line 268
    const-string v5, "MtkImsConfigImpl"

    const-string v6, "setMultiFeatureValues, modify the value in ImsConfig."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    aput v0, p3, v2

    .line 275
    .end local v4    # "resCap":I
    :cond_3
    const-string v4, "MtkImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMultiFeatureValues i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " feature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isLast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    aget v5, p1, v2

    aget v6, p2, v2

    aget v7, p3, v2

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setFeatureValue(IIII)V

    .line 281
    .end local v3    # "isLast":I
    goto/16 :goto_3

    .line 283
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    aget v4, p1, v2

    aget v5, p2, v2

    aget v6, p3, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->setFeatureValue(III)V

    .line 285
    aget v3, p1, v2

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 298
    :pswitch_0
    const-string v3, "persist.vendor.mtk.viwifi.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {v3, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v3

    .line 300
    .local v3, "oldViWifiValue":I
    aget v5, p3, v2

    if-eq v5, v3, :cond_9

    .line 301
    aget v5, p3, v2

    if-ne v5, v1, :cond_5

    .line 302
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnViwifi(Landroid/os/Message;)V

    goto :goto_3

    .line 304
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffViwifi(Landroid/os/Message;)V

    goto :goto_3

    .line 309
    .end local v3    # "oldViWifiValue":I
    :pswitch_1
    const-string v3, "persist.vendor.mtk.wfc.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {v3, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v3

    .line 311
    .local v3, "oldWfcValue":I
    aget v5, p3, v2

    if-eq v5, v3, :cond_9

    .line 312
    aget v5, p3, v2

    if-ne v5, v1, :cond_6

    .line 313
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnWfc(Landroid/os/Message;)V

    goto :goto_3

    .line 315
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffWfc(Landroid/os/Message;)V

    goto :goto_3

    .line 287
    .end local v3    # "oldWfcValue":I
    :pswitch_2
    const-string v3, "persist.vendor.mtk.vilte.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {v3, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v3

    .line 289
    .local v3, "oldViLTEValue":I
    aget v5, p3, v2

    if-eq v5, v3, :cond_9

    .line 290
    aget v5, p3, v2

    if-ne v5, v1, :cond_7

    .line 291
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVilte(Landroid/os/Message;)V

    goto :goto_3

    .line 293
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVilte(Landroid/os/Message;)V

    goto :goto_3

    .line 320
    .end local v3    # "oldViLTEValue":I
    :pswitch_3
    const-string v3, "persist.vendor.mtk.volte.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mPhoneId:I

    invoke-static {v3, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v3

    .line 322
    .local v3, "oldVoLTEValue":I
    aget v5, p3, v2

    if-eq v5, v3, :cond_9

    .line 323
    aget v5, p3, v2

    if-ne v5, v1, :cond_8

    .line 324
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVolte(Landroid/os/Message;)V

    goto :goto_3

    .line 326
    :cond_8
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVolte(Landroid/os/Message;)V

    .line 334
    .end local v3    # "oldVoLTEValue":I
    :cond_9
    :goto_3
    if-eqz p4, :cond_a

    .line 335
    aget v3, p1, v2

    aget v4, p2, v2

    aget v5, p3, v2

    invoke-interface {p4, v3, v4, v5, v0}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :cond_a
    goto :goto_4

    .line 347
    :catch_0
    move-exception v0

    goto :goto_5

    .line 338
    :catch_1
    move-exception v3

    .line 339
    .local v3, "e":Lcom/android/ims/ImsException;
    :try_start_2
    const-string v4, "MtkImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFeatureValue("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") failed, code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz p4, :cond_b

    .line 342
    aget v4, p1, v2

    aget v5, p2, v2

    invoke-interface {p4, v4, v5, v0, v1}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 350
    .end local v3    # "e":Lcom/android/ims/ImsException;
    :cond_b
    :goto_4
    nop

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 347
    :goto_5
    nop

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsConfigImpl"

    const-string v3, "setMultiFeatureValues onSetFeatureResponse remote failed!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :cond_c
    return-void

    .line 243
    :catch_2
    move-exception v0

    goto :goto_7

    .line 231
    :catch_3
    move-exception v2

    .line 232
    .local v2, "e":Lcom/android/ims/ImsException;
    :try_start_3
    const-string v3, "MtkImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMultiFeatureValues failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p4, :cond_d

    .line 235
    move v3, v0

    .local v3, "i":I
    :goto_6
    array-length v4, p1

    if-ge v3, v4, :cond_d

    .line 236
    aget v4, p1, v3

    aget v5, p2, v3

    invoke-interface {p4, v4, v5, v0, v1}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 241
    .end local v3    # "i":I
    :cond_d
    return-void

    .line 243
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_7
    nop

    .line 244
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsConfigImpl"

    const-string v2, "setMultiFeatureValues onSetFeatureResponse remote failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvisionedValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") remote failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x1

    return v1
.end method

.method public setProvisionedValue(II)I
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvisionedValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") remote failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x1

    return v1
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 375
    return-void
.end method

.method public setVoltePreference(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 453
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setVoltePreference(I)V

    .line 454
    return-void
.end method

.method public setWfcMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 423
    const-string v0, "MtkImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x1

    .line 429
    .local v0, "rilWfcMode":I
    packed-switch p1, :pswitch_data_0

    .line 440
    const-string v1, "MtkImsConfigImpl"

    const-string v2, "setWfcMode mapping error, value is invalid!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :pswitch_0
    const/4 v0, 0x1

    .line 438
    goto :goto_0

    .line 434
    :pswitch_1
    const/4 v0, 0x2

    .line 435
    goto :goto_0

    .line 431
    :pswitch_2
    const/4 v0, 0x3

    .line 432
    nop

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->sendWfcProfileInfo(I)V

    .line 444
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
