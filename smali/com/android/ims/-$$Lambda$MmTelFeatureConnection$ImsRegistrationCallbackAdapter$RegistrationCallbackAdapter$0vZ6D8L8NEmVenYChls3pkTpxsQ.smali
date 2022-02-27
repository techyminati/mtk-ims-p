.class public final synthetic Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$0vZ6D8L8NEmVenYChls3pkTpxsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:[Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>([Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$0vZ6D8L8NEmVenYChls3pkTpxsQ;->f$0:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$0vZ6D8L8NEmVenYChls3pkTpxsQ;->f$0:[Landroid/net/Uri;

    check-cast p1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    invoke-static {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;->lambda$onSubscriberAssociatedUriChanged$4([Landroid/net/Uri;Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    return-void
.end method
