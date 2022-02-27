.class public final synthetic Lcom/android/ims/-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/ImsManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/ImsManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA;->f$0:Lcom/android/ims/ImsManager;

    iput p2, p0, Lcom/android/ims/-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA;->f$0:Lcom/android/ims/ImsManager;

    iget v1, p0, Lcom/android/ims/-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA;->f$1:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->lambda$setWfcModeInternal$0(Lcom/android/ims/ImsManager;I)V

    return-void
.end method
