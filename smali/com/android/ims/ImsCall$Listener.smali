.class public Lcom/android/ims/ImsCall$Listener;
.super Ljava/lang/Object;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 278
    return-void
.end method

.method public onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 288
    return-void
.end method

.method public onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 266
    return-void
.end method

.method public onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 340
    return-void
.end method

.method public onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 375
    return-void
.end method

.method public onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 433
    return-void
.end method

.method public onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 472
    return-void
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 149
    return-void
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 160
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 170
    return-void
.end method

.method public onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 298
    return-void
.end method

.method public onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 309
    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 225
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 214
    return-void
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 105
    return-void
.end method

.method public onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 319
    return-void
.end method

.method public onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 330
    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 191
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 201
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 180
    return-void
.end method

.method public onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    .line 421
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 126
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 115
    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 386
    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # I

    .line 401
    return-void
.end method

.method public onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 411
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 139
    return-void
.end method

.method public onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 246
    return-void
.end method

.method public onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 255
    return-void
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 235
    return-void
.end method

.method public onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 362
    return-void
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method

.method public onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    .line 482
    return-void
.end method

.method public onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "message"    # Ljava/lang/String;

    .line 460
    return-void
.end method

.method public onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 441
    return-void
.end method

.method public onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "status"    # I

    .line 451
    return-void
.end method
