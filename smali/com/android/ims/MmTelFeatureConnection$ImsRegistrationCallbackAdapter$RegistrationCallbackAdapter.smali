.class Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;
.super Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationCallbackAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;


# direct methods
.method private constructor <init>(Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;Lcom/android/ims/MmTelFeatureConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;
    .param p2, "x1"    # Lcom/android/ims/MmTelFeatureConnection$1;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;)V

    return-void
.end method

.method static synthetic lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 0
    .param p0, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "l"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 165
    invoke-virtual {p1, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic lambda$onRegistered$0(ILandroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 0
    .param p0, "imsRadioTech"    # I
    .param p1, "l"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 151
    invoke-virtual {p1, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;->onRegistered(I)V

    return-void
.end method

.method static synthetic lambda$onRegistering$1(ILandroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 0
    .param p0, "imsRadioTech"    # I
    .param p1, "l"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 158
    invoke-virtual {p1, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;->onRegistering(I)V

    return-void
.end method

.method static synthetic lambda$onSubscriberAssociatedUriChanged$4([Landroid/net/Uri;Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 0
    .param p0, "uris"    # [Landroid/net/Uri;
    .param p1, "l"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 181
    invoke-virtual {p1, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$onTechnologyChangeFailed$3(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 0
    .param p0, "targetRadioTech"    # I
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "l"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 173
    invoke-virtual {p2, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method


# virtual methods
.method public onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 163
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "onDeregistered ::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mLocalCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$vxFS2t25rwEiTAgHUI462y3Hz90;

    invoke-direct {v1, p1}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$vxFS2t25rwEiTAgHUI462y3Hz90;-><init>(Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 166
    return-void
.end method

.method public onRegistered(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    .line 149
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "onRegistered ::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mLocalCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$K3hccJ541Q6pLDm26Z8TPlTWIJY;

    invoke-direct {v1, p1}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$K3hccJ541Q6pLDm26Z8TPlTWIJY;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 152
    return-void
.end method

.method public onRegistering(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    .line 156
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "onRegistering ::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mLocalCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$u4ZBOw30LePcwafim6pu64v4hNM;

    invoke-direct {v1, p1}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$u4ZBOw30LePcwafim6pu64v4hNM;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 179
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "onSubscriberAssociatedUriChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mLocalCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$0vZ6D8L8NEmVenYChls3pkTpxsQ;

    invoke-direct {v1, p1}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$0vZ6D8L8NEmVenYChls3pkTpxsQ;-><init>([Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 182
    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "targetRadioTech"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 170
    const-string v0, "MmTelFeatureConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTechnologyChangeFailed :: targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mLocalCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU;

    invoke-direct {v1, p1, p2}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 175
    return-void
.end method
