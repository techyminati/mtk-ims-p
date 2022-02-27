.class public final synthetic Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU;->f$0:I

    iput-object p2, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU;->f$0:I

    iget-object v1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    check-cast p1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    invoke-static {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->lambda$onTechnologyChangeFailed$3(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    return-void
.end method
