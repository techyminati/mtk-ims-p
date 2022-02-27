package com.mediatek.ims.ril;

import android.hardware.radio.V1_0.CdmaCallWaiting;
import android.hardware.radio.V1_0.CdmaInformationRecords;
import android.hardware.radio.V1_0.CdmaSignalInfoRecord;
import android.hardware.radio.V1_0.CdmaSmsMessage;
import android.hardware.radio.V1_0.CellInfo;
import android.hardware.radio.V1_0.HardwareConfig;
import android.hardware.radio.V1_0.LceDataInfo;
import android.hardware.radio.V1_0.PcoDataInfo;
import android.hardware.radio.V1_0.RadioCapability;
import android.hardware.radio.V1_0.SetupDataCallResult;
import android.hardware.radio.V1_0.SignalStrength;
import android.hardware.radio.V1_0.SimRefreshResult;
import android.hardware.radio.V1_0.StkCcUnsolSsResult;
import android.hardware.radio.V1_0.SuppSvcNotification;
import android.hardware.radio.V1_1.KeepaliveStatus;
import android.hardware.radio.V1_1.NetworkScanResult;
import android.hardware.radio.V1_2.LinkCapacityEstimate;
import android.hardware.radio.V1_2.PhysicalChannelConfig;
import java.util.ArrayList;
import vendor.mediatek.hardware.radio.V3_0.Dialog;
import vendor.mediatek.hardware.radio.V3_0.ImsConfParticipant;
import vendor.mediatek.hardware.radio.V3_0.IncomingCallNotification;
import vendor.mediatek.hardware.radio.V3_6.IImsRadioIndication;
/* loaded from: classes.dex */
public class ImsRadioIndicationBase extends IImsRadioIndication.Stub {
    public void ectIndication(int arg0, int arg1, int arg2, int arg3) {
        riljLoge("No implementation in ectIndication");
    }

    public void volteSetting(int arg0, boolean arg1) {
        riljLoge("No implementation in volteSetting");
    }

    public void callInfoIndication(int type, ArrayList<String> data) {
        riljLoge("No implementation in callInfoIndication");
    }

    public void callmodChangeIndicator(int type, String callId, String callMode, String videoState, String audioDirection, String pau) {
        riljLoge("No implementation in callmodChangeIndicator");
    }

    public void econfResultIndication(int type, String confCallId, String op, String num, String result, String cause, String joinedCallId) {
        riljLoge("No implementation in econfResultIndication");
    }

    public void getProvisionDone(int type, String data, String arg2) {
        riljLoge("No implementation in getProvisionDone");
    }

    public void imsBearerActivation(int type, int data, String arg2) {
        riljLoge("No implementation in imsBearerActivation");
    }

    public void imsBearerDeactivation(int type, int data, String arg2) {
        riljLoge("No implementation in imsBearerDeactivation");
    }

    public void imsBearerInit(int type) {
        riljLoge("No implementation in imsBearerInit");
    }

    public void imsDataInfoNotify(int type, String arg1, String arg2, String arg3) {
        riljLoge("No implementation in imsDataInfoNotify");
    }

    public void imsDisableDone(int type) {
        riljLoge("No implementation in imsDisableDone");
    }

    public void imsDisableStart(int type) {
        riljLoge("No implementation in imsDisableStart");
    }

    public void imsEnableDone(int type) {
        riljLoge("No implementation in imsEnableDone");
    }

    public void imsEnableStart(int type) {
        riljLoge("No implementation in imsEnableStart");
    }

    public void imsRegistrationInfo(int type, int data, int arg2) {
        riljLoge("No implementation in imsRegistrationInfo");
    }

    public void imsRtpInfo(int type, String pdnId, String networkId, String timer, String sendPktLost, String recvPktLost) {
        riljLoge("No implementation in imsRtpInfo");
    }

    public void incomingCallIndication(int type, IncomingCallNotification data) {
        riljLoge("No implementation in incomingCallIndication");
    }

    public void onUssi(int type, String clazz, String status, String str, String lang, String errorcode, String alertingPattern, String sipCause) {
        riljLoge("No implementation in onUssi");
    }

    public void onXui(int type, String accountId, String broadcastFlag, String xuiInfo) {
        riljLoge("No implementation in onXui");
    }

    public void onVolteSubscription(int type, int status) {
        riljLoge("No implementation in onVolteSubscription");
    }

    public void sipCallProgressIndicator(int type, String callId, String dir, String sipMsgType, String method, String responseCode, String reasonText) {
        riljLoge("No implementation in sipCallProgressIndicator");
    }

    public void videoCapabilityIndicator(int type, String callId, String localVideoCap, String remoteVideoCap) {
        riljLoge("No implementation in videoCapabilityIndicator");
    }

    public void imsConferenceInfoIndication(int type, ArrayList<ImsConfParticipant> participants) {
        riljLoge("No implementation in imsConferenceInfoIndication");
    }

    public void lteMessageWaitingIndication(int type, String callId, String pType, String urcIdx, String totalUrcCount, String rawData) {
        riljLoge("No implementation in lteMessageWaitingIndication");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void callRing(int type, boolean data, CdmaSignalInfoRecord arg2) {
        riljLoge("No implementation in callRing");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void callStateChanged(int type) {
        riljLoge("No implementation in callStateChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cdmaCallWaiting(int type, CdmaCallWaiting data) {
        riljLoge("No implementation in cdmaCallWaiting");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cdmaInfoRec(int type, CdmaInformationRecords data) {
        riljLoge("No implementation in cdmaInfoRec");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cdmaNewSms(int type, CdmaSmsMessage data) {
        riljLoge("No implementation in cdmaNewSms");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cdmaOtaProvisionStatus(int type, int data) {
        riljLoge("No implementation in cdmaOtaProvisionStatus");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cdmaPrlChanged(int type, int data) {
        riljLoge("No implementation in cdmaPrlChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cdmaRuimSmsStorageFull(int type) {
        riljLoge("No implementation in cdmaRuimSmsStorageFull");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cdmaSubscriptionSourceChanged(int type, int data) {
        riljLoge("No implementation in cdmaSubscriptionSourceChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void cellInfoList(int type, ArrayList<CellInfo> data) {
        riljLoge("No implementation in cellInfoList");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void currentSignalStrength(int type, SignalStrength data) {
        riljLoge("No implementation in currentSignalStrength");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void dataCallListChanged(int type, ArrayList<SetupDataCallResult> data) {
        riljLoge("No implementation in dataCallListChanged");
    }

    public void enterEmergencyCallbackMode(int type) {
        riljLoge("No implementation in enterEmergencyCallbackMode");
    }

    public void exitEmergencyCallbackMode(int type) {
        riljLoge("No implementation in exitEmergencyCallbackMode");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void hardwareConfigChanged(int type, ArrayList<HardwareConfig> data) {
        riljLoge("No implementation in hardwareConfigChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void imsNetworkStateChanged(int type) {
        riljLoge("No implementation in imsNetworkStateChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void indicateRingbackTone(int type, boolean data) {
        riljLoge("No implementation in indicateRingbackTone");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void lceData(int type, LceDataInfo data) {
        riljLoge("No implementation in lceData");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void modemReset(int type, String data) {
        riljLoge("No implementation in modemReset");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void networkStateChanged(int type) {
        riljLoge("No implementation in networkStateChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void newBroadcastSms(int type, ArrayList<Byte> data) {
        riljLoge("No implementation in newBroadcastSms");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void newSms(int type, ArrayList<Byte> data) {
        riljLoge("No implementation in newSms");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void newSmsOnSim(int type, int data) {
        riljLoge("No implementation in newSmsOnSim");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void newSmsStatusReport(int type, ArrayList<Byte> data) {
        riljLoge("No implementation in newSmsStatusReport");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void nitzTimeReceived(int type, String data, long arg2) {
        riljLoge("No implementation in nitzTimeReceived");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void onSupplementaryServiceIndication(int type, StkCcUnsolSsResult data) {
        riljLoge("No implementation in onSupplementaryServiceIndication");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void onUssd(int type, int data, String arg2) {
        riljLoge("No implementation in onUssd");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void pcoData(int type, PcoDataInfo data) {
        riljLoge("No implementation in pcoData");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void radioCapabilityIndication(int type, RadioCapability data) {
        riljLoge("No implementation in radioCapabilityIndication");
    }

    public void radioStateChanged(int type, int data) {
        riljLoge("No implementation in radioStateChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void resendIncallMute(int type) {
        riljLoge("No implementation in resendIncallMute");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void restrictedStateChanged(int type, int data) {
        riljLoge("No implementation in restrictedStateChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void rilConnected(int type) {
        riljLoge("No implementation in rilConnected");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void simRefresh(int type, SimRefreshResult data) {
        riljLoge("No implementation in simRefresh");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void simSmsStorageFull(int type) {
        riljLoge("No implementation in simSmsStorageFull");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void simStatusChanged(int type) {
        riljLoge("No implementation in simStatusChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void srvccStateNotify(int type, int data) {
        riljLoge("No implementation in srvccStateNotify");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void stkCallControlAlphaNotify(int type, String data) {
        riljLoge("No implementation in stkCallControlAlphaNotify");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void stkCallSetup(int type, long data) {
        riljLoge("No implementation in stkCallSetup");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void stkEventNotify(int type, String data) {
        riljLoge("No implementation in stkEventNotify");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void stkProactiveCommand(int type, String data) {
        riljLoge("No implementation in stkProactiveCommand");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void stkSessionEnd(int type) {
        riljLoge("No implementation in stkSessionEnd");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void subscriptionStatusChanged(int type, boolean data) {
        riljLoge("No implementation in subscriptionStatusChanged");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void suppSvcNotify(int type, SuppSvcNotification data) {
        riljLoge("No implementation in suppSvcNotify");
    }

    @Override // android.hardware.radio.V1_0.IRadioIndication
    public void voiceRadioTechChanged(int type, int data) {
        riljLoge("No implementation in voiceRadioTechChanged");
    }

    public void imsEventPackageIndication(int type, String callId, String ptype, String urcIdx, String totalUrcCount, String rawData) {
        riljLoge("No implementation in imsEventPackageIndication");
    }

    public void imsDeregDone(int type) {
        riljLoge("No implementation in imsDeregDone");
    }

    public void multiImsCount(int type, int count) {
        riljLoge("No implementation in multiImsCount");
    }

    public void imsSupportEcc(int type, int supportLteEcc) {
        riljLoge("No implementation in isSupportLteEcc");
    }

    public void imsRedialEmergencyIndication(int type, String callId) {
        riljLoge("No implementation in imsRedialEmergencyIndication");
    }

    @Override // android.hardware.radio.V1_1.IRadioIndication
    public void keepaliveStatus(int type, KeepaliveStatus status) {
        riljLoge("No implementation in keepaliveStatus");
    }

    @Override // android.hardware.radio.V1_1.IRadioIndication
    public void carrierInfoForImsiEncryption(int type) {
        riljLoge("No implementation in carrierInfoForImsiEncryption");
    }

    @Override // android.hardware.radio.V1_1.IRadioIndication
    public void networkScanResult(int type, NetworkScanResult result) {
        riljLoge("No implementation in networkScanResult");
    }

    public void imsRadioInfoChange(int type, String iid, String info) {
        riljLoge("No implementation in imsRadioInfoChange");
    }

    public void speechCodecInfoIndication(int type, int info) {
        riljLoge("No implementation in speechCodecInfoIndication");
    }

    @Override // android.hardware.radio.V1_2.IRadioIndication
    public void currentSignalStrength_1_2(int type, android.hardware.radio.V1_2.SignalStrength signalStrength) {
        riljLoge("No implementation in currentSignalStrength_1_2");
    }

    @Override // android.hardware.radio.V1_2.IRadioIndication
    public void currentPhysicalChannelConfigs(int type, ArrayList<PhysicalChannelConfig> configs) {
        riljLoge("No implementation in currentPhysicalChannelConfigs");
    }

    @Override // android.hardware.radio.V1_2.IRadioIndication
    public void currentLinkCapacityEstimate(int type, LinkCapacityEstimate lce) {
        riljLoge("No implementation in currentLinkCapacityEstimate");
    }

    @Override // android.hardware.radio.V1_2.IRadioIndication
    public void cellInfoList_1_2(int type, ArrayList<android.hardware.radio.V1_2.CellInfo> records) {
        riljLoge("No implementation in cellInfoList_1_2");
    }

    @Override // android.hardware.radio.V1_2.IRadioIndication
    public void networkScanResult_1_2(int type, android.hardware.radio.V1_2.NetworkScanResult result) {
        riljLoge("No implementation in networkScanResult_1_2");
    }

    public void imsDialogIndication(int type, ArrayList<Dialog> dialogList) {
        riljLoge("No implementation in imsDialogIndication");
    }

    public void imsCfgDynamicImsSwitchComplete(int type) {
        riljLoge("No implementation in imsCfgDynamicImsSwitchComplete");
    }

    public void imsCfgFeatureChanged(int type, int phoneId, int featureId, int value) {
        riljLoge("No implementation in imsCfgFeatureChanged");
    }

    public void imsCfgConfigChanged(int type, int phoneId, String configId, String value) {
        riljLoge("No implementation in imsCfgConfigChanged");
    }

    public void imsCfgConfigLoaded(int type) {
        riljLoge("No implementation in imsCfgConfigLoaded");
    }

    public void newSmsStatusReportEx(int indicationType, ArrayList<Byte> pdu) {
        riljLoge("No implementation in newSmsStatusReportEx");
    }

    public void newSmsEx(int indicationType, ArrayList<Byte> pdu) {
        riljLoge("No implementation in newSmsEx");
    }

    public void cdmaNewSmsEx(int indicationType, CdmaSmsMessage msg) {
        riljLoge("No implementation in cdmaNewSmsEx");
    }

    public void noEmergencyCallbackMode(int indicationType) {
        riljLoge("No implementation in noEmergencyCallbackMode");
    }

    protected void riljLoge(String msg) {
    }
}
