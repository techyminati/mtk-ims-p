.class public interface abstract Lcom/android/ims/ImsManager$Connector$Listener;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract connectionReady(Lcom/android/ims/ImsManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract connectionUnavailable()V
.end method
