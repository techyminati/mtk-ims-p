.class public Lcom/mediatek/ims/ril/ImsRadioIndication;
.super Lcom/mediatek/ims/ril/ImsRadioIndicationBase;
.source "ImsRadioIndication.java"


# static fields
.field private static final INVALID_CALL_MODE:I = 0xff


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 62
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 64
    iput p2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 65
    return-void
.end method

.method private getRadioStateFromInt(I)Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    .locals 3
    .param p1, "stateInt"    # I

    .line 1029
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1034
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized IMS_RIL_RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :pswitch_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    goto :goto_0

    .line 1030
    :pswitch_1
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .local v0, "state":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    :goto_0
    goto :goto_1

    .line 1032
    .end local v0    # "state":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    :cond_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    goto :goto_0

    .line 1034
    .restart local v0    # "state":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    :goto_1
    nop

    .line 1037
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public callInfoIndication(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "callInfo":[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 414
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 416
    :cond_1
    return-void

    .line 402
    :cond_2
    :goto_0
    return-void
.end method

.method public callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callMode"    # Ljava/lang/String;
    .param p4, "videoState"    # Ljava/lang/String;
    .param p5, "audioDirection"    # Ljava/lang/String;
    .param p6, "pau"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 174
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbda

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 178
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 180
    :cond_0
    return-void
.end method

.method public cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 986
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 989
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2c

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 992
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/SmsMessageConverter;->newSmsMessageFromCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 993
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 996
    :cond_0
    return-void
.end method

.method public econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "confCallId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;
    .param p6, "cause"    # Ljava/lang/String;
    .param p7, "joinedCallId"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 355
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v2, 0x4

    aput-object p6, v0, v2

    const/4 v2, 0x5

    aput-object p7, v0, v2

    .line 358
    .local v0, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xbd8

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 361
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECONF result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 365
    :cond_0
    return-void
.end method

.method public ectIndication(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "ectResult"    # I
    .param p4, "cause"    # I

    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 268
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe6

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 274
    :cond_0
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 84
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 91
    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 109
    :cond_0
    return-void
.end method

.method public getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "result1"    # Ljava/lang/String;
    .param p3, "result2"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 459
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 461
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdd

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 464
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 466
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 468
    :cond_0
    return-void
.end method

.method public imsBearerActivation(IILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "capability"    # Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 649
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "phoneId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "strAid":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 654
    .local v2, "ret":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v4, 0xbe9

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 657
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActivateBearerRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 658
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActivateBearerRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 661
    :cond_0
    return-void
.end method

.method public imsBearerDeactivation(IILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "capability"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 676
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "phoneId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "strAid":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 681
    .local v2, "ret":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v4, 0xbea

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 684
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 685
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 688
    :cond_0
    return-void
.end method

.method public imsBearerInit(I)V
    .locals 4
    .param p1, "type"    # I

    .line 701
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 703
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 706
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbeb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 709
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 713
    :cond_0
    return-void
.end method

.method public imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "configId"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 924
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 927
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc15

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 930
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 934
    :cond_0
    return-void
.end method

.method public imsCfgConfigLoaded(I)V
    .locals 4
    .param p1, "type"    # I

    .line 938
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 940
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 943
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc16

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 946
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 950
    :cond_0
    return-void
.end method

.method public imsCfgDynamicImsSwitchComplete(I)V
    .locals 4
    .param p1, "type"    # I

    .line 890
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 892
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 895
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc13

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 898
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 902
    :cond_0
    return-void
.end method

.method public imsCfgFeatureChanged(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "featureId"    # I
    .param p4, "value"    # I

    .line 906
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 908
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 911
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc14

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 914
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 918
    :cond_0
    return-void
.end method

.method public imsConferenceInfoIndication(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;",
            ">;)V"
        }
    .end annotation

    .line 816
    .local p2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 819
    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    invoke-direct {v2}, Lcom/mediatek/ims/ImsCallSessionProxy$User;-><init>()V

    .line 820
    .local v2, "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->user_addr:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 821
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->end_point:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 822
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->entity:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEntity:Ljava/lang/String;

    .line 823
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->display_text:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    .line 824
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->status:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    .line 825
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v2    # "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc11

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 832
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 833
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 834
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 836
    :cond_1
    return-void
.end method

.method public imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 719
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 721
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "phoneId":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 725
    .local v1, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc27

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 728
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 729
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 730
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 732
    :cond_0
    return-void
.end method

.method public imsDeregDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 737
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 739
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 742
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbec

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 745
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 749
    :cond_0
    return-void
.end method

.method public imsDialogIndication(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 874
    .local p2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 877
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const-string v1, "RIL_UNSOL_IMS_DIALOG_INDICATION"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/mediatek/hardware/radio/V3_0/Dialog;

    .line 879
    .local v1, "d":Lvendor/mediatek/hardware/radio/V3_0/Dialog;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_UNSOL_IMS_DIALOG_INDICATIONdialogId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->dialogId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 881
    .end local v1    # "d":Lvendor/mediatek/hardware/radio/V3_0/Dialog;
    goto :goto_0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 886
    :cond_1
    return-void
.end method

.method public imsDisableDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 579
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 580
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 583
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe3

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 586
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 590
    :cond_0
    return-void
.end method

.method public imsDisableStart(I)V
    .locals 4
    .param p1, "type"    # I

    .line 623
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 624
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 627
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe5

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 630
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 634
    :cond_0
    return-void
.end method

.method public imsEnableDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 557
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 558
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 561
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 564
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 568
    :cond_0
    return-void
.end method

.method public imsEnableStart(I)V
    .locals 4
    .param p1, "type"    # I

    .line 601
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 602
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 605
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe4

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 608
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 612
    :cond_0
    return-void
.end method

.method public imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "pType"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 512
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 516
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe0

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 519
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 521
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 523
    :cond_0
    return-void
.end method

.method public imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "iid"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .line 789
    return-void
.end method

.method public imsRedialEmergencyIndication(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1002
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1005
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RIL_UNSOL_REDIAL_EMERGENCY_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1009
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1013
    :cond_0
    return-void
.end method

.method public imsRegistrationInfo(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "capability"    # I

    .line 536
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 537
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 539
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe1

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 542
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 544
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 546
    :cond_0
    return-void
.end method

.method public imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdnId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;
    .param p4, "timer"    # Ljava/lang/String;
    .param p5, "sendPktLost"    # Ljava/lang/String;
    .param p6, "recvPktLost"    # Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 486
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 488
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbde

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 491
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 493
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 495
    :cond_0
    return-void
.end method

.method public imsSupportEcc(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "supportLteEcc"    # I

    .line 771
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 773
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 776
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RIL_UNSOL_IMS_ECC_SUPPORT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 784
    :cond_0
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    .line 428
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 429
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 430
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->callId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 431
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->number:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 432
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->type:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 433
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->callMode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 434
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->seqNo:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 435
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 436
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->toNumber:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 438
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbc7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 441
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 445
    :cond_0
    return-void
.end method

.method public lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "pType"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 854
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 855
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 858
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc12

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 861
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 863
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 865
    :cond_0
    return-void
.end method

.method public multiImsCount(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "count"    # I

    .line 754
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 756
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 759
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc0d

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 762
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMultiImsCountRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMultiImsCountRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 764
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 766
    :cond_0
    return-void
.end method

.method public newSmsEx(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 970
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 972
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 974
    .local v0, "ret":[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 976
    .local v1, "pduArray":[B
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc29

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 979
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 982
    :cond_0
    return-void
.end method

.method public newSmsStatusReportEx(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 954
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 956
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 958
    .local v0, "ret":[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 960
    .local v1, "pduArray":[B
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc28

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 963
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 964
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 966
    :cond_0
    return-void
.end method

.method public noEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2d

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 127
    :cond_0
    return-void
.end method

.method public onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "clazz"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "str"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "alertingPattern"    # Ljava/lang/String;
    .param p8, "sipCause"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 294
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 299
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdc

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onVolteSubscription(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 238
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 243
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc26

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "xuiInfo"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 222
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdf

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 227
    :cond_0
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "radioState"    # I

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 378
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRadioIndication;->getRadioStateFromInt(I)Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    move-result-object v0

    .line 381
    .local v0, "newState":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogMore(ILjava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V

    .line 386
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyRadioStateChanged(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V

    .line 387
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1017
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method public sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "responseCode"    # Ljava/lang/String;
    .param p7, "reasonText"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 325
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 328
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd9

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 333
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 335
    :cond_0
    return-void
.end method

.method public speechCodecInfoIndication(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "info"    # I

    .line 793
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 794
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 797
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RIL_UNSOL_SPEECH_CODEC_INFO, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 804
    :cond_0
    return-void
.end method

.method public videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "localVideoCap"    # Ljava/lang/String;
    .param p4, "remoteVideoCap"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 146
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 150
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 152
    :cond_0
    return-void
.end method

.method public volteSetting(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "isEnable"    # Z

    .line 191
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    aput v2, v0, v1

    .line 195
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingValue:Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 203
    :cond_0
    return-void
.end method
