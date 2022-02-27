.class public abstract Lcom/mediatek/ims/ril/ImsBaseCommands;
.super Ljava/lang/Object;
.source "ImsBaseCommands.java"

# interfaces
.implements Lcom/mediatek/ims/ril/ImsCommandsInterface;


# instance fields
.field protected mActivateBearerRegistrants:Landroid/os/RegistrantList;

.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mBearerInitRegistrants:Landroid/os/RegistrantList;

.field protected mCallInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaSmsRegistrant:Landroid/os/Registrant;

.field protected mContext:Landroid/content/Context;

.field protected mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

.field protected mEconfResultRegistrants:Landroid/os/RegistrantList;

.field protected mEctResultRegistrants:Landroid/os/RegistrantList;

.field protected mEnterECBMRegistrants:Landroid/os/RegistrantList;

.field protected mExitECBMRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

.field protected mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsConfInfoRegistrants:Landroid/os/RegistrantList;

.field protected mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

.field protected mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsDialogRegistrant:Landroid/os/RegistrantList;

.field protected mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsDisableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsEccSupportRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

.field protected mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

.field protected mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

.field protected mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

.field protected mMultiImsCountRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkInitUSSIRegistrants:Landroid/os/RegistrantList;

.field protected mNewSmsRegistrant:Landroid/os/Registrant;

.field protected mNoECBMRegistrants:Landroid/os/RegistrantList;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneId:I

.field protected mRTPInfoRegistrants:Landroid/os/RegistrantList;

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mSmsStatusRegistrant:Landroid/os/Registrant;

.field protected mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

.field protected mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mUSSIRegistrants:Landroid/os/RegistrantList;

.field protected mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mVolteSettingRegistrants:Landroid/os/RegistrantList;

.field protected mVolteSettingValue:Ljava/lang/Object;

.field protected mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

.field protected mXuiRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneid"    # I

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    .line 86
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEctResultRegistrants:Landroid/os/RegistrantList;

    .line 92
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 95
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mUSSIRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNetworkInitUSSIRegistrants:Landroid/os/RegistrantList;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    .line 104
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    .line 105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    .line 110
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    .line 113
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingValue:Ljava/lang/Object;

    .line 117
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mActivateBearerRegistrants:Landroid/os/RegistrantList;

    .line 118
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

    .line 119
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    .line 122
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    .line 125
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mXuiRegistrants:Landroid/os/RegistrantList;

    .line 128
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    .line 131
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    .line 134
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    .line 137
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMultiImsCountRegistrants:Landroid/os/RegistrantList;

    .line 140
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    .line 142
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    .line 145
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    .line 148
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    .line 151
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    .line 154
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    .line 625
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    .line 646
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    .line 698
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    .line 844
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    .line 162
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mContext:Landroid/content/Context;

    .line 163
    iput p2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mPhoneId:I

    .line 164
    return-void
.end method


# virtual methods
.method protected notifyRadioStateChanged(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V
    .locals 0
    .param p1, "newState"    # Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 922
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    .line 866
    return-void
.end method

.method public registerForBearerActivation(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 371
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mActivateBearerRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 373
    return-void
.end method

.method public registerForBearerDeactivation(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 382
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 384
    return-void
.end method

.method public registerForBearerInit(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 472
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 474
    return-void
.end method

.method public registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 190
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 192
    return-void
.end method

.method public registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 323
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 326
    return-void
.end method

.method public registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 256
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 259
    return-void
.end method

.method public registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 181
    return-void
.end method

.method public registerForEctResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 312
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEctResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 314
    return-void
.end method

.method public registerForGetProvisionComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 301
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 303
    return-void
.end method

.method public registerForImsCfgConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 755
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 756
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 757
    return-void
.end method

.method public registerForImsCfgConfigLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 774
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 775
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 776
    return-void
.end method

.method public registerForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 717
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 718
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 719
    return-void
.end method

.method public registerForImsCfgFeatureChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 736
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 737
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 738
    return-void
.end method

.method public registerForImsConfInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 666
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 667
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 668
    return-void
.end method

.method public registerForImsDataInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 393
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 395
    return-void
.end method

.method public registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 590
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 591
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 592
    return-void
.end method

.method public registerForImsDialog(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 701
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 702
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 703
    return-void
.end method

.method public registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 234
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 236
    return-void
.end method

.method public registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 212
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 214
    return-void
.end method

.method public registerForImsEccSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 637
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 638
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 639
    return-void
.end method

.method public registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 223
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 225
    return-void
.end method

.method public registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 201
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 203
    return-void
.end method

.method public registerForImsEventPackage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 426
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 428
    return-void
.end method

.method public registerForImsRTPInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 346
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 348
    return-void
.end method

.method public registerForImsRedialEccInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 855
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 856
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 857
    return-void
.end method

.method public registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 245
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 247
    return-void
.end method

.method public registerForLteMsgWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 685
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 686
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 687
    return-void
.end method

.method public registerForMultiImsCount(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 611
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 612
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMultiImsCountRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 613
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 496
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 498
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 501
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 504
    :cond_0
    monitor-exit v1

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 526
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 528
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 531
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    sget-object v3, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    if-ne v2, v3, :cond_0

    .line 532
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 534
    :cond_0
    monitor-exit v1

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 558
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 560
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 563
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 566
    :cond_0
    monitor-exit v1

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOnEnterECBM(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 268
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 270
    return-void
.end method

.method public registerForOnExitECBM(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 279
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 281
    return-void
.end method

.method public registerForOnNoECBM(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 290
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 292
    return-void
.end method

.method public registerForSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 649
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 650
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 651
    return-void
.end method

.method public registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 335
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 337
    return-void
.end method

.method public registerForVolteSettingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 357
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 359
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingValue:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 362
    :cond_0
    return-void
.end method

.method public registerForVolteSubscription(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 415
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 417
    return-void
.end method

.method public registerForXuiInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 404
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 405
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mXuiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 406
    return-void
.end method

.method public setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 170
    return-void
.end method

.method public setOnNetworkInitUSSI(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 443
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNetworkInitUSSIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 445
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 834
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    .line 835
    return-void
.end method

.method public setOnNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 819
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    .line 820
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 798
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    .line 799
    return-void
.end method

.method public setOnUSSI(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 432
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 433
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mUSSIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 434
    return-void
.end method

.method protected setRadioState(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V
    .locals 5
    .param p1, "newState"    # Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 879
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 881
    .local v1, "oldState":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 883
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    if-ne v1, v2, :cond_0

    .line 885
    const-string v2, "ImsBaseCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no state transition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    monitor-exit v0

    return-void

    .line 889
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 891
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 893
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/ImsBaseCommands;->onRadioAvailable()V

    .line 896
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 897
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 900
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 904
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 905
    :cond_4
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 906
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 909
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mState:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_6

    .line 910
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 912
    :cond_6
    monitor-exit v0

    move-object v0, v1

    .line 913
    .end local v1    # "oldState":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    .local v0, "oldState":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    return-void

    .line 912
    .end local v0    # "oldState":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unSetOnNetworkInitUSSI(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 449
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNetworkInitUSSIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 450
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 838
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    .line 842
    :cond_0
    return-void
.end method

.method public unSetOnNewSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 827
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNewSmsRegistrant:Landroid/os/Registrant;

    .line 831
    :cond_0
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 806
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 807
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    .line 810
    :cond_0
    return-void
.end method

.method public unSetOnUSSI(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 438
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mUSSIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 439
    return-void
.end method

.method public unregisterForBearerActivation(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mActivateBearerRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 378
    return-void
.end method

.method public unregisterForBearerDeactivation(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 388
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 389
    return-void
.end method

.method public unregisterForBearerInit(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 485
    return-void
.end method

.method public unregisterForCallInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 196
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 197
    return-void
.end method

.method public unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 330
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 331
    return-void
.end method

.method public unregisterForCallProgressIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 263
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 264
    return-void
.end method

.method public unregisterForEconfResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 185
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 186
    return-void
.end method

.method public unregisterForEctResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEctResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 319
    return-void
.end method

.method public unregisterForGetProvisionComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 308
    return-void
.end method

.method public unregisterForImsCfgConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 764
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 765
    return-void
.end method

.method public unregisterForImsCfgConfigLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 783
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 784
    return-void
.end method

.method public unregisterForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 726
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 727
    return-void
.end method

.method public unregisterForImsCfgFeatureChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 745
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 746
    return-void
.end method

.method public unregisterForImsConfInfoUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 675
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 676
    return-void
.end method

.method public unregisterForImsDataInfoNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 399
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 400
    return-void
.end method

.method public unregisterForImsDeregisterComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 600
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 601
    return-void
.end method

.method public unregisterForImsDialog(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 706
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 707
    return-void
.end method

.method public unregisterForImsDisableComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 240
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 241
    return-void
.end method

.method public unregisterForImsDisableStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 219
    return-void
.end method

.method public unregisterForImsEccSupport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 642
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 643
    return-void
.end method

.method public unregisterForImsEnableComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 229
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 230
    return-void
.end method

.method public unregisterForImsEnableStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 207
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 208
    return-void
.end method

.method public unregisterForImsEventPackage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 460
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 461
    return-void
.end method

.method public unregisterForImsRTPInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 352
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 353
    return-void
.end method

.method public unregisterForImsRedialEccInd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 860
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 861
    return-void
.end method

.method public unregisterForImsRegistrationInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 252
    return-void
.end method

.method public unregisterForLteMsgWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 694
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 695
    return-void
.end method

.method public unregisterForMultiImsCount(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 621
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mMultiImsCountRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 622
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 513
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 515
    monitor-exit v0

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOff(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 545
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 547
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 577
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 579
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOnEnterECBM(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 274
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 275
    return-void
.end method

.method public unregisterForOnExitECBM(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 285
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 286
    return-void
.end method

.method public unregisterForOnNoECBM(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 296
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 297
    return-void
.end method

.method public unregisterForSpeechCodecInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 654
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 655
    return-void
.end method

.method public unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 341
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 342
    return-void
.end method

.method public unregisterForVolteSettingChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 366
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 367
    return-void
.end method

.method public unregisterForVolteSubscription(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 421
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 422
    return-void
.end method

.method public unregisterForXuiInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 410
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mXuiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 411
    return-void
.end method

.method public unsetOnIncomingCallIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 174
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsBaseCommands;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 175
    return-void
.end method
