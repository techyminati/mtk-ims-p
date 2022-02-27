package com.mediatek.ims;

import android.content.Context;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.telephony.ims.ImsReasonInfo;
import android.util.Log;
import com.android.internal.telephony.CommandException;
import com.mediatek.ims.feature.MtkImsUtImplBase;
import com.mediatek.ims.feature.MtkImsUtListener;
import com.mediatek.ims.internal.ImsXuiManager;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkCallForwardInfo;
import java.util.HashMap;
/* loaded from: classes.dex */
public class MtkImsUtImpl extends MtkImsUtImplBase {
    private static final boolean DBG = true;
    static final int IMS_UT_EVENT_GET_CF_TIME_SLOT = 1200;
    static final int IMS_UT_EVENT_SETUP_XCAP_USER_AGENT_STRING = 1203;
    static final int IMS_UT_EVENT_SET_CB_WITH_PWD = 1202;
    static final int IMS_UT_EVENT_SET_CF_TIME_SLOT = 1201;
    private static final String TAG = "MtkImsUtImpl";
    private Context mContext;
    private ResultHandler mHandler;
    private ImsCommandsInterface mImsRILAdapter;
    private ImsService mImsService;
    private ImsUtImpl mImsUtImpl;
    private MtkImsUtListener mListener = null;
    private int mPhoneId;
    private static HashMap<Integer, MtkImsUtImpl> sMtkImsUtImpls = new HashMap<>();
    private static final Object mLock = new Object();

    public static MtkImsUtImpl getInstance(Context context, int phoneId, ImsService service) {
        synchronized (sMtkImsUtImpls) {
            if (sMtkImsUtImpls.containsKey(Integer.valueOf(phoneId))) {
                MtkImsUtImpl m = sMtkImsUtImpls.get(Integer.valueOf(phoneId));
                return m;
            }
            sMtkImsUtImpls.put(Integer.valueOf(phoneId), new MtkImsUtImpl(context, phoneId, service));
            return sMtkImsUtImpls.get(Integer.valueOf(phoneId));
        }
    }

    public static MtkImsUtImpl getInstance(int phoneId) {
        synchronized (sMtkImsUtImpls) {
            if (!sMtkImsUtImpls.containsKey(Integer.valueOf(phoneId))) {
                return null;
            }
            MtkImsUtImpl m = sMtkImsUtImpls.get(Integer.valueOf(phoneId));
            return m;
        }
    }

    private MtkImsUtImpl(Context context, int phoneId, ImsService imsService) {
        this.mImsUtImpl = null;
        this.mImsService = null;
        this.mPhoneId = 0;
        this.mContext = context;
        this.mImsUtImpl = ImsUtImpl.getInstance(context, phoneId, imsService);
        HandlerThread thread = new HandlerThread("MtkImsUtImplResult");
        thread.start();
        Looper looper = thread.getLooper();
        this.mHandler = new ResultHandler(looper);
        this.mImsService = imsService;
        this.mImsRILAdapter = this.mImsService.getImsRILAdapter(phoneId);
        this.mPhoneId = phoneId;
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public void setListener(MtkImsUtListener listener) {
        this.mListener = listener;
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public String getUtIMPUFromNetwork() {
        Log.d(TAG, "getUtIMPUFromNetwork(): phoneId = " + this.mPhoneId);
        return ImsXuiManager.getInstance().getXui(this.mPhoneId);
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public void setupXcapUserAgentString(String userAgent) {
        if (userAgent != null) {
            Log.d(TAG, "setupXcapUserAgentString(): userAgent = " + userAgent);
            Message msg = this.mHandler.obtainMessage(1203);
            this.mImsRILAdapter.setupXcapUserAgentString(userAgent, msg);
            return;
        }
        Log.e(TAG, "setupXcapUserAgentString(): userAgent is null");
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public int queryCallForwardInTimeSlot(int condition) {
        int requestId;
        synchronized (mLock) {
            ImsUtImpl imsUtImpl = this.mImsUtImpl;
            requestId = ImsUtImpl.getAndIncreaseRequestId();
        }
        Log.d(TAG, "queryCallForwardInTimeSlot(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(IMS_UT_EVENT_GET_CF_TIME_SLOT, requestId, 0, null);
        this.mImsRILAdapter.queryCallForwardInTimeSlotStatus(this.mImsUtImpl.getCFReasonFromCondition(condition), 1, msg);
        return requestId;
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public int updateCallForwardInTimeSlot(int action, int condition, String number, int timeSeconds, long[] timeSlot) {
        int requestId;
        synchronized (mLock) {
            try {
                ImsUtImpl imsUtImpl = this.mImsUtImpl;
                requestId = ImsUtImpl.getAndIncreaseRequestId();
            } catch (Throwable th) {
                th = th;
                while (true) {
                    try {
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                throw th;
            }
        }
        Log.d(TAG, "updateCallForwardInTimeSlot(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1201, requestId, 0, null);
        this.mImsRILAdapter.setCallForwardInTimeSlot(this.mImsUtImpl.getCFActionFromAction(action), this.mImsUtImpl.getCFReasonFromCondition(condition), 1, number, timeSeconds, timeSlot, msg);
        return requestId;
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public boolean isSupportCFT() {
        return this.mImsService.isSupportCFT(this.mPhoneId);
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public int updateCallBarringForServiceClass(String password, int cbType, int enable, String[] barrList, int serviceClass) {
        int requestId;
        synchronized (mLock) {
            ImsUtImpl imsUtImpl = this.mImsUtImpl;
            requestId = ImsUtImpl.getAndIncreaseRequestId();
        }
        Log.d(TAG, "updateCallBarringForServiceClass(): requestId = " + requestId);
        boolean bEnable = enable == 1;
        String facility = getFacilityFromCBType(cbType);
        Message msg = this.mHandler.obtainMessage(1202, requestId, 0, null);
        this.mImsRILAdapter.setFacilityLock(facility, bEnable, password, serviceClass, msg);
        return requestId;
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public void explicitCallTransfer(Message result, Messenger target) {
        this.mImsService.explicitCallTransfer(this.mPhoneId, result, target);
    }

    @Override // com.mediatek.ims.feature.MtkImsUtImplBase
    public String getXcapConflictErrorMessage() {
        return this.mImsUtImpl.getXCAPErrorMessageFromSysProp(CommandException.Error.OEM_ERROR_1);
    }

    /* loaded from: classes.dex */
    private class ResultHandler extends Handler {
        public ResultHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ImsReasonInfo reason;
            ImsReasonInfo reason2;
            ImsReasonInfo reason3;
            Log.d(MtkImsUtImpl.TAG, "handleMessage(): event = " + msg.what + ", requestId = " + msg.arg1 + ", mListener=" + MtkImsUtImpl.this.mListener);
            SuppSrvConfig.getInstance(MtkImsUtImpl.this.mContext);
            switch (msg.what) {
                case MtkImsUtImpl.IMS_UT_EVENT_GET_CF_TIME_SLOT /* 1200 */:
                    if (MtkImsUtImpl.this.mListener != null) {
                        AsyncResult ar = (AsyncResult) msg.obj;
                        if (ar.exception == null) {
                            MtkCallForwardInfo[] cfInfo = (MtkCallForwardInfo[]) ar.result;
                            MtkImsCallForwardInfo[] imsCfInfo = null;
                            if (cfInfo != null) {
                                imsCfInfo = new MtkImsCallForwardInfo[cfInfo.length];
                                for (int i = 0; i < cfInfo.length; i++) {
                                    MtkImsCallForwardInfo info = new MtkImsCallForwardInfo();
                                    info.mCondition = MtkImsUtImpl.this.mImsUtImpl.getConditionFromCFReason(cfInfo[i].reason);
                                    info.mStatus = cfInfo[i].status;
                                    info.mServiceClass = cfInfo[i].serviceClass;
                                    info.mToA = cfInfo[i].toa;
                                    info.mNumber = cfInfo[i].number;
                                    info.mTimeSeconds = cfInfo[i].timeSeconds;
                                    info.mTimeSlot = cfInfo[i].timeSlot;
                                    imsCfInfo[i] = info;
                                }
                            }
                            MtkImsUtImpl.this.mListener.onUtConfigurationCallForwardInTimeSlotQueried(msg.arg1, imsCfInfo);
                            return;
                        }
                        if (ar.exception instanceof CommandException) {
                            reason = MtkImsUtImpl.this.mImsUtImpl.commandExceptionToReason((CommandException) ar.exception);
                        } else {
                            reason = new ImsReasonInfo(804, 0);
                        }
                        MtkImsUtImpl.this.mImsUtImpl.notifyUtConfigurationQueryFailed(msg, reason);
                        return;
                    }
                    return;
                case 1201:
                    if (MtkImsUtImpl.this.mListener != null) {
                        AsyncResult ar2 = (AsyncResult) msg.obj;
                        if (ar2.exception == null) {
                            Log.d(MtkImsUtImpl.TAG, "utConfigurationUpdated(): event = " + msg.what);
                            MtkImsUtImpl.this.mImsUtImpl.notifyUtConfigurationUpdated(msg);
                            return;
                        }
                        if (ar2.exception instanceof CommandException) {
                            reason2 = MtkImsUtImpl.this.mImsUtImpl.commandExceptionToReason((CommandException) ar2.exception);
                        } else {
                            reason2 = new ImsReasonInfo(804, 0);
                        }
                        MtkImsUtImpl.this.mImsUtImpl.notifyUtConfigurationUpdateFailed(msg, reason2);
                        return;
                    }
                    return;
                case 1202:
                    if (MtkImsUtImpl.this.mListener != null) {
                        AsyncResult ar3 = (AsyncResult) msg.obj;
                        if (ar3.exception == null) {
                            Log.d(MtkImsUtImpl.TAG, "utConfigurationUpdated(): event = " + msg.what);
                            MtkImsUtImpl.this.mImsUtImpl.notifyUtConfigurationUpdated(msg);
                            return;
                        }
                        if (ar3.exception instanceof CommandException) {
                            reason3 = MtkImsUtImpl.this.mImsUtImpl.commandExceptionToReason((CommandException) ar3.exception);
                        } else {
                            reason3 = new ImsReasonInfo(804, 0);
                        }
                        MtkImsUtImpl.this.mImsUtImpl.notifyUtConfigurationUpdateFailed(msg, reason3);
                        return;
                    }
                    return;
                case 1203:
                    if (MtkImsUtImpl.this.mListener == null) {
                        return;
                    }
                    if (((AsyncResult) msg.obj).exception == null) {
                        Log.d(MtkImsUtImpl.TAG, "Execute setupXcapUserAgentString succeed!event = " + msg.what);
                        return;
                    }
                    Log.e(MtkImsUtImpl.TAG, "Execute setupXcapUserAgentString failed!event = " + msg.what);
                    return;
                default:
                    Log.d(MtkImsUtImpl.TAG, "Unknown Event: " + msg.what);
                    return;
            }
        }
    }

    private String getFacilityFromCBType(int cbType) {
        switch (cbType) {
            case 1:
                return "AI";
            case 2:
                return "AO";
            case 3:
                return "OI";
            case 4:
                return "OX";
            case 5:
                return "IR";
            case 6:
                return "ACR";
            case 7:
                return "AB";
            case 8:
                return "AG";
            case 9:
                return "AC";
            case 10:
                return "BS_MT";
            default:
                return null;
        }
    }
}
