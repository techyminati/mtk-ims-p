.class public final synthetic Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter$Fu_TJxPrz_icRRAcE-hESmVfVRI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter$Fu_TJxPrz_icRRAcE-hESmVfVRI;->f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter$Fu_TJxPrz_icRRAcE-hESmVfVRI;->f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    invoke-static {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;->lambda$onCapabilitiesStatusChanged$0(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V

    return-void
.end method
