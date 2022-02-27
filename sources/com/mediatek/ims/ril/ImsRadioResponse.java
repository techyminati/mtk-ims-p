package com.mediatek.ims.ril;

import android.hardware.radio.V1_0.CallForwardInfo;
import android.hardware.radio.V1_0.LastCallFailCauseInfo;
import android.hardware.radio.V1_0.RadioResponseInfo;
import android.hardware.radio.V1_0.SendSmsResult;
import android.os.AsyncResult;
import android.os.Message;
import com.android.internal.telephony.LastCallFailCause;
import com.android.internal.telephony.SmsResponse;
import com.mediatek.internal.telephony.MtkCallForwardInfo;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;
import vendor.mediatek.hardware.radio.V3_0.CallForwardInfoEx;
/* loaded from: classes.dex */
public class ImsRadioResponse extends ImsRadioResponseBase {
    private int mPhoneId;
    private ImsRILAdapter mRil;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsRadioResponse(ImsRILAdapter ril, int phoneId) {
        this.mRil = ril;
        this.mPhoneId = phoneId;
        ImsRILAdapter imsRILAdapter = this.mRil;
        imsRILAdapter.riljLogv("ImsRadioResponse, phone = " + this.mPhoneId);
    }

    static void sendMessageResponse(Message msg, Object ret) {
        if (msg != null) {
            AsyncResult.forMessage(msg, ret, (Throwable) null);
            msg.sendToTarget();
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void getLastCallFailCauseResponse(RadioResponseInfo responseInfo, LastCallFailCauseInfo failCauseInfo) {
        responseFailCause(responseInfo, failCauseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void pullCallResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void acceptCallResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void conferenceResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void dialResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void exitEmergencyCallbackModeResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void explicitCallTransferResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void hangupConnectionResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void sendDtmfResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void setMuteResponse(RadioResponseInfo response) {
        responseVoid(response);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void startDtmfResponse(RadioResponseInfo responseInfo) {
        this.mRil.handleDtmfQueueNext(responseInfo.serial);
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void stopDtmfResponse(RadioResponseInfo info) {
        this.mRil.handleDtmfQueueNext(info.serial);
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void switchWaitingOrHoldingAndActiveResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    static void responseStringArrayList(ImsRILAdapter ril, RadioResponseInfo responseInfo, ArrayList<String> strings) {
        RILRequest rr = ril.processResponse(responseInfo);
        if (rr != null) {
            String[] ret = null;
            if (responseInfo.error == 0) {
                ret = new String[strings.size()];
                for (int i = 0; i < strings.size(); i++) {
                    ret[i] = strings.get(i);
                }
                sendMessageResponse(rr.mResult, ret);
            }
            ril.processResponseDone(rr, responseInfo, ret);
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void videoCallAcceptResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void imsEctCommandResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void holdCallResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void resumeCallResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setCallIndicationResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void imsDeregNotificationResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setVolteEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setWfcEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setVilteEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setViWifiEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setRcsUaEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsVoiceEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsVideoEnableResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImscfgResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setModemImsCfgResponse(RadioResponseInfo info, String results) {
        responseString(info, results);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void getProvisionValueResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setProvisionValueResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsCfgFeatureValueResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void getImsCfgFeatureValueResponse(RadioResponseInfo info, int value) {
        responseInts(info, value);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsCfgProvisionValueResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void getImsCfgProvisionValueResponse(RadioResponseInfo info, String value) {
        responseString(info, value);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsCfgResourceCapValueResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void getImsCfgResourceCapValueResponse(RadioResponseInfo info, int value) {
        responseInts(info, value);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void addImsConferenceCallMemberResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void removeImsConferenceCallMemberResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void hangupAllResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setWfcProfileResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void emergencyDialResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void conferenceDialResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setEccServiceCategoryResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void vtDialResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void vtDialWithSipUriResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void dialWithSipUriResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void sendUssiResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void cancelUssiResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void getXcapStatusResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void resetSuppServResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setupXcapUserAgentStringResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void forceReleaseCallResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void imsBearerActivationDoneResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void imsBearerDeactivationDoneResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsBearerNotificationResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsRtpReportResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setImsRegistrationReportResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void getFacilityLockForAppResponse(RadioResponseInfo info, int resp) {
        responseInts(info, resp);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void setFacilityLockForAppResponse(RadioResponseInfo info, int retry) {
        responseInts(info, retry);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void setCallForwardResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void getCallForwardStatusResponse(RadioResponseInfo info, ArrayList<CallForwardInfo> callForwardInfos) {
        responseCallForwardInfo(info, callForwardInfos);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void getCallWaitingResponse(RadioResponseInfo info, boolean enable, int serviceClass) {
        responseInts(info, enable ? 1 : 0, serviceClass);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void setCallWaitingResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void getClirResponse(RadioResponseInfo info, int n, int m) {
        responseInts(info, n, m);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setVoiceDomainPreferenceResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void setClirResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, android.hardware.radio.V1_0.IRadioResponse
    public void getClipResponse(RadioResponseInfo info, int status) {
        responseInts(info, status);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setClipResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void getColrResponse(RadioResponseInfo info, int status) {
        responseInts(info, status);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setColrResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void getColpResponse(RadioResponseInfo info, int n, int m) {
        responseInts(info, n, m);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setColpResponse(RadioResponseInfo info) {
        responseVoid(info);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void queryCallForwardInTimeSlotStatusResponse(RadioResponseInfo responseInfo, ArrayList<CallForwardInfoEx> callForwardInfoExs) {
        responseCallForwardInfoEx(responseInfo, callForwardInfoExs);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void setCallForwardInTimeSlotResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void runGbaAuthenticationResponse(RadioResponseInfo responseInfo, ArrayList<String> resList) {
        responseStringArrayList(this.mRil, responseInfo, resList);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase
    protected void riljLoge(String msg) {
        this.mRil.riljLoge(msg);
    }

    private void responseCallForwardInfo(RadioResponseInfo responseInfo, ArrayList<CallForwardInfo> callForwardInfos) {
        RILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            com.android.internal.telephony.CallForwardInfo[] ret = new com.android.internal.telephony.CallForwardInfo[callForwardInfos.size()];
            for (int i = 0; i < callForwardInfos.size(); i++) {
                ret[i] = new com.android.internal.telephony.CallForwardInfo();
                ret[i].status = callForwardInfos.get(i).status;
                ret[i].reason = callForwardInfos.get(i).reason;
                ret[i].serviceClass = callForwardInfos.get(i).serviceClass;
                ret[i].toa = callForwardInfos.get(i).toa;
                ret[i].number = callForwardInfos.get(i).number;
                ret[i].timeSeconds = callForwardInfos.get(i).timeSeconds;
            }
            int i2 = responseInfo.error;
            if (i2 == 0) {
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    private void responseCallForwardInfoEx(RadioResponseInfo responseInfo, ArrayList<CallForwardInfoEx> callForwardInfoExs) {
        RILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            MtkCallForwardInfo[] ret = new MtkCallForwardInfo[callForwardInfoExs.size()];
            for (int i = 0; i < callForwardInfoExs.size(); i++) {
                long[] timeSlot = new long[2];
                ret[i] = new MtkCallForwardInfo();
                ret[i].status = callForwardInfoExs.get(i).status;
                ret[i].reason = callForwardInfoExs.get(i).reason;
                ret[i].serviceClass = callForwardInfoExs.get(i).serviceClass;
                ret[i].toa = callForwardInfoExs.get(i).toa;
                ret[i].number = callForwardInfoExs.get(i).number;
                ret[i].timeSeconds = callForwardInfoExs.get(i).timeSeconds;
                String[] timeSlotStr = {callForwardInfoExs.get(i).timeSlotBegin, callForwardInfoExs.get(i).timeSlotEnd};
                if (timeSlotStr[0] == null || timeSlotStr[1] == null) {
                    ret[i].timeSlot = null;
                } else {
                    for (int j = 0; j < 2; j++) {
                        SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm");
                        dateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8"));
                        try {
                            Date date = dateFormat.parse(timeSlotStr[j]);
                            timeSlot[j] = date.getTime();
                        } catch (ParseException e) {
                            e.printStackTrace();
                            timeSlot = null;
                        }
                    }
                    ret[i].timeSlot = timeSlot;
                }
            }
            if (responseInfo.error == 0) {
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    private void responseVoid(RadioResponseInfo responseInfo) {
        RILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            if (responseInfo.error == 0) {
                sendMessageResponse(rr.mResult, null);
            }
            this.mRil.processResponseDone(rr, responseInfo, null);
        }
    }

    private void responseString(RadioResponseInfo responseInfo, String str) {
        RILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            String ret = null;
            if (responseInfo.error == 0) {
                ret = str;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    public void responseInts(RadioResponseInfo responseInfo, int... var) {
        ArrayList<Integer> ints = new ArrayList<>();
        for (int i : var) {
            ints.add(Integer.valueOf(i));
        }
        responseIntArrayList(responseInfo, ints);
    }

    public void responseIntArrayList(RadioResponseInfo responseInfo, ArrayList<Integer> var) {
        RILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            int[] ret = new int[var.size()];
            for (int i = 0; i < var.size(); i++) {
                ret[i] = var.get(i).intValue();
            }
            int i2 = responseInfo.error;
            if (i2 == 0) {
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    private void responseFailCause(RadioResponseInfo responseInfo, LastCallFailCauseInfo info) {
        RILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            LastCallFailCause failCause = null;
            if (responseInfo.error == 0) {
                failCause = new LastCallFailCause();
                failCause.causeCode = info.causeCode;
                failCause.vendorCause = info.vendorCause;
                sendMessageResponse(rr.mResult, failCause);
            }
            this.mRil.processResponseDone(rr, responseInfo, failCause);
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void sendImsSmsExResponse(RadioResponseInfo responseInfo, SendSmsResult sms) {
        RILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            SmsResponse ret = new SmsResponse(sms.messageRef, sms.ackPDU, sms.errorCode);
            if (responseInfo.error == 0) {
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void acknowledgeLastIncomingGsmSmsExResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // com.mediatek.ims.ril.ImsRadioResponseBase, vendor.mediatek.hardware.radio.V3_0.IImsRadioResponse
    public void acknowledgeLastIncomingCdmaSmsExResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }
}
