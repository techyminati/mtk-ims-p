.class public abstract Lcom/android/ims/ImsServiceBase;
.super Ljava/lang/Object;
.source "ImsServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsServiceBase$ImsServiceBinder;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/android/ims/ImsServiceBase$ImsServiceBinder;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase;->mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsServiceBase$ImsServiceBinder;-><init>(Lcom/android/ims/ImsServiceBase;Lcom/android/ims/ImsServiceBase$1;)V

    iput-object v0, p0, Lcom/android/ims/ImsServiceBase;->mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsServiceBase;->mBinder:Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    return-object v0
.end method

.method protected onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 166
    return-void
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "serviceId"    # I

    .line 146
    return-void
.end method

.method protected onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 1
    .param p1, "phoneId"    # I

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .param p1, "serviceId"    # I

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .param p1, "serviceId"    # I

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 1
    .param p1, "serviceId"    # I

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onIsConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected onIsOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method protected onOpen(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected onSetRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 162
    return-void
.end method

.method protected onSetUiTTYMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 215
    return-void
.end method

.method protected onTurnOffIms(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 205
    return-void
.end method

.method protected onTurnOnIms(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 201
    return-void
.end method
