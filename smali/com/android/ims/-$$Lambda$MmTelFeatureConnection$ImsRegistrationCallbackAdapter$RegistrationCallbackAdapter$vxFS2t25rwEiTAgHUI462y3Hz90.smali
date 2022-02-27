.class public final synthetic Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$vxFS2t25rwEiTAgHUI462y3Hz90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$vxFS2t25rwEiTAgHUI462y3Hz90;->f$0:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$vxFS2t25rwEiTAgHUI462y3Hz90;->f$0:Landroid/telephony/ims/ImsReasonInfo;

    check-cast p1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    invoke-static {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    return-void
.end method
