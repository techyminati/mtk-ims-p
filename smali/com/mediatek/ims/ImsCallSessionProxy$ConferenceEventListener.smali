.class Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
.super Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConferenceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3030
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoTerminate()V
    .locals 3

    .line 3043
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "onAutoTerminate()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3044
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 3045
    return-void
.end method

.method public onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "confState"    # Landroid/telephony/ims/ImsConferenceState;

    .line 3034
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "onParticipantsUpdate()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3035
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3036
    return-void

    .line 3038
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3039
    return-void
.end method
