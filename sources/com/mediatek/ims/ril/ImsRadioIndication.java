package com.mediatek.ims.ril;

import android.hardware.radio.V1_0.CdmaSmsMessage;
import android.os.AsyncResult;
import android.telephony.SmsMessage;
import com.android.internal.telephony.RIL;
import com.android.internal.telephony.cdma.SmsMessageConverter;
import com.mediatek.ims.ImsCallSessionProxy;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkRILConstants;
import java.util.ArrayList;
import java.util.Iterator;
import vendor.mediatek.hardware.radio.V3_0.Dialog;
import vendor.mediatek.hardware.radio.V3_0.ImsConfParticipant;
import vendor.mediatek.hardware.radio.V3_0.IncomingCallNotification;
/* loaded from: classes.dex */
public class ImsRadioIndication extends ImsRadioIndicationBase {
    private static final int INVALID_CALL_MODE = 255;
    private int mPhoneId;
    private ImsRILAdapter mRil;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsRadioIndication(ImsRILAdapter ril, int phoneId) {
        this.mRil = ril;
        this.mPhoneId = phoneId;
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, android.hardware.radio.V1_0.IRadioIndication
    public void enterEmergencyCallbackMode(int indicationType) {
        this.mRil.processIndication(indicationType);
        this.mRil.unsljLog(1024);
        if (this.mRil.mEnterECBMRegistrants != null) {
            this.mRil.mEnterECBMRegistrants.notifyRegistrants();
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, android.hardware.radio.V1_0.IRadioIndication
    public void exitEmergencyCallbackMode(int indicationType) {
        this.mRil.processIndication(indicationType);
        this.mRil.unsljLog(1033);
        if (this.mRil.mExitECBMRegistrants != null) {
            this.mRil.mExitECBMRegistrants.notifyRegistrants();
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_1.IImsRadioIndication
    public void noEmergencyCallbackMode(int indicationType) {
        this.mRil.processIndication(indicationType);
        this.mRil.unsljLog(MtkRILConstants.RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE);
        if (this.mRil.mNoECBMRegistrants != null) {
            this.mRil.mNoECBMRegistrants.notifyRegistrants();
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void videoCapabilityIndicator(int type, String callId, String localVideoCap, String remoteVideoCap) {
        this.mRil.processIndication(type);
        String[] ret = {callId, localVideoCap, remoteVideoCap};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_VIDEO_CAPABILITY_INDICATOR, ret);
        if (this.mRil.mVideoCapabilityIndicatorRegistrants != null) {
            this.mRil.mVideoCapabilityIndicatorRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void callmodChangeIndicator(int type, String callId, String callMode, String videoState, String audioDirection, String pau) {
        this.mRil.processIndication(type);
        String[] ret = {callId, callMode, videoState, audioDirection, pau};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_CALLMOD_CHANGE_INDICATOR, ret);
        if (this.mRil.mCallModeChangeIndicatorRegistrants != null) {
            this.mRil.mCallModeChangeIndicatorRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void volteSetting(int type, boolean isEnable) {
        this.mRil.processIndication(type);
        int[] ret = {isEnable ? 1 : 0, this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_VOLTE_SETTING, ret);
        this.mRil.mVolteSettingValue = ret;
        if (this.mRil.mVolteSettingRegistrants != null) {
            this.mRil.mVolteSettingRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void onXui(int type, String accountId, String broadcastFlag, String xuiInfo) {
        this.mRil.processIndication(type);
        String[] ret = {accountId, broadcastFlag, xuiInfo, Integer.toString(this.mPhoneId)};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_ON_XUI, ret);
        if (this.mRil.mXuiRegistrants != null) {
            this.mRil.mXuiRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void onVolteSubscription(int type, int status) {
        this.mRil.processIndication(type);
        int[] ret = {status, this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_ON_VOLTE_SUBSCRIPTION, ret);
        if (this.mRil.mVolteSubscriptionRegistrants != null) {
            this.mRil.mVolteSubscriptionRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void ectIndication(int type, int callId, int ectResult, int cause) {
        this.mRil.processIndication(type);
        int[] ret = {callId, ectResult, cause};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_ECT_INDICATION, ret);
        if (this.mRil.mEctResultRegistrants != null) {
            this.mRil.mEctResultRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void onUssi(int type, String clazz, String status, String str, String lang, String errorCode, String alertingPattern, String sipCause) {
        this.mRil.processIndication(type);
        String[] ret = {clazz, status, str, lang, errorCode, alertingPattern, sipCause, Integer.toString(this.mPhoneId)};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_ON_USSI, ret);
        if (this.mRil.mUSSIRegistrants != null) {
            this.mRil.mUSSIRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void sipCallProgressIndicator(int type, String callId, String dir, String sipMsgType, String method, String responseCode, String reasonText) {
        this.mRil.processIndication(type);
        String[] ret = {callId, dir, sipMsgType, method, responseCode, reasonText};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_SIP_CALL_PROGRESS_INDICATOR, ret);
        if (this.mRil.mCallProgressIndicatorRegistrants != null) {
            this.mRil.mCallProgressIndicatorRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void econfResultIndication(int type, String confCallId, String op, String num, String result, String cause, String joinedCallId) {
        this.mRil.processIndication(type);
        String[] ret = {confCallId, op, num, result, cause, joinedCallId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_ECONF_RESULT_INDICATION, ret);
        if (this.mRil.mEconfResultRegistrants != null) {
            ImsRILAdapter imsRILAdapter = this.mRil;
            imsRILAdapter.riljLog("ECONF result = " + ret[3]);
            this.mRil.mEconfResultRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, android.hardware.radio.V1_0.IRadioIndication
    public void radioStateChanged(int type, int radioState) {
        this.mRil.processIndication(type);
        ImsCommandsInterface.RadioState newState = getRadioStateFromInt(radioState);
        ImsRILAdapter imsRILAdapter = this.mRil;
        imsRILAdapter.unsljLogMore(1000, "radioStateChanged: " + newState);
        this.mRil.setRadioState(newState);
        this.mRil.notifyRadioStateChanged(newState);
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void callInfoIndication(int indicationType, ArrayList<String> result) {
        this.mRil.processIndication(indicationType);
        if (result != null && result.size() != 0) {
            String[] callInfo = (String[]) result.toArray(new String[result.size()]);
            this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_CALL_INFO_INDICATION, callInfo);
            if (this.mRil.mCallInfoRegistrants != null) {
                this.mRil.mCallInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, callInfo, (Throwable) null));
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void incomingCallIndication(int type, IncomingCallNotification inCallNotify) {
        this.mRil.processIndication(type);
        String[] ret = {inCallNotify.callId, inCallNotify.number, inCallNotify.type, inCallNotify.callMode, inCallNotify.seqNo, inCallNotify.redirectNumber, inCallNotify.toNumber};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_INCOMING_CALL_INDICATION, ret);
        if (this.mRil.mIncomingCallIndicationRegistrants != null) {
            this.mRil.mIncomingCallIndicationRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void getProvisionDone(int type, String result1, String result2) {
        this.mRil.processIndication(type);
        String[] ret = {result1, result2};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_GET_PROVISION_DONE, ret);
        if (this.mRil.mImsGetProvisionDoneRegistrants != null) {
            this.mRil.mImsGetProvisionDoneRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsRtpInfo(int type, String pdnId, String networkId, String timer, String sendPktLost, String recvPktLost) {
        this.mRil.processIndication(type);
        String[] ret = {pdnId, networkId, timer, sendPktLost, recvPktLost};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_RTP_INFO, ret);
        if (this.mRil.mRTPInfoRegistrants != null) {
            this.mRil.mRTPInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsEventPackageIndication(int type, String callId, String pType, String urcIdx, String totalUrcCount, String rawData) {
        this.mRil.processIndication(type);
        String[] ret = {callId, pType, urcIdx, totalUrcCount, rawData, Integer.toString(this.mPhoneId)};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_EVENT_PACKAGE_INDICATION, ret);
        if (this.mRil.mImsEvtPkgRegistrants != null) {
            this.mRil.mImsEvtPkgRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsRegistrationInfo(int type, int status, int capability) {
        this.mRil.processIndication(type);
        int[] ret = {status, capability, this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_REGISTRATION_INFO, ret);
        if (this.mRil.mImsRegistrationInfoRegistrants != null) {
            this.mRil.mImsRegistrationInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsEnableDone(int type) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_ENABLE_DONE, ret);
        if (this.mRil.mImsEnableDoneRegistrants != null) {
            this.mRil.mImsEnableDoneRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsDisableDone(int type) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_DISABLE_DONE, ret);
        if (this.mRil.mImsDisableDoneRegistrants != null) {
            this.mRil.mImsDisableDoneRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsEnableStart(int type) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_ENABLE_START, ret);
        if (this.mRil.mImsEnableStartRegistrants != null) {
            this.mRil.mImsEnableStartRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsDisableStart(int type) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_DISABLE_START, ret);
        if (this.mRil.mImsDisableStartRegistrants != null) {
            this.mRil.mImsDisableStartRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsBearerActivation(int type, int aid, String capability) {
        this.mRil.processIndication(type);
        String phoneId = String.valueOf(this.mPhoneId);
        String strAid = String.valueOf(aid);
        String[] ret = {phoneId, strAid, capability};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_BEARER_ACTIVATION, ret);
        if (this.mRil.mActivateBearerRegistrants != null) {
            this.mRil.mActivateBearerRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsBearerDeactivation(int type, int aid, String capability) {
        this.mRil.processIndication(type);
        String phoneId = String.valueOf(this.mPhoneId);
        String strAid = String.valueOf(aid);
        String[] ret = {phoneId, strAid, capability};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_BEARER_DEACTIVATION, ret);
        if (this.mRil.mDeactivateBearerRegistrants != null) {
            this.mRil.mDeactivateBearerRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsBearerInit(int type) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_BEARER_INIT, ret);
        if (this.mRil.mBearerInitRegistrants != null) {
            this.mRil.mBearerInitRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsDataInfoNotify(int type, String capability, String event, String extra) {
        this.mRil.processIndication(type);
        String phoneId = String.valueOf(this.mPhoneId);
        String[] ret = {phoneId, capability, event, extra};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_DATA_INFO_NOTIFY, ret);
        if (this.mRil.mImsDataInfoNotifyRegistrants != null) {
            this.mRil.mImsDataInfoNotifyRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsDeregDone(int type) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_DEREG_DONE, ret);
        if (this.mRil.mImsDeregistrationDoneRegistrants != null) {
            this.mRil.mImsDeregistrationDoneRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void multiImsCount(int type, int count) {
        this.mRil.processIndication(type);
        int[] ret = {count, this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_MULTIIMS_COUNT, ret);
        if (this.mRil.mMultiImsCountRegistrants != null) {
            this.mRil.mMultiImsCountRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsSupportEcc(int type, int supportLteEcc) {
        this.mRil.processIndication(type);
        int[] ret = {supportLteEcc, this.mPhoneId};
        ImsRILAdapter imsRILAdapter = this.mRil;
        imsRILAdapter.riljLog(" RIL_UNSOL_IMS_ECC_SUPPORT, " + supportLteEcc + " phoneId = " + this.mPhoneId);
        if (this.mRil.mImsEccSupportRegistrants != null) {
            this.mRil.mImsEccSupportRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsRadioInfoChange(int type, String iid, String info) {
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void speechCodecInfoIndication(int type, int info) {
        this.mRil.processIndication(type);
        int[] ret = {info};
        ImsRILAdapter imsRILAdapter = this.mRil;
        imsRILAdapter.riljLog(" RIL_UNSOL_SPEECH_CODEC_INFO, " + info + " phoneId = " + this.mPhoneId);
        if (this.mRil.mSpeechCodecInfoRegistrant != null) {
            this.mRil.mSpeechCodecInfoRegistrant.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsConferenceInfoIndication(int type, ArrayList<ImsConfParticipant> participants) {
        this.mRil.processIndication(type);
        ArrayList<ImsCallSessionProxy.User> ret = new ArrayList<>();
        for (int i = 0; i < participants.size(); i++) {
            ImsCallSessionProxy.User user = new ImsCallSessionProxy.User();
            user.mUserAddr = participants.get(i).user_addr;
            user.mEndPoint = participants.get(i).end_point;
            user.mEntity = participants.get(i).entity;
            user.mDisplayText = participants.get(i).display_text;
            user.mStatus = participants.get(i).status;
            ret.add(user);
        }
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_CONFERENCE_INFO_INDICATION, ret);
        if (this.mRil.mImsConfInfoRegistrants != null) {
            this.mRil.mImsConfInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void lteMessageWaitingIndication(int type, String callId, String pType, String urcIdx, String totalUrcCount, String rawData) {
        this.mRil.processIndication(type);
        String[] ret = {callId, pType, urcIdx, totalUrcCount, rawData, Integer.toString(this.mPhoneId)};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_LTE_MESSAGE_WAITING_INDICATION, ret);
        if (this.mRil.mLteMsgWaitingRegistrants != null) {
            this.mRil.mLteMsgWaitingRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsDialogIndication(int type, ArrayList<Dialog> dialogList) {
        this.mRil.processIndication(type);
        this.mRil.riljLog("RIL_UNSOL_IMS_DIALOG_INDICATION");
        Iterator<Dialog> it = dialogList.iterator();
        while (it.hasNext()) {
            Dialog d = it.next();
            ImsRILAdapter imsRILAdapter = this.mRil;
            imsRILAdapter.riljLog("RIL_UNSOL_IMS_DIALOG_INDICATIONdialogId = " + d.dialogId + ",address:" + d.address);
        }
        if (this.mRil.mImsDialogRegistrant != null) {
            this.mRil.mImsDialogRegistrant.notifyRegistrants(new AsyncResult((Object) null, dialogList, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsCfgDynamicImsSwitchComplete(int type) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_CONFIG_DYNAMIC_IMS_SWITCH_COMPLETE, ret);
        if (this.mRil.mImsCfgDynamicImsSwitchCompleteRegistrants != null) {
            this.mRil.mImsCfgDynamicImsSwitchCompleteRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsCfgFeatureChanged(int type, int phoneId, int featureId, int value) {
        this.mRil.processIndication(type);
        int[] ret = {this.mPhoneId, featureId, value};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_CONFIG_FEATURE_CHANGED, ret);
        if (this.mRil.mImsCfgFeatureChangedRegistrants != null) {
            this.mRil.mImsCfgFeatureChangedRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsCfgConfigChanged(int type, int phoneId, String configId, String value) {
        this.mRil.processIndication(type);
        String[] ret = {Integer.toString(this.mPhoneId), configId, value};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_CONFIG_CONFIG_CHANGED, ret);
        if (this.mRil.mImsCfgConfigChangedRegistrants != null) {
            this.mRil.mImsCfgConfigChangedRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void imsCfgConfigLoaded(int type) {
        this.mRil.processIndication(type);
        String[] ret = {Integer.toString(this.mPhoneId)};
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_IMS_CONFIG_CONFIG_LOADED, ret);
        if (this.mRil.mImsCfgConfigLoadedRegistrants != null) {
            this.mRil.mImsCfgConfigLoadedRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void newSmsStatusReportEx(int indicationType, ArrayList<Byte> pdu) {
        this.mRil.processIndication(indicationType);
        String[] ret = {Integer.toString(this.mPhoneId)};
        byte[] pduArray = RIL.arrayListToPrimitiveArray(pdu);
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX, ret);
        if (this.mRil.mSmsStatusRegistrant != null) {
            this.mRil.mSmsStatusRegistrant.notifyRegistrant(new AsyncResult((Object) null, pduArray, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void newSmsEx(int indicationType, ArrayList<Byte> pdu) {
        this.mRil.processIndication(indicationType);
        String[] ret = {Integer.toString(this.mPhoneId)};
        byte[] pduArray = RIL.arrayListToPrimitiveArray(pdu);
        this.mRil.unsljLogRet(MtkRILConstants.RIL_UNSOL_RESPONSE_NEW_SMS_EX, ret);
        if (this.mRil.mNewSmsRegistrant != null) {
            this.mRil.mNewSmsRegistrant.notifyRegistrant(new AsyncResult((Object) null, pduArray, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioIndication
    public void cdmaNewSmsEx(int indicationType, CdmaSmsMessage msg) {
        this.mRil.processIndication(indicationType);
        this.mRil.unsljLog(MtkRILConstants.RIL_UNSOL_RESPONSE_CDMA_NEW_SMS_EX);
        SmsMessage sms = SmsMessageConverter.newSmsMessageFromCdmaSmsMessage(msg);
        if (this.mRil.mCdmaSmsRegistrant != null) {
            this.mRil.mCdmaSmsRegistrant.notifyRegistrant(new AsyncResult((Object) null, sms, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase, vendor.mediatek.hardware.radio.V3_6.IImsRadioIndication
    public void imsRedialEmergencyIndication(int type, String callId) {
        this.mRil.processIndication(type);
        String[] ret = {callId, Integer.toString(this.mPhoneId)};
        ImsRILAdapter imsRILAdapter = this.mRil;
        imsRILAdapter.riljLog(" RIL_UNSOL_REDIAL_EMERGENCY_INDICATION, " + callId + " phoneId = " + this.mPhoneId);
        if (this.mRil.mImsRedialEccIndRegistrants != null) {
            this.mRil.mImsRedialEccIndRegistrants.notifyRegistrants(new AsyncResult((Object) null, ret, (Throwable) null));
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioIndicationBase
    protected void riljLoge(String msg) {
        this.mRil.riljLoge(msg);
    }

    private ImsCommandsInterface.RadioState getRadioStateFromInt(int stateInt) {
        if (stateInt != 10) {
            switch (stateInt) {
                case 0:
                    ImsCommandsInterface.RadioState state = ImsCommandsInterface.RadioState.RADIO_OFF;
                    return state;
                case 1:
                    ImsCommandsInterface.RadioState state2 = ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE;
                    return state2;
                default:
                    throw new RuntimeException("Unrecognized IMS_RIL_RadioState: " + stateInt);
            }
        } else {
            ImsCommandsInterface.RadioState state3 = ImsCommandsInterface.RadioState.RADIO_ON;
            return state3;
        }
    }
}
