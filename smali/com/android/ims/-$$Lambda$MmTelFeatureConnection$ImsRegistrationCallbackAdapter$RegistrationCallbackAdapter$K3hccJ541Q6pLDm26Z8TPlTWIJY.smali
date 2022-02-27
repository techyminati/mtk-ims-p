.class public final synthetic Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$K3hccJ541Q6pLDm26Z8TPlTWIJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$K3hccJ541Q6pLDm26Z8TPlTWIJY;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$K3hccJ541Q6pLDm26Z8TPlTWIJY;->f$0:I

    check-cast p1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    invoke-static {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->lambda$onRegistered$0(ILandroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    return-void
.end method
