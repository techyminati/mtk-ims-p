.class public Lcom/mediatek/ims/ril/ImsRadioIndicationBase;
.super Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;
.source "ImsRadioIndicationBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callInfoIndication(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "No implementation in callInfoIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Z
    .param p3, "arg2"    # Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 222
    const-string v0, "No implementation in callRing"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public callStateChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 227
    const-string v0, "No implementation in callStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callMode"    # Ljava/lang/String;
    .param p4, "videoState"    # Ljava/lang/String;
    .param p5, "audioDirection"    # Ljava/lang/String;
    .param p6, "pau"    # Ljava/lang/String;

    .line 95
    const-string v0, "No implementation in callmodChangeIndicator"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public carrierInfoForImsiEncryption(I)V
    .locals 1
    .param p1, "type"    # I

    .line 483
    const-string v0, "No implementation in carrierInfoForImsiEncryption"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    .line 232
    const-string v0, "No implementation in cdmaCallWaiting"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    .line 237
    const-string v0, "No implementation in cdmaInfoRec"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 242
    const-string v0, "No implementation in cdmaNewSms"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 1
    .param p1, "indicationType"    # I
    .param p2, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 610
    const-string v0, "No implementation in cdmaNewSmsEx"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public cdmaOtaProvisionStatus(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 247
    const-string v0, "No implementation in cdmaOtaProvisionStatus"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public cdmaPrlChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 252
    const-string v0, "No implementation in cdmaPrlChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public cdmaRuimSmsStorageFull(I)V
    .locals 1
    .param p1, "type"    # I

    .line 257
    const-string v0, "No implementation in cdmaRuimSmsStorageFull"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public cdmaSubscriptionSourceChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 262
    const-string v0, "No implementation in cdmaSubscriptionSourceChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public cellInfoList(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    const-string v0, "No implementation in cellInfoList"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public cellInfoList_1_2(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    const-string v0, "No implementation in cellInfoList_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lce"    # Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    .line 541
    const-string v0, "No implementation in currentLinkCapacityEstimate"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    const-string v0, "No implementation in currentPhysicalChannelConfigs"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .line 272
    const-string v0, "No implementation in currentSignalStrength"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;

    .line 517
    const-string v0, "No implementation in currentSignalStrength_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public dataCallListChanged(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    const-string v0, "No implementation in dataCallListChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "confCallId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;
    .param p6, "cause"    # Ljava/lang/String;
    .param p7, "joinedCallId"    # Ljava/lang/String;

    .line 103
    const-string v0, "No implementation in econfResultIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public ectIndication(IIII)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 77
    const-string v0, "No implementation in ectIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 284
    const-string v0, "No implementation in enterEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 289
    const-string v0, "No implementation in exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .line 108
    const-string v0, "No implementation in getProvisionDone"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public hardwareConfigChanged(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    const-string v0, "No implementation in hardwareConfigChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public imsBearerActivation(IILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .line 113
    const-string v0, "No implementation in imsBearerActivation"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public imsBearerDeactivation(IILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .line 118
    const-string v0, "No implementation in imsBearerDeactivation"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public imsBearerInit(I)V
    .locals 1
    .param p1, "type"    # I

    .line 123
    const-string v0, "No implementation in imsBearerInit"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "configId"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 590
    const-string v0, "No implementation in imsCfgConfigChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public imsCfgConfigLoaded(I)V
    .locals 1
    .param p1, "type"    # I

    .line 595
    const-string v0, "No implementation in imsCfgConfigLoaded"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public imsCfgDynamicImsSwitchComplete(I)V
    .locals 1
    .param p1, "type"    # I

    .line 580
    const-string v0, "No implementation in imsCfgDynamicImsSwitchComplete"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public imsCfgFeatureChanged(IIII)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "featureId"    # I
    .param p4, "value"    # I

    .line 585
    const-string v0, "No implementation in imsCfgFeatureChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public imsConferenceInfoIndication(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    const-string v0, "No implementation in imsConferenceInfoIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .line 128
    const-string v0, "No implementation in imsDataInfoNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public imsDeregDone(I)V
    .locals 1
    .param p1, "type"    # I

    .line 458
    const-string v0, "No implementation in imsDeregDone"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public imsDialogIndication(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 575
    .local p2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    const-string v0, "No implementation in imsDialogIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public imsDisableDone(I)V
    .locals 1
    .param p1, "type"    # I

    .line 133
    const-string v0, "No implementation in imsDisableDone"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public imsDisableStart(I)V
    .locals 1
    .param p1, "type"    # I

    .line 138
    const-string v0, "No implementation in imsDisableStart"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public imsEnableDone(I)V
    .locals 1
    .param p1, "type"    # I

    .line 143
    const-string v0, "No implementation in imsEnableDone"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public imsEnableStart(I)V
    .locals 1
    .param p1, "type"    # I

    .line 148
    const-string v0, "No implementation in imsEnableStart"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ptype"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 453
    const-string v0, "No implementation in imsEventPackageIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 299
    const-string v0, "No implementation in imsNetworkStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "iid"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .line 493
    const-string v0, "No implementation in imsRadioInfoChange"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public imsRedialEmergencyIndication(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 473
    const-string v0, "No implementation in imsRedialEmergencyIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public imsRegistrationInfo(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I
    .param p3, "arg2"    # I

    .line 154
    const-string v0, "No implementation in imsRegistrationInfo"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "pdnId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;
    .param p4, "timer"    # Ljava/lang/String;
    .param p5, "sendPktLost"    # Ljava/lang/String;
    .param p6, "recvPktLost"    # Ljava/lang/String;

    .line 161
    const-string v0, "No implementation in imsRtpInfo"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public imsSupportEcc(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "supportLteEcc"    # I

    .line 468
    const-string v0, "No implementation in isSupportLteEcc"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    .line 166
    const-string v0, "No implementation in incomingCallIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public indicateRingbackTone(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Z

    .line 304
    const-string v0, "No implementation in indicateRingbackTone"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "status"    # Landroid/hardware/radio/V1_1/KeepaliveStatus;

    .line 478
    const-string v0, "No implementation in keepaliveStatus"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .line 309
    const-string v0, "No implementation in lceData"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "pType"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 215
    const-string v0, "No implementation in lteMessageWaitingIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public modemReset(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 314
    const-string v0, "No implementation in modemReset"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public multiImsCount(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "count"    # I

    .line 463
    const-string v0, "No implementation in multiImsCount"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_1/NetworkScanResult;

    .line 488
    const-string v0, "No implementation in networkScanResult"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_2/NetworkScanResult;

    .line 565
    const-string v0, "No implementation in networkScanResult_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public networkStateChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 319
    const-string v0, "No implementation in networkStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public newBroadcastSms(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newBroadcastSms"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public newSms(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newSms"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public newSmsEx(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 605
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newSmsEx"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public newSmsOnSim(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 334
    const-string v0, "No implementation in newSmsOnSim"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public newSmsStatusReport(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newSmsStatusReport"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public newSmsStatusReportEx(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 600
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newSmsStatusReportEx"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public nitzTimeReceived(ILjava/lang/String;J)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "arg2"    # J

    .line 344
    const-string v0, "No implementation in nitzTimeReceived"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public noEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 615
    const-string v0, "No implementation in noEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    .line 351
    const-string v0, "No implementation in onSupplementaryServiceIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onUssd(IILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .line 356
    const-string v0, "No implementation in onUssd"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "clazz"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "str"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;
    .param p6, "errorcode"    # Ljava/lang/String;
    .param p7, "alertingPattern"    # Ljava/lang/String;
    .param p8, "sipCause"    # Ljava/lang/String;

    .line 174
    const-string v0, "No implementation in onUssi"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onVolteSubscription(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 187
    const-string v0, "No implementation in onVolteSubscription"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "xuiInfo"    # Ljava/lang/String;

    .line 181
    const-string v0, "No implementation in onXui"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/PcoDataInfo;

    .line 361
    const-string v0, "No implementation in pcoData"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 366
    const-string v0, "No implementation in radioCapabilityIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 371
    const-string v0, "No implementation in radioStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public resendIncallMute(I)V
    .locals 1
    .param p1, "type"    # I

    .line 376
    const-string v0, "No implementation in resendIncallMute"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public restrictedStateChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 381
    const-string v0, "No implementation in restrictedStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public rilConnected(I)V
    .locals 1
    .param p1, "type"    # I

    .line 386
    const-string v0, "No implementation in rilConnected"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 622
    return-void
.end method

.method public simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/SimRefreshResult;

    .line 391
    const-string v0, "No implementation in simRefresh"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public simSmsStorageFull(I)V
    .locals 1
    .param p1, "type"    # I

    .line 396
    const-string v0, "No implementation in simSmsStorageFull"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public simStatusChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 401
    const-string v0, "No implementation in simStatusChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "responseCode"    # Ljava/lang/String;
    .param p7, "reasonText"    # Ljava/lang/String;

    .line 195
    const-string v0, "No implementation in sipCallProgressIndicator"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public speechCodecInfoIndication(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "info"    # I

    .line 504
    const-string v0, "No implementation in speechCodecInfoIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 406
    const-string v0, "No implementation in srvccStateNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public stkCallControlAlphaNotify(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 411
    const-string v0, "No implementation in stkCallControlAlphaNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public stkCallSetup(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # J

    .line 416
    const-string v0, "No implementation in stkCallSetup"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public stkEventNotify(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 421
    const-string v0, "No implementation in stkEventNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public stkProactiveCommand(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 426
    const-string v0, "No implementation in stkProactiveCommand"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public stkSessionEnd(I)V
    .locals 1
    .param p1, "type"    # I

    .line 431
    const-string v0, "No implementation in stkSessionEnd"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public subscriptionStatusChanged(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Z

    .line 436
    const-string v0, "No implementation in subscriptionStatusChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 441
    const-string v0, "No implementation in suppSvcNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "localVideoCap"    # Ljava/lang/String;
    .param p4, "remoteVideoCap"    # Ljava/lang/String;

    .line 202
    const-string v0, "No implementation in videoCapabilityIndicator"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public voiceRadioTechChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 446
    const-string v0, "No implementation in voiceRadioTechChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public volteSetting(IZ)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Z

    .line 82
    const-string v0, "No implementation in volteSetting"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 83
    return-void
.end method
