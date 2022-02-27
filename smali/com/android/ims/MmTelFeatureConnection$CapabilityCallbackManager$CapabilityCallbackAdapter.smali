.class Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;
.super Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityCallbackAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;Lcom/android/ims/MmTelFeatureConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
    .param p2, "x1"    # Lcom/android/ims/MmTelFeatureConnection$1;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;)V

    return-void
.end method

.method static synthetic lambda$onCapabilitiesStatusChanged$0(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V
    .locals 0
    .param p0, "config"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    .line 223
    invoke-virtual {p1, p0}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 2
    .param p1, "config"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 222
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;->this$1:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    iget-object v0, v0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->mLocalCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter$Fu_TJxPrz_icRRAcE-hESmVfVRI;

    invoke-direct {v1, p1}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter$Fu_TJxPrz_icRRAcE-hESmVfVRI;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 224
    return-void
.end method
