.class public final synthetic Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;

    invoke-direct {v0}, Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;-><init>()V

    sput-object v0, Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;->INSTANCE:Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-interface {p1}, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;->notifyUnavailable()V

    return-void
.end method
