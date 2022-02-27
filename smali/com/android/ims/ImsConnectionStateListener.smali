.class public Lcom/android/ims/ImsConnectionStateListener;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
.source "ImsConnectionStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 49
    return-void
.end method

.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 169
    return-void
.end method

.method public onFeatureCapabilityChangedAdapter(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 7
    .param p1, "imsRadioTech"    # I
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 74
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 76
    .local v1, "enabledCapabilities":[I
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 78
    new-array v0, v0, [I

    .line 79
    .local v0, "disabledCapabilities":[I
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 81
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {p2, v5}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    aput v4, v1, v4

    .line 103
    :cond_0
    invoke-virtual {p2, v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const/4 v4, 0x3

    aput v4, v1, v4

    .line 107
    :cond_1
    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const/4 v3, 0x5

    aput v3, v1, v3

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    aput v2, v1, v2

    .line 88
    :cond_2
    invoke-virtual {p2, v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    aput v5, v1, v5

    .line 92
    :cond_3
    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    aput v3, v1, v3

    .line 116
    :cond_4
    :goto_0
    nop

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 117
    aget v3, v1, v2

    if-eq v3, v2, :cond_5

    .line 118
    aput v2, v0, v2

    .line 116
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p0, v5, v1, v0}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChanged(I[I[I)V

    .line 123
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onImsConnected(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 129
    return-void
.end method

.method public onImsDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 143
    return-void
.end method

.method public onImsProgressing(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 136
    return-void
.end method

.method public onImsResumed()V
    .locals 0

    .line 152
    return-void
.end method

.method public onImsSuspended()V
    .locals 0

    .line 160
    return-void
.end method

.method public final onRegistered(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected(I)V

    .line 39
    return-void
.end method

.method public final onRegistering(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing(I)V

    .line 44
    return-void
.end method

.method public onRegistrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 191
    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    .line 60
    return-void
.end method

.method public final onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConnectionStateListener;->onRegistrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 55
    return-void
.end method

.method public onVoiceMessageCountChanged(I)V
    .locals 0
    .param p1, "count"    # I

    .line 177
    return-void
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 184
    return-void
.end method
