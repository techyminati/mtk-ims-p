.class public final synthetic Lcom/android/ims/internal/-$$Lambda$VideoPauseTracker$s27lPMyD4hPTfNQr9bbkfdTbLK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/internal/VideoPauseTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/internal/VideoPauseTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/internal/-$$Lambda$VideoPauseTracker$s27lPMyD4hPTfNQr9bbkfdTbLK8;->f$0:Lcom/android/ims/internal/VideoPauseTracker;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/-$$Lambda$VideoPauseTracker$s27lPMyD4hPTfNQr9bbkfdTbLK8;->f$0:Lcom/android/ims/internal/VideoPauseTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->lambda$sourcesToString$0(Lcom/android/ims/internal/VideoPauseTracker;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
