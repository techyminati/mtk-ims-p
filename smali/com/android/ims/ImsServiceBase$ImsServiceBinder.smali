.class final Lcom/android/ims/ImsServiceBase$ImsServiceBinder;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsServiceBase;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsServiceBase;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsServiceBase;Lcom/android/ims/ImsServiceBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/ImsServiceBase;
    .param p2, "x1"    # Lcom/android/ims/ImsServiceBase$1;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;-><init>(Lcom/android/ims/ImsServiceBase;)V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 71
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 72
    return-void
.end method

.method public close(I)V
    .locals 1
    .param p1, "serviceId"    # I

    .line 51
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onClose(I)V

    .line 52
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 77
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 83
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onCreateCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 1
    .param p1, "phoneId"    # I

    .line 98
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .param p1, "serviceId"    # I

    .line 113
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    return-object v0
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .param p1, "serviceId"    # I

    .line 123
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsServiceBase;->onGetPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 1
    .param p1, "serviceId"    # I

    .line 93
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onGetUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    return-object v0
.end method

.method public isConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 56
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onIsConnected(III)Z

    move-result v0

    return v0
.end method

.method public isOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    .line 61
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onIsOpened(I)Z

    move-result v0

    return v0
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 46
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/ImsServiceBase;->onOpen(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    return v0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 66
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsServiceBase;->onSetRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 67
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 118
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsServiceBase;->onSetUiTTYMode(IILandroid/os/Message;)V

    .line 119
    return-void
.end method

.method public turnOffIms(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 108
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onTurnOffIms(I)V

    .line 109
    return-void
.end method

.method public turnOnIms(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 103
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;->this$0:Lcom/android/ims/ImsServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsServiceBase;->onTurnOnIms(I)V

    .line 104
    return-void
.end method
