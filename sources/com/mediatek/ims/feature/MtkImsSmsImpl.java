package com.mediatek.ims.feature;

import android.annotation.SystemApi;
import android.content.Context;
import android.hardware.radio.V1_0.SmsAcknowledgeFailCause;
import android.os.Build;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.ims.stub.ImsSmsImplBase;
import com.android.internal.telephony.SmsMessageBase;
import com.android.internal.telephony.gsm.SmsMessage;
import com.android.internal.telephony.uicc.IccUtils;
import com.mediatek.ims.ImsService;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
@SystemApi
/* loaded from: classes.dex */
public class MtkImsSmsImpl extends ImsSmsImplBase {
    private static final String LOG_TAG = "MtkImsSmsImpl";
    private Context mContext;
    private static final boolean ENG = "eng".equals(Build.TYPE);
    private static HashMap<Integer, MtkImsSmsImpl> sMtkImsSmsImpltances = new HashMap<>();
    private ImsService mImsServiceImpl = null;
    private int mPhoneId = -1;
    private boolean mIsReady = false;
    private ConcurrentHashMap<Integer, Integer> mToken = new ConcurrentHashMap<>();
    private AtomicInteger mNextToken = new AtomicInteger();
    private ConcurrentHashMap<Integer, String> mInboundSmsFormat = new ConcurrentHashMap<>();

    public static MtkImsSmsImpl getInstance(Context context, int phoneId, ImsService service) {
        if (sMtkImsSmsImpltances.containsKey(Integer.valueOf(phoneId))) {
            MtkImsSmsImpl m = sMtkImsSmsImpltances.get(Integer.valueOf(phoneId));
            return m;
        }
        sMtkImsSmsImpltances.put(Integer.valueOf(phoneId), new MtkImsSmsImpl(context, phoneId, service));
        return sMtkImsSmsImpltances.get(Integer.valueOf(phoneId));
    }

    public MtkImsSmsImpl(Context context, int phoneId, ImsService service) {
        configure(context, phoneId, service);
    }

    public MtkImsSmsImpl(int phoneId) {
        configure(null, phoneId, null);
    }

    public void configure(Context context, int phoneId, ImsService service) {
        this.mImsServiceImpl = service;
        this.mPhoneId = phoneId;
        this.mContext = context;
        log("configure phone " + this.mPhoneId);
    }

    public void sendSms(int token, int messageRef, String format, String smsc, boolean isRetry, byte[] pdu) {
        if (this.mIsReady) {
            this.mImsServiceImpl.sendSms(this.mPhoneId, token, messageRef, format, smsc, isRetry, pdu);
            return;
        }
        throw new RuntimeException("onReady is not called yet");
    }

    public void sendSmsRsp(int token, int messageRef, int status, int reason) throws RuntimeException {
        log("sendSmsRsp toke=" + token + ",messageRef=" + messageRef + ",status=" + status + ",reason=" + reason);
        if (status == 1) {
            this.mToken.put(Integer.valueOf(messageRef), Integer.valueOf(token));
        }
        onSendSmsResult(token, messageRef, status, reason);
    }

    public void newStatusReportInd(byte[] pdu, String format) {
        SmsMessage smsMessage = null;
        if ("3gpp".equals(format)) {
            smsMessage = SmsMessage.newFromCDS(pdu);
        } else if ("3gpp2".equals(format)) {
            smsMessage = com.android.internal.telephony.cdma.SmsMessage.createFromPdu(pdu);
        }
        boolean mayAckHere = true;
        if (smsMessage != null) {
            int messageRef = ((SmsMessageBase) smsMessage).mMessageRef;
            int token = this.mToken.getOrDefault(Integer.valueOf(messageRef), -1).intValue();
            log("newStatusReportInd token=" + token + ", messageRef=" + messageRef + ", pdu: " + IccUtils.bytesToHexString(pdu));
            if (token >= 0) {
                mayAckHere = false;
                this.mInboundSmsFormat.put(Integer.valueOf(token), format);
                onSmsStatusReportReceived(token, messageRef, format, pdu);
            } else {
                loge("newStatusReportInd, token < 0, shouldn't be here");
            }
        } else {
            loge("newStatusReportInd, sms is null, shouldn't be here");
        }
        if (!mayAckHere) {
            return;
        }
        if ("3gpp".equals(format)) {
            this.mImsServiceImpl.acknowledgeLastIncomingGsmSms(this.mPhoneId, false, 1);
        } else if ("3gpp2".equals(format)) {
            this.mImsServiceImpl.acknowledgeLastIncomingCdmaSms(this.mPhoneId, false, 2);
        } else {
            loge("SMS format error.");
        }
    }

    public void newImsSmsInd(byte[] pdu, String format) {
        int token = this.mNextToken.incrementAndGet();
        this.mInboundSmsFormat.put(Integer.valueOf(token), format);
        onSmsReceived(token, format, pdu);
    }

    public void acknowledgeSmsReport(int token, int messageRef, int result) {
        if (this.mIsReady) {
            log("acknowledgeSmsReport toke=" + token + ",messageRef=" + messageRef + ",result=" + result);
            this.mToken.remove(Integer.valueOf(token), Integer.valueOf(messageRef));
            acknowledgeSms(token, messageRef, result);
            return;
        }
        throw new RuntimeException("onReady is not called yet");
    }

    public void acknowledgeSms(int token, int messageRef, int result) {
        if (this.mIsReady) {
            String format = this.mInboundSmsFormat.remove(Integer.valueOf(token));
            boolean ok = true;
            if (result != 1) {
                ok = false;
            }
            if ("3gpp".equals(format)) {
                int cause = resultToCauseForGsm(result);
                this.mImsServiceImpl.acknowledgeLastIncomingGsmSms(this.mPhoneId, ok, cause);
            } else if ("3gpp2".equals(format)) {
                int cause2 = resultToCauseForCdma(result);
                this.mImsServiceImpl.acknowledgeLastIncomingCdmaSms(this.mPhoneId, ok, cause2);
            } else {
                loge("SMS format error.");
            }
        } else {
            throw new RuntimeException("onReady is not called yet");
        }
    }

    public String getSmsFormat() {
        ServiceState ss;
        String smsFormat;
        if (this.mIsReady) {
            String smsFormat2 = SystemProperties.get("persist.vendor.radio.smsformat", MtkPhoneConstants.MVNO_TYPE_NONE);
            if (smsFormat2.equals("3gpp")) {
                return "3gpp";
            }
            if (smsFormat2.equals("3gpp2")) {
                return "3gpp2";
            }
            int[] subIds = SubscriptionManager.getSubId(this.mPhoneId);
            int subId = -1;
            if (subIds != null) {
                subId = subIds[0];
            }
            int dataNwType = -1;
            if (this.mContext != null) {
                ss = TelephonyManager.from(this.mContext).getServiceStateForSubscriber(subId);
            } else {
                ss = TelephonyManager.getDefault().getServiceStateForSubscriber(subId);
            }
            if (ss != null) {
                dataNwType = ss.getRilDataRadioTechnology();
            }
            if (ServiceState.isCdma(dataNwType)) {
                smsFormat = "3gpp2";
            } else {
                smsFormat = "3gpp";
            }
            log("getSmsFormat, phone=" + this.mPhoneId + ", subId=" + subId + ", type=" + dataNwType + ", smsFormat=" + smsFormat);
            return smsFormat;
        }
        throw new RuntimeException("onReady is not called yet");
    }

    public void onReady() {
        this.mIsReady = true;
        log("onReady");
    }

    private void log(String msg) {
        Rlog.d(LOG_TAG, "[" + this.mPhoneId + "] " + msg);
    }

    private void loge(String msg) {
        Rlog.e(LOG_TAG, "[" + this.mPhoneId + "] " + msg);
    }

    private static int resultToCauseForCdma(int rc) {
        if (rc == 1) {
            return 0;
        }
        switch (rc) {
            case 3:
                return 35;
            case 4:
                return 4;
            default:
                return 39;
        }
    }

    private static int resultToCauseForGsm(int rc) {
        if (rc == 1) {
            return 0;
        }
        if (rc != 3) {
            return 255;
        }
        return SmsAcknowledgeFailCause.MEMORY_CAPACITY_EXCEEDED;
    }
}
