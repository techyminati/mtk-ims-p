package com.mediatek.ims.ril;

import android.os.Handler;
import android.os.Message;
import com.android.internal.telephony.UUSInfo;
/* loaded from: classes.dex */
public interface ImsCommandsInterface {
    @Deprecated
    void accept();

    void accept(Message message);

    @Deprecated
    void acceptVideoCall(int i, int i2);

    void acceptVideoCall(int i, int i2, Message message);

    void acknowledgeLastIncomingCdmaSmsEx(boolean z, int i, Message message);

    void acknowledgeLastIncomingGsmSms(boolean z, int i, Message message);

    void cancelPendingUssi(Message message);

    void conference(Message message);

    void conferenceDial(String[] strArr, int i, boolean z, Message message);

    void deregisterIms(Message message);

    void deregisterImsWithCause(int i, Message message);

    void dial(String str, int i, Message message);

    void dial(String str, int i, UUSInfo uUSInfo, Message message);

    void emergencyDial(String str, int i, UUSInfo uUSInfo, Message message);

    void explicitCallTransfer(Message message);

    @Deprecated
    void forceHangup(int i);

    void forceHangup(int i, Message message);

    void getCLIR(Message message);

    void getCOLP(Message message);

    void getCOLR(Message message);

    void getImsCfgFeatureValue(int i, int i2, Message message);

    void getImsCfgProvisionValue(int i, Message message);

    void getImsCfgResourceCapValue(int i, Message message);

    @Deprecated
    void getLastCallFailCause(int i, Message message);

    void getLastCallFailCause(Message message);

    OpImsCommandsInterface getOpCommandsInterface();

    @Deprecated
    void getProvisionValue(int i, String str, Message message);

    void getProvisionValue(String str, Message message);

    void getXcapStatus(Message message);

    void hangup(int i, Message message);

    void hangupAllCall(Message message);

    void hold(int i, Message message);

    void inviteParticipants(int i, String str, Message message);

    void inviteParticipantsByCallId(int i, String str, Message message);

    @Deprecated
    void merge(Message message);

    void pullCall(String str, boolean z, Message message);

    void queryCLIP(Message message);

    void queryCallForwardInTimeSlotStatus(int i, int i2, Message message);

    void queryCallForwardStatus(int i, int i2, String str, Message message);

    void queryCallWaiting(int i, Message message);

    void queryFacilityLock(String str, String str2, int i, Message message);

    void queryFacilityLockForApp(String str, String str2, int i, String str3, Message message);

    void registerForBearerActivation(Handler handler, int i, Object obj);

    void registerForBearerDeactivation(Handler handler, int i, Object obj);

    void registerForBearerInit(Handler handler, int i, Object obj);

    void registerForCallInfo(Handler handler, int i, Object obj);

    void registerForCallModeChangeIndicator(Handler handler, int i, Object obj);

    void registerForCallProgressIndicator(Handler handler, int i, Object obj);

    void registerForEconfResult(Handler handler, int i, Object obj);

    void registerForEctResult(Handler handler, int i, Object obj);

    void registerForGetProvisionComplete(Handler handler, int i, Object obj);

    void registerForImsCfgConfigChanged(Handler handler, int i, Object obj);

    void registerForImsCfgConfigLoaded(Handler handler, int i, Object obj);

    void registerForImsCfgDynamicImsSwitchComplete(Handler handler, int i, Object obj);

    void registerForImsCfgFeatureChanged(Handler handler, int i, Object obj);

    void registerForImsConfInfoUpdate(Handler handler, int i, Object obj);

    void registerForImsDataInfoNotify(Handler handler, int i, Object obj);

    void registerForImsDeregisterComplete(Handler handler, int i, Object obj);

    void registerForImsDialog(Handler handler, int i, Object obj);

    void registerForImsDisableComplete(Handler handler, int i, Object obj);

    void registerForImsDisableStart(Handler handler, int i, Object obj);

    void registerForImsEnableComplete(Handler handler, int i, Object obj);

    void registerForImsEnableStart(Handler handler, int i, Object obj);

    void registerForImsEventPackage(Handler handler, int i, Object obj);

    void registerForImsRTPInfo(Handler handler, int i, Object obj);

    void registerForImsRedialEccInd(Handler handler, int i, Object obj);

    void registerForImsRegistrationInfo(Handler handler, int i, Object obj);

    void registerForLteMsgWaiting(Handler handler, int i, Object obj);

    void registerForMultiImsCount(Handler handler, int i, Object obj);

    void registerForNotAvailable(Handler handler, int i, Object obj);

    void registerForOff(Handler handler, int i, Object obj);

    void registerForOn(Handler handler, int i, Object obj);

    void registerForOnEnterECBM(Handler handler, int i, Object obj);

    void registerForOnExitECBM(Handler handler, int i, Object obj);

    void registerForOnNoECBM(Handler handler, int i, Object obj);

    void registerForSpeechCodecInfo(Handler handler, int i, Object obj);

    void registerForVideoCapabilityIndicator(Handler handler, int i, Object obj);

    void registerForVolteSettingChanged(Handler handler, int i, Object obj);

    void registerForVolteSubscription(Handler handler, int i, Object obj);

    void registerForXuiInfo(Handler handler, int i, Object obj);

    @Deprecated
    void reject(int i);

    void removeParticipants(int i, String str, Message message);

    void requestExitEmergencyCallbackMode(Message message);

    void resetSuppServ(Message message);

    @Deprecated
    void responseBearerActivationDone(int i, int i2, int i3);

    void responseBearerActivationDone(int i, int i2, Message message);

    @Deprecated
    void responseBearerDeactivationDone(int i, int i2, int i3);

    void responseBearerDeactivationDone(int i, int i2, Message message);

    void resume(int i, Message message);

    void runGbaAuthentication(String str, String str2, boolean z, int i, Message message);

    void sendDtmf(char c, Message message);

    void sendSms(int i, int i2, String str, String str2, boolean z, byte[] bArr, Message message);

    void sendUSSI(int i, String str, Message message);

    @Deprecated
    void sendWfcProfileInfo(int i, int i2, Message message);

    void sendWfcProfileInfo(int i, Message message);

    void setCLIP(int i, Message message);

    void setCLIR(int i, Message message);

    void setCOLP(int i, Message message);

    void setCOLR(int i, Message message);

    void setCallForward(int i, int i2, int i3, String str, int i4, Message message);

    void setCallForwardInTimeSlot(int i, int i2, int i3, String str, int i4, long[] jArr, Message message);

    @Deprecated
    void setCallIndication(int i, int i2, int i3);

    void setCallIndication(int i, int i2, int i3, Message message);

    void setCallWaiting(boolean z, int i, Message message);

    void setEccServiceCategory(int i, Message message);

    void setFacilityLock(String str, boolean z, String str2, int i, Message message);

    void setFacilityLockForApp(String str, boolean z, String str2, int i, String str3, Message message);

    @Deprecated
    void setImsBearerNotification(int i, int i2);

    void setImsBearerNotification(int i, Message message);

    @Deprecated
    void setImsCfg(int[] iArr, int i, Message message);

    void setImsCfg(int[] iArr, Message message);

    void setImsCfgFeatureValue(int i, int i2, int i3, int i4, Message message);

    void setImsCfgProvisionValue(int i, String str, Message message);

    void setImsCfgResourceCapValue(int i, int i2, Message message);

    @Deprecated
    void setImsRegistrationReport(int i, Message message);

    void setImsRegistrationReport(Message message);

    void setImsRtpInfo(int i, int i2, int i3, Message message);

    void setModemImsCfg(String str, String str2, int i, Message message);

    void setMute(boolean z, Message message);

    void setOnIncomingCallIndication(Handler handler, int i, Object obj);

    void setOnNetworkInitUSSI(Handler handler, int i, Object obj);

    void setOnUSSI(Handler handler, int i, Object obj);

    @Deprecated
    void setProvisionValue(int i, String str, String str2, Message message);

    void setProvisionValue(String str, String str2, Message message);

    void setVoiceDomainPreference(int i, Message message);

    void setupXcapUserAgentString(String str, Message message);

    @Deprecated
    void start(String str, int i, boolean z, boolean z2, int i2, Message message);

    void start(String str, int i, boolean z, boolean z2, Message message);

    @Deprecated
    void startConference(String[] strArr, int i, boolean z, int i2, Message message);

    void startConference(String[] strArr, int i, boolean z, Message message);

    void startDtmf(char c, Message message);

    void stopDtmf(Message message);

    void swap(Message message);

    @Deprecated
    void terminate(int i);

    @Deprecated
    void turnOffIms(int i, Message message);

    void turnOffIms(Message message);

    void turnOffImsVideo(Message message);

    void turnOffImsVoice(Message message);

    void turnOffRcsUa(Message message);

    void turnOffVilte(Message message);

    void turnOffViwifi(Message message);

    void turnOffVolte(Message message);

    void turnOffWfc(Message message);

    @Deprecated
    void turnOnIms(int i, Message message);

    void turnOnIms(Message message);

    void turnOnImsVideo(Message message);

    void turnOnImsVoice(Message message);

    void turnOnRcsUa(Message message);

    void turnOnVilte(Message message);

    void turnOnViwifi(Message message);

    void turnOnVolte(Message message);

    void turnOnWfc(Message message);

    void unSetOnNetworkInitUSSI(Handler handler);

    void unSetOnUSSI(Handler handler);

    void unattendedCallTransfer(String str, int i, Message message);

    void unregisterForBearerActivation(Handler handler);

    void unregisterForBearerDeactivation(Handler handler);

    void unregisterForBearerInit(Handler handler);

    void unregisterForCallInfo(Handler handler);

    void unregisterForCallModeChangeIndicator(Handler handler);

    void unregisterForCallProgressIndicator(Handler handler);

    void unregisterForEconfResult(Handler handler);

    void unregisterForEctResult(Handler handler);

    void unregisterForGetProvisionComplete(Handler handler);

    void unregisterForImsCfgConfigChanged(Handler handler);

    void unregisterForImsCfgConfigLoaded(Handler handler);

    void unregisterForImsCfgDynamicImsSwitchComplete(Handler handler);

    void unregisterForImsCfgFeatureChanged(Handler handler);

    void unregisterForImsConfInfoUpdate(Handler handler);

    void unregisterForImsDataInfoNotify(Handler handler);

    void unregisterForImsDeregisterComplete(Handler handler);

    void unregisterForImsDialog(Handler handler);

    void unregisterForImsDisableComplete(Handler handler);

    void unregisterForImsDisableStart(Handler handler);

    void unregisterForImsEnableComplete(Handler handler);

    void unregisterForImsEnableStart(Handler handler);

    void unregisterForImsEventPackage(Handler handler);

    void unregisterForImsRTPInfo(Handler handler);

    void unregisterForImsRedialEccInd(Handler handler);

    void unregisterForImsRegistrationInfo(Handler handler);

    void unregisterForLteMsgWaiting(Handler handler);

    void unregisterForMultiImsCount(Handler handler);

    void unregisterForNotAvailable(Handler handler);

    void unregisterForOff(Handler handler);

    void unregisterForOn(Handler handler);

    void unregisterForOnEnterECBM(Handler handler);

    void unregisterForOnExitECBM(Handler handler);

    void unregisterForOnNoECBM(Handler handler);

    void unregisterForSpeechCodecInfo(Handler handler);

    void unregisterForVideoCapabilityIndicator(Handler handler);

    void unregisterForVolteSettingChanged(Handler handler);

    void unregisterForVolteSubscription(Handler handler);

    void unregisterForXuiInfo(Handler handler);

    void unsetOnIncomingCallIndication(Handler handler);

    void vtDial(String str, int i, UUSInfo uUSInfo, Message message);

    /* loaded from: classes.dex */
    public enum RadioState {
        RADIO_OFF,
        RADIO_UNAVAILABLE,
        RADIO_ON;

        public boolean isOn() {
            return this == RADIO_ON;
        }

        public boolean isAvailable() {
            return this != RADIO_UNAVAILABLE;
        }
    }
}
