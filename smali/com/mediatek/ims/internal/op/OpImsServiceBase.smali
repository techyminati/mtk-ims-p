.class public Lcom/mediatek/ims/internal/op/OpImsServiceBase;
.super Ljava/lang/Object;
.source "OpImsServiceBase.java"

# interfaces
.implements Lcom/mediatek/ims/internal/op/OpImsService;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpImsServiceBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected printDefaultLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "funcName"    # Ljava/lang/String;

    .line 49
    const-string v0, "OpImsServiceBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " call to OP base"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 1
    .param p1, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 54
    const-string v0, "setRttModeForIncomingCall"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsServiceBase;->printDefaultLog(Ljava/lang/String;)V

    .line 55
    return-void
.end method
