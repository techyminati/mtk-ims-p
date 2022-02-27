package com.mediatek.ims.ril;

import android.content.Context;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Registrant;
import android.os.RegistrantList;
import android.telephony.Rlog;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public abstract class ImsBaseCommands implements ImsCommandsInterface {
    protected Registrant mCdmaSmsRegistrant;
    protected Context mContext;
    protected Registrant mNewSmsRegistrant;
    protected int mPhoneId;
    protected Registrant mSmsStatusRegistrant;
    protected ImsCommandsInterface.RadioState mState = ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE;
    protected Object mStateMonitor = new Object();
    protected RegistrantList mRadioStateChangedRegistrants = new RegistrantList();
    protected RegistrantList mOnRegistrants = new RegistrantList();
    protected RegistrantList mOffRegistrants = new RegistrantList();
    protected RegistrantList mAvailRegistrants = new RegistrantList();
    protected RegistrantList mOffOrNotAvailRegistrants = new RegistrantList();
    protected RegistrantList mNotAvailRegistrants = new RegistrantList();
    protected RegistrantList mIncomingCallIndicationRegistrants = new RegistrantList();
    protected RegistrantList mImsEnableStartRegistrants = new RegistrantList();
    protected RegistrantList mImsDisableStartRegistrants = new RegistrantList();
    protected RegistrantList mImsEnableDoneRegistrants = new RegistrantList();
    protected RegistrantList mImsDisableDoneRegistrants = new RegistrantList();
    protected RegistrantList mImsRegistrationInfoRegistrants = new RegistrantList();
    protected RegistrantList mEconfResultRegistrants = new RegistrantList();
    protected RegistrantList mCallInfoRegistrants = new RegistrantList();
    protected RegistrantList mEctResultRegistrants = new RegistrantList();
    protected RegistrantList mCallProgressIndicatorRegistrants = new RegistrantList();
    protected RegistrantList mCallModeChangeIndicatorRegistrants = new RegistrantList();
    protected RegistrantList mVideoCapabilityIndicatorRegistrants = new RegistrantList();
    protected RegistrantList mUSSIRegistrants = new RegistrantList();
    protected RegistrantList mNetworkInitUSSIRegistrants = new RegistrantList();
    protected RegistrantList mEnterECBMRegistrants = new RegistrantList();
    protected RegistrantList mExitECBMRegistrants = new RegistrantList();
    protected RegistrantList mNoECBMRegistrants = new RegistrantList();
    protected RegistrantList mImsGetProvisionDoneRegistrants = new RegistrantList();
    protected RegistrantList mRTPInfoRegistrants = new RegistrantList();
    protected RegistrantList mVolteSettingRegistrants = new RegistrantList();
    protected Object mVolteSettingValue = null;
    protected RegistrantList mActivateBearerRegistrants = new RegistrantList();
    protected RegistrantList mDeactivateBearerRegistrants = new RegistrantList();
    protected RegistrantList mBearerInitRegistrants = new RegistrantList();
    protected RegistrantList mImsDataInfoNotifyRegistrants = new RegistrantList();
    protected RegistrantList mXuiRegistrants = new RegistrantList();
    protected RegistrantList mVolteSubscriptionRegistrants = new RegistrantList();
    protected RegistrantList mImsEvtPkgRegistrants = new RegistrantList();
    protected RegistrantList mImsDeregistrationDoneRegistrants = new RegistrantList();
    protected RegistrantList mMultiImsCountRegistrants = new RegistrantList();
    protected RegistrantList mImsConfInfoRegistrants = new RegistrantList();
    protected RegistrantList mLteMsgWaitingRegistrants = new RegistrantList();
    protected RegistrantList mImsCfgDynamicImsSwitchCompleteRegistrants = new RegistrantList();
    protected RegistrantList mImsCfgFeatureChangedRegistrants = new RegistrantList();
    protected RegistrantList mImsCfgConfigChangedRegistrants = new RegistrantList();
    protected RegistrantList mImsCfgConfigLoadedRegistrants = new RegistrantList();
    protected RegistrantList mImsEccSupportRegistrants = new RegistrantList();
    protected RegistrantList mSpeechCodecInfoRegistrant = new RegistrantList();
    protected RegistrantList mImsDialogRegistrant = new RegistrantList();
    protected RegistrantList mImsRedialEccIndRegistrants = new RegistrantList();

    public ImsBaseCommands(Context context, int phoneid) {
        this.mContext = context;
        this.mPhoneId = phoneid;
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setOnIncomingCallIndication(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mIncomingCallIndicationRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unsetOnIncomingCallIndication(Handler h) {
        this.mIncomingCallIndicationRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForEconfResult(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mEconfResultRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForEconfResult(Handler h) {
        this.mEconfResultRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForCallInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mCallInfoRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForCallInfo(Handler h) {
        this.mCallInfoRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsEnableStart(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsEnableStartRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsEnableStart(Handler h) {
        this.mImsEnableStartRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsDisableStart(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsDisableStartRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsDisableStart(Handler h) {
        this.mImsDisableStartRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsEnableComplete(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsEnableDoneRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsEnableComplete(Handler h) {
        this.mImsEnableDoneRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsDisableComplete(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsDisableDoneRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsDisableComplete(Handler h) {
        this.mImsDisableDoneRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsRegistrationInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsRegistrationInfoRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsRegistrationInfo(Handler h) {
        this.mImsRegistrationInfoRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForCallProgressIndicator(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mCallProgressIndicatorRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForCallProgressIndicator(Handler h) {
        this.mCallProgressIndicatorRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForOnEnterECBM(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mEnterECBMRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForOnEnterECBM(Handler h) {
        this.mEnterECBMRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForOnExitECBM(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mExitECBMRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForOnExitECBM(Handler h) {
        this.mExitECBMRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForOnNoECBM(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mNoECBMRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForOnNoECBM(Handler h) {
        this.mNoECBMRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForGetProvisionComplete(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsGetProvisionDoneRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForGetProvisionComplete(Handler h) {
        this.mImsGetProvisionDoneRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForEctResult(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mEctResultRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForEctResult(Handler h) {
        this.mEctResultRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForCallModeChangeIndicator(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mCallModeChangeIndicatorRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForCallModeChangeIndicator(Handler h) {
        this.mCallModeChangeIndicatorRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForVideoCapabilityIndicator(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mVideoCapabilityIndicatorRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForVideoCapabilityIndicator(Handler h) {
        this.mVideoCapabilityIndicatorRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsRTPInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mRTPInfoRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsRTPInfo(Handler h) {
        this.mRTPInfoRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForVolteSettingChanged(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mVolteSettingRegistrants.add(r);
        if (this.mVolteSettingValue != null) {
            r.notifyRegistrant(new AsyncResult((Object) null, this.mVolteSettingValue, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForVolteSettingChanged(Handler h) {
        this.mVolteSettingRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForBearerActivation(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mActivateBearerRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForBearerActivation(Handler h) {
        this.mActivateBearerRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForBearerDeactivation(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mDeactivateBearerRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForBearerDeactivation(Handler h) {
        this.mDeactivateBearerRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsDataInfoNotify(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsDataInfoNotifyRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsDataInfoNotify(Handler h) {
        this.mImsDataInfoNotifyRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForXuiInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mXuiRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForXuiInfo(Handler h) {
        this.mXuiRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForVolteSubscription(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mVolteSubscriptionRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForVolteSubscription(Handler h) {
        this.mVolteSubscriptionRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsEventPackage(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsEvtPkgRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setOnUSSI(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mUSSIRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unSetOnUSSI(Handler h) {
        this.mUSSIRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setOnNetworkInitUSSI(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mNetworkInitUSSIRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unSetOnNetworkInitUSSI(Handler h) {
        this.mNetworkInitUSSIRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsEventPackage(Handler h) {
        this.mImsEvtPkgRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForBearerInit(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mBearerInitRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForBearerInit(Handler h) {
        this.mBearerInitRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForNotAvailable(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        synchronized (this.mStateMonitor) {
            this.mNotAvailRegistrants.add(r);
            if (!this.mState.isAvailable()) {
                r.notifyRegistrant(new AsyncResult((Object) null, (Object) null, (Throwable) null));
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForNotAvailable(Handler h) {
        synchronized (this.mStateMonitor) {
            this.mNotAvailRegistrants.remove(h);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForOff(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        synchronized (this.mStateMonitor) {
            this.mOffRegistrants.add(r);
            if (this.mState == ImsCommandsInterface.RadioState.RADIO_OFF) {
                r.notifyRegistrant(new AsyncResult((Object) null, (Object) null, (Throwable) null));
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForOff(Handler h) {
        synchronized (this.mStateMonitor) {
            this.mOffRegistrants.remove(h);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForOn(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        synchronized (this.mStateMonitor) {
            this.mOnRegistrants.add(r);
            if (this.mState.isOn()) {
                r.notifyRegistrant(new AsyncResult((Object) null, (Object) null, (Throwable) null));
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForOn(Handler h) {
        synchronized (this.mStateMonitor) {
            this.mOnRegistrants.remove(h);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsDeregisterComplete(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsDeregistrationDoneRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsDeregisterComplete(Handler h) {
        this.mImsDeregistrationDoneRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForMultiImsCount(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mMultiImsCountRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForMultiImsCount(Handler h) {
        this.mMultiImsCountRegistrants.remove(h);
    }

    public void registerForImsEccSupport(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsEccSupportRegistrants.add(r);
    }

    public void unregisterForImsEccSupport(Handler h) {
        this.mImsEccSupportRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForSpeechCodecInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mSpeechCodecInfoRegistrant.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForSpeechCodecInfo(Handler h) {
        this.mSpeechCodecInfoRegistrant.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsConfInfoUpdate(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsConfInfoRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsConfInfoUpdate(Handler h) {
        this.mImsConfInfoRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForLteMsgWaiting(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mLteMsgWaitingRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForLteMsgWaiting(Handler h) {
        this.mLteMsgWaitingRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsDialog(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsDialogRegistrant.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsDialog(Handler h) {
        this.mImsDialogRegistrant.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsCfgDynamicImsSwitchComplete(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsCfgDynamicImsSwitchCompleteRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsCfgDynamicImsSwitchComplete(Handler h) {
        this.mImsCfgDynamicImsSwitchCompleteRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsCfgFeatureChanged(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsCfgFeatureChangedRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsCfgFeatureChanged(Handler h) {
        this.mImsCfgFeatureChangedRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsCfgConfigChanged(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsCfgConfigChangedRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsCfgConfigChanged(Handler h) {
        this.mImsCfgConfigChangedRegistrants.remove(h);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsCfgConfigLoaded(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsCfgConfigLoadedRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsCfgConfigLoaded(Handler h) {
        this.mImsCfgConfigLoadedRegistrants.remove(h);
    }

    public void setOnSmsStatus(Handler h, int what, Object obj) {
        this.mSmsStatusRegistrant = new Registrant(h, what, obj);
    }

    public void unSetOnSmsStatus(Handler h) {
        if (this.mSmsStatusRegistrant != null && this.mSmsStatusRegistrant.getHandler() == h) {
            this.mSmsStatusRegistrant.clear();
            this.mSmsStatusRegistrant = null;
        }
    }

    public void setOnNewSms(Handler h, int what, Object obj) {
        this.mNewSmsRegistrant = new Registrant(h, what, obj);
    }

    public void unSetOnNewSms(Handler h) {
        if (this.mNewSmsRegistrant != null && this.mNewSmsRegistrant.getHandler() == h) {
            this.mNewSmsRegistrant.clear();
            this.mNewSmsRegistrant = null;
        }
    }

    public void setOnNewCdmaSms(Handler h, int what, Object obj) {
        this.mCdmaSmsRegistrant = new Registrant(h, what, obj);
    }

    public void unSetOnNewCdmaSms(Handler h) {
        if (this.mCdmaSmsRegistrant != null && this.mCdmaSmsRegistrant.getHandler() == h) {
            this.mCdmaSmsRegistrant.clear();
            this.mCdmaSmsRegistrant = null;
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void registerForImsRedialEccInd(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsRedialEccIndRegistrants.add(r);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unregisterForImsRedialEccInd(Handler h) {
        this.mImsRedialEccIndRegistrants.remove(h);
    }

    protected void onRadioAvailable() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRadioState(ImsCommandsInterface.RadioState newState) {
        synchronized (this.mStateMonitor) {
            ImsCommandsInterface.RadioState oldState = this.mState;
            this.mState = newState;
            if (oldState == this.mState) {
                Rlog.d("ImsBaseCommands", "no state transition: " + this.mState);
                return;
            }
            this.mRadioStateChangedRegistrants.notifyRegistrants();
            if (this.mState.isAvailable() && !oldState.isAvailable()) {
                this.mAvailRegistrants.notifyRegistrants();
                onRadioAvailable();
            }
            if (!this.mState.isAvailable() && oldState.isAvailable()) {
                this.mNotAvailRegistrants.notifyRegistrants();
            }
            if (this.mState.isOn() && !oldState.isOn()) {
                this.mOnRegistrants.notifyRegistrants();
            }
            if ((!this.mState.isOn() || !this.mState.isAvailable()) && oldState.isOn() && oldState.isAvailable()) {
                this.mOffOrNotAvailRegistrants.notifyRegistrants();
            }
            if (this.mState.isAvailable() && !this.mState.isOn()) {
                this.mOffRegistrants.notifyRegistrants();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyRadioStateChanged(ImsCommandsInterface.RadioState newState) {
    }
}
