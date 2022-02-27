package com.mediatek.ims.ril;

import android.hardware.radio.V1_0.ActivityStatsInfo;
import android.hardware.radio.V1_0.Call;
import android.hardware.radio.V1_0.CallForwardInfo;
import android.hardware.radio.V1_0.CardStatus;
import android.hardware.radio.V1_0.CarrierRestrictions;
import android.hardware.radio.V1_0.CdmaBroadcastSmsConfigInfo;
import android.hardware.radio.V1_0.CellInfo;
import android.hardware.radio.V1_0.DataRegStateResult;
import android.hardware.radio.V1_0.GsmBroadcastSmsConfigInfo;
import android.hardware.radio.V1_0.HardwareConfig;
import android.hardware.radio.V1_0.IccIoResult;
import android.hardware.radio.V1_0.LastCallFailCauseInfo;
import android.hardware.radio.V1_0.LceDataInfo;
import android.hardware.radio.V1_0.LceStatusInfo;
import android.hardware.radio.V1_0.NeighboringCell;
import android.hardware.radio.V1_0.OperatorInfo;
import android.hardware.radio.V1_0.RadioCapability;
import android.hardware.radio.V1_0.RadioResponseInfo;
import android.hardware.radio.V1_0.SendSmsResult;
import android.hardware.radio.V1_0.SetupDataCallResult;
import android.hardware.radio.V1_0.SignalStrength;
import android.hardware.radio.V1_0.VoiceRegStateResult;
import android.hardware.radio.V1_1.KeepaliveStatus;
import java.util.ArrayList;
import vendor.mediatek.hardware.radio.V3_0.CallForwardInfoEx;
import vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse;
/* loaded from: classes.dex */
public class ImsRadioResponseBase extends IImsRadioResponse.Stub {
    public void acceptCallResponse(RadioResponseInfo info) {
        riljLoge("No implementation in acceptCallResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void acknowledgeIncomingGsmSmsWithPduResponse(RadioResponseInfo info) {
        riljLoge("No implementation in acknowledgeIncomingGsmSmsWithPduResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void acknowledgeLastIncomingCdmaSmsResponse(RadioResponseInfo info) {
        riljLoge("No implementation in acknowledgeLastIncomingCdmaSmsResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void acknowledgeLastIncomingGsmSmsResponse(RadioResponseInfo info) {
        riljLoge("No implementation in acknowledgeLastIncomingGsmSmsResponse");
    }

    public void acknowledgeLastIncomingGsmSmsExResponse(RadioResponseInfo info) {
        riljLoge("No implementation in acknowledgeLastIncomingGsmSmsExResponse");
    }

    public void acknowledgeLastIncomingCdmaSmsExResponse(RadioResponseInfo info) {
        riljLoge("No implementation in acknowledgeLastIncomingCdmaSmsExResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void acknowledgeRequest(int info) {
        riljLoge("No implementation in acknowledgeRequest");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void cancelPendingUssdResponse(RadioResponseInfo info) {
        riljLoge("No implementation in cancelPendingUssdResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void changeIccPin2ForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in changeIccPin2ForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void changeIccPinForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in changeIccPinForAppResponse");
    }

    public void conferenceResponse(RadioResponseInfo info) {
        riljLoge("No implementation in conferenceResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void deactivateDataCallResponse(RadioResponseInfo info) {
        riljLoge("No implementation in deactivateDataCallResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void deleteSmsOnRuimResponse(RadioResponseInfo info) {
        riljLoge("No implementation in deleteSmsOnRuimResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void deleteSmsOnSimResponse(RadioResponseInfo info) {
        riljLoge("No implementation in deleteSmsOnSimResponse");
    }

    public void dialResponse(RadioResponseInfo info) {
        riljLoge("No implementation in dialResponse");
    }

    public void exitEmergencyCallbackModeResponse(RadioResponseInfo info) {
        riljLoge("No implementation in exitEmergencyCallbackModeResponse");
    }

    public void explicitCallTransferResponse(RadioResponseInfo info) {
        riljLoge("No implementation in explicitCallTransferResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getAllowedCarriersResponse(RadioResponseInfo info, boolean arg1, CarrierRestrictions arg2) {
        riljLoge("No implementation in getAllowedCarriersResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getAvailableBandModesResponse(RadioResponseInfo info, ArrayList<Integer> arg1) {
        riljLoge("No implementation in getAvailableBandModesResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getAvailableNetworksResponse(RadioResponseInfo info, ArrayList<OperatorInfo> arg1) {
        riljLoge("No implementation in getAvailableNetworksResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getBasebandVersionResponse(RadioResponseInfo info, String arg1) {
        riljLoge("No implementation in getBasebandVersionResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getCDMASubscriptionResponse(RadioResponseInfo info, String arg1, String arg2, String arg3, String arg4, String arg5) {
        riljLoge("No implementation in getCDMASubscriptionResponse");
    }

    public void getCallForwardStatusResponse(RadioResponseInfo info, ArrayList<CallForwardInfo> list) {
        riljLoge("No implementation in getCallForwardStatusResponse");
    }

    public void getCallWaitingResponse(RadioResponseInfo info, boolean arg1, int arg2) {
        riljLoge("No implementation in getCallWaitingResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getCdmaBroadcastConfigResponse(RadioResponseInfo info, ArrayList<CdmaBroadcastSmsConfigInfo> arg1) {
        riljLoge("No implementation in getCdmaBroadcastConfigResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getCdmaRoamingPreferenceResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in getCdmaRoamingPreferenceResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getCdmaSubscriptionSourceResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in getCdmaSubscriptionSourceResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getCellInfoListResponse(RadioResponseInfo info, ArrayList<CellInfo> arg1) {
        riljLoge("No implementation in getCellInfoListResponse");
    }

    public void getClipResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in getClipResponse");
    }

    public void getClirResponse(RadioResponseInfo info, int arg1, int arg2) {
        riljLoge("No implementation in getClirResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getCurrentCallsResponse(RadioResponseInfo info, ArrayList<Call> arg1) {
        riljLoge("No implementation in getCurrentCallsResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getDataCallListResponse(RadioResponseInfo info, ArrayList<SetupDataCallResult> arg1) {
        riljLoge("No implementation in getDataCallListResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getDataRegistrationStateResponse(RadioResponseInfo info, DataRegStateResult arg1) {
        riljLoge("No implementation in getDataRegistrationStateResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getDeviceIdentityResponse(RadioResponseInfo info, String arg1, String arg2, String arg3, String arg4) {
        riljLoge("No implementation in getDeviceIdentityResponse");
    }

    public void getFacilityLockForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in getFacilityLockForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getGsmBroadcastConfigResponse(RadioResponseInfo info, ArrayList<GsmBroadcastSmsConfigInfo> arg1) {
        riljLoge("No implementation in getGsmBroadcastConfigResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getHardwareConfigResponse(RadioResponseInfo info, ArrayList<HardwareConfig> arg1) {
        riljLoge("No implementation in getHardwareConfigResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getIMSIForAppResponse(RadioResponseInfo info, String arg1) {
        riljLoge("No implementation in getIMSIForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getIccCardStatusResponse(RadioResponseInfo info, CardStatus arg1) {
        riljLoge("No implementation in getIccCardStatusResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getImsRegistrationStateResponse(RadioResponseInfo info, boolean arg1, int arg2) {
        riljLoge("No implementation in getImsRegistrationStateResponse");
    }

    public void getLastCallFailCauseResponse(RadioResponseInfo info, LastCallFailCauseInfo arg1) {
        riljLoge("No implementation in getLastCallFailCauseResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getModemActivityInfoResponse(RadioResponseInfo info, ActivityStatsInfo arg1) {
        riljLoge("No implementation in getModemActivityInfoResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getMuteResponse(RadioResponseInfo info, boolean arg1) {
        riljLoge("No implementation in getMuteResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getNeighboringCidsResponse(RadioResponseInfo info, ArrayList<NeighboringCell> arg1) {
        riljLoge("No implementation in getNeighboringCidsResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getNetworkSelectionModeResponse(RadioResponseInfo info, boolean arg1) {
        riljLoge("No implementation in getNetworkSelectionModeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getOperatorResponse(RadioResponseInfo info, String arg1, String arg2, String arg3) {
        riljLoge("No implementation in getOperatorResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getPreferredNetworkTypeResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in getPreferredNetworkTypeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getPreferredVoicePrivacyResponse(RadioResponseInfo info, boolean arg1) {
        riljLoge("No implementation in getPreferredVoicePrivacyResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getRadioCapabilityResponse(RadioResponseInfo info, RadioCapability arg1) {
        riljLoge("No implementation in getRadioCapabilityResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getSignalStrengthResponse(RadioResponseInfo info, SignalStrength arg1) {
        riljLoge("No implementation in getSignalStrengthResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getSmscAddressResponse(RadioResponseInfo info, String arg1) {
        riljLoge("No implementation in getSmscAddressResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getTTYModeResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in getTTYModeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getVoiceRadioTechnologyResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in getVoiceRadioTechnologyResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void getVoiceRegistrationStateResponse(RadioResponseInfo info, VoiceRegStateResult arg1) {
        riljLoge("No implementation in getVoiceRegistrationStateResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void handleStkCallSetupRequestFromSimResponse(RadioResponseInfo info) {
        riljLoge("No implementation in handleStkCallSetupRequestFromSimResponse");
    }

    public void hangupConnectionResponse(RadioResponseInfo info) {
        riljLoge("No implementation in hangupConnectionResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void hangupForegroundResumeBackgroundResponse(RadioResponseInfo info) {
        riljLoge("No implementation in hangupForegroundResumeBackgroundResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void hangupWaitingOrBackgroundResponse(RadioResponseInfo info) {
        riljLoge("No implementation in hangupWaitingOrBackgroundResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void iccCloseLogicalChannelResponse(RadioResponseInfo info) {
        riljLoge("No implementation in iccCloseLogicalChannelResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void iccIOForAppResponse(RadioResponseInfo info, IccIoResult arg1) {
        riljLoge("No implementation in iccIOForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void iccOpenLogicalChannelResponse(RadioResponseInfo info, int arg1, ArrayList<Byte> arg2) {
        riljLoge("No implementation in iccOpenLogicalChannelResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void iccTransmitApduBasicChannelResponse(RadioResponseInfo info, IccIoResult arg1) {
        riljLoge("No implementation in iccTransmitApduBasicChannelResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void iccTransmitApduLogicalChannelResponse(RadioResponseInfo info, IccIoResult arg1) {
        riljLoge("No implementation in iccTransmitApduLogicalChannelResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void nvReadItemResponse(RadioResponseInfo info, String arg1) {
        riljLoge("No implementation in nvReadItemResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void nvResetConfigResponse(RadioResponseInfo info) {
        riljLoge("No implementation in nvResetConfigResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void nvWriteCdmaPrlResponse(RadioResponseInfo info) {
        riljLoge("No implementation in nvWriteCdmaPrlResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void nvWriteItemResponse(RadioResponseInfo info) {
        riljLoge("No implementation in nvWriteItemResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void pullLceDataResponse(RadioResponseInfo info, LceDataInfo arg1) {
        riljLoge("No implementation in pullLceDataResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void rejectCallResponse(RadioResponseInfo info) {
        riljLoge("No implementation in rejectCallResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void reportSmsMemoryStatusResponse(RadioResponseInfo info) {
        riljLoge("No implementation in reportSmsMemoryStatusResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void reportStkServiceIsRunningResponse(RadioResponseInfo info) {
        riljLoge("No implementation in reportStkServiceIsRunningResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void requestIccSimAuthenticationResponse(RadioResponseInfo info, IccIoResult arg1) {
        riljLoge("No implementation in requestIccSimAuthenticationResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void requestIsimAuthenticationResponse(RadioResponseInfo info, String arg1) {
        riljLoge("No implementation in requestIsimAuthenticationResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void requestShutdownResponse(RadioResponseInfo info) {
        riljLoge("No implementation in requestShutdownResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendBurstDtmfResponse(RadioResponseInfo info) {
        riljLoge("No implementation in sendBurstDtmfResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendCDMAFeatureCodeResponse(RadioResponseInfo info) {
        riljLoge("No implementation in sendCDMAFeatureCodeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendCdmaSmsResponse(RadioResponseInfo info, SendSmsResult arg1) {
        riljLoge("No implementation in sendCdmaSmsResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendDeviceStateResponse(RadioResponseInfo info) {
        riljLoge("No implementation in sendDeviceStateResponse");
    }

    public void sendDtmfResponse(RadioResponseInfo info) {
        riljLoge("No implementation in sendDtmfResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendEnvelopeResponse(RadioResponseInfo info, String arg1) {
        riljLoge("No implementation in sendEnvelopeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendEnvelopeWithStatusResponse(RadioResponseInfo info, IccIoResult arg1) {
        riljLoge("No implementation in sendEnvelopeWithStatusResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendImsSmsResponse(RadioResponseInfo info, SendSmsResult arg1) {
        riljLoge("No implementation in sendImsSmsResponse");
    }

    public void sendImsSmsExResponse(RadioResponseInfo responseInfo, SendSmsResult sms) {
        riljLoge("No implementation in sendImsSmsExResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendSMSExpectMoreResponse(RadioResponseInfo info, SendSmsResult arg1) {
        riljLoge("No implementation in sendSMSExpectMoreResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendSmsResponse(RadioResponseInfo info, SendSmsResult arg1) {
        riljLoge("No implementation in sendSmsResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendTerminalResponseToSimResponse(RadioResponseInfo info) {
        riljLoge("No implementation in sendTerminalResponseToSimResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void sendUssdResponse(RadioResponseInfo info) {
        riljLoge("No implementation in sendUssdResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void separateConnectionResponse(RadioResponseInfo info) {
        riljLoge("No implementation in separateConnectionResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setAllowedCarriersResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in setAllowedCarriersResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setBandModeResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setBandModeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setBarringPasswordResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setBarringPasswordResponse");
    }

    public void setCallForwardResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCallForwardResponse");
    }

    public void setCallWaitingResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCallWaitingResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setCdmaBroadcastActivationResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCdmaBroadcastActivationResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setCdmaBroadcastConfigResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCdmaBroadcastConfigResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setCdmaRoamingPreferenceResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCdmaRoamingPreferenceResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setCdmaSubscriptionSourceResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCdmaSubscriptionSourceResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setCellInfoListRateResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCellInfoListRateResponse");
    }

    public void setClirResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setClirResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setDataAllowedResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setDataAllowedResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setDataProfileResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setDataProfileResponse");
    }

    public void setFacilityLockForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in setFacilityLockForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setGsmBroadcastActivationResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setGsmBroadcastActivationResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setGsmBroadcastConfigResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setGsmBroadcastConfigResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setIndicationFilterResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setIndicationFilterResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setInitialAttachApnResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setInitialAttachApnResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setLocationUpdatesResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setLocationUpdatesResponse");
    }

    public void setMuteResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setMuteResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setNetworkSelectionModeAutomaticResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setNetworkSelectionModeAutomaticResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setNetworkSelectionModeManualResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setNetworkSelectionModeManualResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setPreferredNetworkTypeResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setPreferredNetworkTypeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setPreferredVoicePrivacyResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setPreferredVoicePrivacyResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setRadioCapabilityResponse(RadioResponseInfo info, RadioCapability arg1) {
        riljLoge("No implementation in setRadioCapabilityResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setRadioPowerResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setRadioPowerResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setSimCardPowerResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setSimCardPowerResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setSmscAddressResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setSmscAddressResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setSuppServiceNotificationsResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setSuppServiceNotificationsResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setTTYModeResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setTTYModeResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setUiccSubscriptionResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setUiccSubscriptionResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void setupDataCallResponse(RadioResponseInfo info, SetupDataCallResult arg1) {
        riljLoge("No implementation in setupDataCallResponse");
    }

    public void startDtmfResponse(RadioResponseInfo info) {
        riljLoge("No implementation in startDtmfResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void startLceServiceResponse(RadioResponseInfo info, LceStatusInfo arg1) {
        riljLoge("No implementation in startLceServiceResponse");
    }

    public void stopDtmfResponse(RadioResponseInfo info) {
        riljLoge("No implementation in stopDtmfResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void stopLceServiceResponse(RadioResponseInfo info, LceStatusInfo arg1) {
        riljLoge("No implementation in stopLceServiceResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void supplyIccPin2ForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in supplyIccPin2ForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void supplyIccPinForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in supplyIccPinForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void supplyIccPuk2ForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in supplyIccPuk2ForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void supplyIccPukForAppResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in supplyIccPukForAppResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void supplyNetworkDepersonalizationResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in supplyNetworkDepersonalizationResponse");
    }

    public void switchWaitingOrHoldingAndActiveResponse(RadioResponseInfo info) {
        riljLoge("No implementation in switchWaitingOrHoldingAndActiveResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void writeSmsToRuimResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in writeSmsToRuimResponse");
    }

    @Override // android.hardware.radio.V1_0.IRadioResponse
    public void writeSmsToSimResponse(RadioResponseInfo info, int arg1) {
        riljLoge("No implementation in writeSmsToSimResponse");
    }

    public void addImsConferenceCallMemberResponse(RadioResponseInfo info) {
        riljLoge("No implementation in addImsConferenceCallMemberResponse");
    }

    public void cancelUssiResponse(RadioResponseInfo info) {
        riljLoge("No implementation in cancelUssiResponse");
    }

    public void getXcapStatusResponse(RadioResponseInfo info) {
        riljLoge("No implementation in getXcapStatusResponse");
    }

    public void resetSuppServResponse(RadioResponseInfo info) {
        riljLoge("No implementation in resetSuppServResponse");
    }

    public void setupXcapUserAgentStringResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setupXcapUserAgentStringResponse");
    }

    public void conferenceDialResponse(RadioResponseInfo info) {
        riljLoge("No implementation in conferenceDialResponse");
    }

    public void imsDeregNotificationResponse(RadioResponseInfo info) {
        riljLoge("No implementation in deregisterImsResponse");
    }

    public void dialWithSipUriResponse(RadioResponseInfo info) {
        riljLoge("No implementation in dialWithSipUriResponse");
    }

    public void emergencyDialResponse(RadioResponseInfo info) {
        riljLoge("No implementation in emergencyDialResponse");
    }

    public void forceReleaseCallResponse(RadioResponseInfo info) {
        riljLoge("No implementation in forceReleaseCallResponse");
    }

    public void getProvisionValueResponse(RadioResponseInfo info) {
        riljLoge("No implementation in getProvisionValueResponse");
    }

    public void hangupAllResponse(RadioResponseInfo info) {
        riljLoge("No implementation in hangupAllResponse");
    }

    public void holdCallResponse(RadioResponseInfo info) {
        riljLoge("No implementation in holdCallResponse");
    }

    public void imsBearerActivationDoneResponse(RadioResponseInfo info) {
        riljLoge("No implementation in imsBearerActivationDoneResponse");
    }

    public void imsBearerDeactivationDoneResponse(RadioResponseInfo info) {
        riljLoge("No implementation in imsBearerDeactivationDoneResponse");
    }

    public void setImsBearerNotificationResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsBearerNotificationResponse");
    }

    public void imsEctCommandResponse(RadioResponseInfo info) {
        riljLoge("No implementation in imsEctCommandResponse");
    }

    public void removeImsConferenceCallMemberResponse(RadioResponseInfo info) {
        riljLoge("No implementation in removeImsConferenceCallMemberResponse");
    }

    public void resumeCallResponse(RadioResponseInfo info) {
        riljLoge("No implementation in resumeCallResponse");
    }

    public void sendUssiResponse(RadioResponseInfo info) {
        riljLoge("No implementation in sendUssiResponse");
    }

    public void setCallIndicationResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCallIndicationResponse");
    }

    public void setEccServiceCategoryResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setEccServiceCategoryResponse");
    }

    @Override // vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsCallStatusResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsCallStatusResponse");
    }

    public void setImsEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsEnableResponse");
    }

    public void setImsRtpReportResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsRtpReportResponse");
    }

    public void setImsVideoEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsVideoEnableResponse");
    }

    public void setImsVoiceEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsVoiceEnableResponse");
    }

    public void setImscfgResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImscfgResponse");
    }

    public void setModemImsCfgResponse(RadioResponseInfo info, String results) {
        riljLoge("No implementation in setModemImsCfgResponse");
    }

    public void pullCallResponse(RadioResponseInfo info) {
        riljLoge("No implementation in pullCallResponse");
    }

    public void setProvisionValueResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setProvisionValueResponse");
    }

    public void setImsCfgFeatureValueResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsCfgFeatureValueResponse");
    }

    public void getImsCfgFeatureValueResponse(RadioResponseInfo info, int value) {
        riljLoge("No implementation in getImsCfgFeatureValueResponse");
    }

    public void setImsCfgProvisionValueResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsCfgProvisionValueResponse");
    }

    public void getImsCfgProvisionValueResponse(RadioResponseInfo info, String value) {
        riljLoge("No implementation in getImsCfgProvisionValueResponse");
    }

    public void setImsCfgResourceCapValueResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsCfgResourceCapValueResponse");
    }

    public void getImsCfgResourceCapValueResponse(RadioResponseInfo info, int value) {
        riljLoge("No implementation in getImsCfgResourceCapValueResponse");
    }

    public void setViWifiEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setViWifiEnableResponse");
    }

    public void setRcsUaEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setRcsUaEnableResponse");
    }

    public void setVilteEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setVilteEnableResponse");
    }

    public void setVolteEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setVolteEnableResponse");
    }

    public void setWfcEnableResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setWfcEnableResponse");
    }

    public void setWfcProfileResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setWfcProfileResponse");
    }

    @Override // vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void updateImsRegistrationStatusResponse(RadioResponseInfo info) {
        riljLoge("No implementation in updateImsRegistrationStatusResponse");
    }

    public void videoCallAcceptResponse(RadioResponseInfo info) {
        riljLoge("No implementation in videoCallAcceptResponse");
    }

    public void vtDialResponse(RadioResponseInfo info) {
        riljLoge("No implementation in vtDialResponse");
    }

    public void vtDialWithSipUriResponse(RadioResponseInfo info) {
        riljLoge("No implementation in vtDialWithSipUriResponse");
    }

    public void setImsRegistrationReportResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsRegistrationReportResponse");
    }

    public void setVoiceDomainPreferenceResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setImsVoiceDomainPreferenceResponse");
    }

    public void setClipResponse(RadioResponseInfo responseInfo) {
        riljLoge("No implementation in setClipResponse");
    }

    public void getColrResponse(RadioResponseInfo responseInfo, int status) {
        riljLoge("No implementation in getColrResponse");
    }

    public void setColrResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setColrResponse");
    }

    public void getColpResponse(RadioResponseInfo responseInfo, int n, int m) {
        riljLoge("No implementation in getColpResponse");
    }

    public void setColpResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setColpResponse");
    }

    public void queryCallForwardInTimeSlotStatusResponse(RadioResponseInfo info, ArrayList<CallForwardInfoEx> callForwardInfoExs) {
        riljLoge("No implementation in queryCallForwardInTimeSlotStatusResponse");
    }

    public void setCallForwardInTimeSlotResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCallForwardInTimeSlotResponse");
    }

    public void runGbaAuthenticationResponse(RadioResponseInfo info, ArrayList<String> resList) {
        riljLoge("No implementation in runGbaAuthenticationResponse");
    }

    @Override // android.hardware.radio.V1_1.IRadioResponse
    public void startNetworkScanResponse(RadioResponseInfo info) {
        riljLoge("No implementation in startNetworkScanResponse");
    }

    @Override // android.hardware.radio.V1_1.IRadioResponse
    public void stopKeepaliveResponse(RadioResponseInfo info) {
        riljLoge("No implementation in stopKeepaliveResponse");
    }

    @Override // android.hardware.radio.V1_1.IRadioResponse
    public void setCarrierInfoForImsiEncryptionResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setCarrierInfoForImsiEncryptionResponse");
    }

    @Override // android.hardware.radio.V1_1.IRadioResponse
    public void stopNetworkScanResponse(RadioResponseInfo info) {
        riljLoge("No implementation in stopNetworkScanResponse");
    }

    @Override // android.hardware.radio.V1_1.IRadioResponse
    public void setSimCardPowerResponse_1_1(RadioResponseInfo info) {
        riljLoge("No implementation in setSimCardPowerResponse_1_1");
    }

    @Override // android.hardware.radio.V1_1.IRadioResponse
    public void startKeepaliveResponse(RadioResponseInfo info, KeepaliveStatus status) {
        riljLoge("No implementation in startKeepaliveResponse");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void getSignalStrengthResponse_1_2(RadioResponseInfo info, android.hardware.radio.V1_2.SignalStrength signalStrength) {
        riljLoge("No implementation in getSignalStrengthResponse_1_2");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void getCurrentCallsResponse_1_2(RadioResponseInfo info, ArrayList<android.hardware.radio.V1_2.Call> calls) {
        riljLoge("No implementation in getCurrentCallsResponse_1_2");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void setLinkCapacityReportingCriteriaResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setLinkCapacityReportingCriteriaResponse");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void setSignalStrengthReportingCriteriaResponse(RadioResponseInfo info) {
        riljLoge("No implementation in setSignalStrengthReportingCriteriaResponse");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void getIccCardStatusResponse_1_2(RadioResponseInfo info, android.hardware.radio.V1_2.CardStatus cardStatus) {
        riljLoge("No implementation in getIccCardStatusResponse_1_2");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void getCellInfoListResponse_1_2(RadioResponseInfo info, ArrayList<android.hardware.radio.V1_2.CellInfo> cellInfo) {
        riljLoge("No implementation in getCellInfoListResponse_1_2");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void getDataRegistrationStateResponse_1_2(RadioResponseInfo info, android.hardware.radio.V1_2.DataRegStateResult dataRegResponse) {
        riljLoge("No implementation in getDataRegistrationStateResponse_1_2");
    }

    @Override // android.hardware.radio.V1_2.IRadioResponse
    public void getVoiceRegistrationStateResponse_1_2(RadioResponseInfo info, android.hardware.radio.V1_2.VoiceRegStateResult voiceRegStateResult) {
        riljLoge("No implementation in getVoiceRegistrationStateResponse_1_2");
    }

    protected void riljLoge(String msg) {
    }
}
