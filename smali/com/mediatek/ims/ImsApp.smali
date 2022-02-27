.class public Lcom/mediatek/ims/ImsApp;
.super Landroid/app/Application;
.source "ImsApp.java"


# static fields
.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final TAG:Ljava/lang/String; = "ImsApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .line 60
    const-string v0, "persist.vendor.ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "ImsApp"

    const-string v1, "IMS not support, do not init ImsService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_2

    .line 65
    const-string v0, "ImsApp"

    const-string v1, "ImsApp onCreate begin"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 71
    .local v0, "imsService":Lcom/mediatek/ims/ImsService;
    const/4 v1, 0x1

    .line 72
    .local v1, "isDynamicBinding":Z
    const-string v2, "ImsApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDynamicBinding? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 74
    const-string v3, "ims"

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->getBinder()Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 76
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setContextAndInitRefVTP(Landroid/content/Context;)V

    .line 78
    new-instance v3, Lcom/mediatek/ims/MtkImsService;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/ims/MtkImsService;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsService;)V

    .line 80
    .local v3, "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    :try_start_0
    const-string v4, "mtkIms"

    invoke-virtual {v3}, Lcom/mediatek/ims/MtkImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "ImsApp"

    const-string v5, "Tried registering mtkIms system service, but failed. Nevermind."

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v2, "ImsApp"

    const-string v4, "ImsApp onCreate end"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.mediatek.ims.MTK_IMS_SERVICE_UP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "imsService":Lcom/mediatek/ims/ImsService;
    .end local v1    # "isDynamicBinding":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    :cond_2
    return-void
.end method
