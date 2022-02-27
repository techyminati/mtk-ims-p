package com.mediatek.ims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncResult;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.telephony.ims.ImsCallForwardInfo;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsSsInfo;
import android.telephony.ims.ImsUtListener;
import android.telephony.ims.stub.ImsUtImplBase;
import android.util.Log;
import com.android.internal.telephony.CallForwardInfo;
import com.android.internal.telephony.CommandException;
import com.android.internal.telephony.PhoneConstants;
import com.mediatek.ims.OperatorUtils;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkCallForwardInfo;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class ImsUtImpl extends ImsUtImplBase {
    private static final boolean DBG = true;
    private static final int DEFAULT_INVALID_PHONE_ID = -1;
    private static final String ERROR_MSG_PROP_PREFIX = "vendor.gsm.radio.ss.errormsg.";
    static final int HTTP_ERROR_CODE_403 = 403;
    static final int HTTP_ERROR_CODE_404 = 404;
    static final int HTTP_ERROR_CODE_409 = 409;
    private static final int IMS_DEREG_CAUSE_BY_SS_CONFIG = 2;
    private static final String IMS_DEREG_DISABLE_PROP = "persist.vendor.radio.ss.imsdereg_off";
    private static final String IMS_DEREG_OFF = "0";
    private static final String IMS_DEREG_ON = "1";
    private static final String IMS_DEREG_PROP = "vendor.gsm.radio.ss.imsdereg";
    static final int IMS_UT_EVENT_GET_CB = 1000;
    static final int IMS_UT_EVENT_GET_CF = 1001;
    static final int IMS_UT_EVENT_GET_CF_TIME_SLOT = 1200;
    static final int IMS_UT_EVENT_GET_CLIP = 1004;
    static final int IMS_UT_EVENT_GET_CLIR = 1003;
    static final int IMS_UT_EVENT_GET_COLP = 1006;
    static final int IMS_UT_EVENT_GET_COLR = 1005;
    static final int IMS_UT_EVENT_GET_CW = 1002;
    static final int IMS_UT_EVENT_IMS_DEREG = 1016;
    static final int IMS_UT_EVENT_SET_CB = 1007;
    static final int IMS_UT_EVENT_SET_CF = 1008;
    static final int IMS_UT_EVENT_SET_CF_TIME_SLOT = 1201;
    static final int IMS_UT_EVENT_SET_CLIP = 1011;
    static final int IMS_UT_EVENT_SET_CLIR = 1010;
    static final int IMS_UT_EVENT_SET_COLP = 1013;
    static final int IMS_UT_EVENT_SET_COLR = 1012;
    static final int IMS_UT_EVENT_SET_CW = 1009;
    private static final boolean SDBG;
    private static final String SS_SERVICE_CLASS_PROP = "vendor.gsm.radio.ss.sc";
    private static final String TAG = "ImsUtImpl";
    static final int TIME_VALUE_HOUR_MAX = 23;
    static final int TIME_VALUE_MIN = 0;
    static final int TIME_VALUE_MINUTE_MAX = 59;
    private static final Object mLock;
    private static HashMap<Integer, ImsUtImpl> sImsUtImpls;
    private static int sRequestId;
    private Context mContext;
    private ResultHandler mHandler;
    private ImsCommandsInterface mImsRILAdapter;
    private ImsService mImsService;
    private int mPhoneId;
    private ImsUtListener mListener = null;
    private boolean mIsInVoLteCall = false;
    private boolean mIsNeedImsDereg = false;
    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.ImsUtImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.d(ImsUtImpl.TAG, "Intent action:" + intent.getAction());
            if (intent.getAction().equals("android.intent.action.SUBSCRIPTION_PHONE_STATE")) {
                String state = intent.getStringExtra("state");
                ImsUtImpl.this.onReceivePhoneStateChange(intent.getIntExtra("slot", -1), intent.getIntExtra(MtkPhoneConstants.PHONE_TYPE_KEY, 0), Enum.valueOf(PhoneConstants.State.class, state));
            }
        }
    };

    static {
        SDBG = SystemProperties.get("ro.build.type").equals("user") ? false : DBG;
        sImsUtImpls = new HashMap<>();
        mLock = new Object();
        sRequestId = 0;
    }

    public static ImsUtImpl getInstance(Context context, int phoneId, ImsService service) {
        synchronized (sImsUtImpls) {
            if (sImsUtImpls.containsKey(Integer.valueOf(phoneId))) {
                ImsUtImpl m = sImsUtImpls.get(Integer.valueOf(phoneId));
                return m;
            }
            sImsUtImpls.put(Integer.valueOf(phoneId), new ImsUtImpl(context, phoneId, service));
            return sImsUtImpls.get(Integer.valueOf(phoneId));
        }
    }

    private ImsUtImpl(Context context, int phoneId, ImsService imsService) {
        this.mImsService = null;
        this.mPhoneId = 0;
        this.mContext = context;
        HandlerThread thread = new HandlerThread("ImsUtImplResult");
        thread.start();
        Looper looper = thread.getLooper();
        this.mHandler = new ResultHandler(looper);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SUBSCRIPTION_PHONE_STATE");
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
        this.mImsService = imsService;
        this.mImsRILAdapter = this.mImsService.getImsRILAdapter(phoneId);
        this.mPhoneId = phoneId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReceivePhoneStateChange(int phoneId, int phoneType, PhoneConstants.State phoneState) {
        Log.d(TAG, "onReceivePhoneStateChange phoneId:" + phoneId + " phoneType: " + phoneType + " phoneState: " + phoneState + " mIsInVoLteCall: " + this.mIsInVoLteCall);
        if (phoneId == this.mPhoneId) {
            if (this.mIsInVoLteCall) {
                if (phoneState == PhoneConstants.State.IDLE) {
                    this.mIsInVoLteCall = false;
                    if (this.mIsNeedImsDereg) {
                        this.mHandler.sendMessage(this.mHandler.obtainMessage(IMS_UT_EVENT_IMS_DEREG, null));
                        this.mIsNeedImsDereg = false;
                    }
                }
            } else if (phoneState != PhoneConstants.State.IDLE && phoneType == 5) {
                this.mIsInVoLteCall = DBG;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ResultHandler extends Handler {
        public ResultHandler(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ImsReasonInfo reason;
            ImsReasonInfo reason2;
            ImsReasonInfo reason3;
            ImsReasonInfo reason4;
            ImsReasonInfo reason5;
            ImsReasonInfo reason6;
            ImsReasonInfo reason7;
            ImsReasonInfo reason8;
            Log.d(ImsUtImpl.TAG, "handleMessage(): event = " + msg.what + ", requestId = " + msg.arg1 + ", mListener=" + ImsUtImpl.this.mListener);
            SuppSrvConfig ssConfig = SuppSrvConfig.getInstance(ImsUtImpl.this.mContext);
            int i = msg.what;
            if (i != ImsUtImpl.IMS_UT_EVENT_IMS_DEREG) {
                int i2 = 0;
                switch (i) {
                    case 1000:
                        if (ImsUtImpl.this.mListener != null) {
                            AsyncResult ar = (AsyncResult) msg.obj;
                            if (ar.exception == null) {
                                int[] result = (int[]) ar.result;
                                ImsSsInfo[] info = {new ImsSsInfo()};
                                info[0].mStatus = result[0];
                                Log.d(ImsUtImpl.TAG, "IMS_UT_EVENT_GET_CB: status = " + result[0]);
                                ImsUtImpl.this.mListener.onUtConfigurationCallBarringQueried(msg.arg1, info);
                                return;
                            }
                            if (ar.exception instanceof CommandException) {
                                reason = ImsUtImpl.this.commandExceptionToReason((CommandException) ar.exception);
                            } else {
                                reason = new ImsReasonInfo(804, 0);
                            }
                            ImsUtImpl.this.mListener.onUtConfigurationQueryFailed(msg.arg1, reason);
                            return;
                        }
                        return;
                    case 1001:
                        if (ImsUtImpl.this.mListener != null) {
                            AsyncResult ar2 = (AsyncResult) msg.obj;
                            if (ar2.exception == null) {
                                CallForwardInfo[] cfInfo = (CallForwardInfo[]) ar2.result;
                                ImsCallForwardInfo[] imsCfInfo = null;
                                if (cfInfo != null) {
                                    imsCfInfo = new ImsCallForwardInfo[cfInfo.length];
                                    while (i2 < cfInfo.length) {
                                        Log.d(ImsUtImpl.TAG, "IMS_UT_EVENT_GET_CF: cfInfo[" + i2 + "] = " + cfInfo[i2]);
                                        imsCfInfo[i2] = ImsUtImpl.this.getImsCallForwardInfo(cfInfo[i2]);
                                        i2++;
                                    }
                                }
                                if (ssConfig.isNeedIMSDereg()) {
                                    boolean enable = "1".equals(SystemProperties.get(ImsUtImpl.IMS_DEREG_PROP, "0"));
                                    SystemProperties.set(ImsUtImpl.IMS_DEREG_PROP, "0");
                                    boolean disableIMSDereg = "1".equals(SystemProperties.get(ImsUtImpl.IMS_DEREG_DISABLE_PROP, "-1"));
                                    if (!enable || disableIMSDereg) {
                                        Log.d(ImsUtImpl.TAG, "Skip IMS dereg.");
                                    } else if (ImsUtImpl.this.mIsInVoLteCall) {
                                        Log.d(ImsUtImpl.TAG, "During call and later do IMS dereg");
                                        ImsUtImpl.this.mIsNeedImsDereg = ImsUtImpl.DBG;
                                    } else {
                                        Log.d(ImsUtImpl.TAG, "IMS dereg.");
                                        ImsUtImpl.this.mImsService.deregisterImsWithCause(ImsUtImpl.this.mPhoneId, 2);
                                    }
                                }
                                ImsUtImpl.this.mListener.onUtConfigurationCallForwardQueried(msg.arg1, imsCfInfo);
                                return;
                            }
                            if (ar2.exception instanceof CommandException) {
                                reason2 = ImsUtImpl.this.commandExceptionToReason((CommandException) ar2.exception);
                            } else {
                                reason2 = new ImsReasonInfo(804, 0);
                            }
                            ImsUtImpl.this.mListener.onUtConfigurationQueryFailed(msg.arg1, reason2);
                            return;
                        }
                        return;
                    case 1002:
                        if (ImsUtImpl.this.mListener != null) {
                            AsyncResult ar3 = (AsyncResult) msg.obj;
                            if (ar3.exception == null) {
                                int[] result2 = (int[]) ar3.result;
                                ImsSsInfo[] info2 = {new ImsSsInfo()};
                                info2[0].mStatus = result2[0];
                                Log.d(ImsUtImpl.TAG, "IMS_UT_EVENT_GET_CW: status = " + result2[0]);
                                ImsUtImpl.this.mListener.onUtConfigurationCallWaitingQueried(msg.arg1, info2);
                                return;
                            }
                            if (ar3.exception instanceof CommandException) {
                                reason3 = ImsUtImpl.this.commandExceptionToReason((CommandException) ar3.exception);
                            } else {
                                reason3 = new ImsReasonInfo(804, 0);
                            }
                            ImsUtImpl.this.mListener.onUtConfigurationQueryFailed(msg.arg1, reason3);
                            return;
                        }
                        return;
                    case 1003:
                        if (ImsUtImpl.this.mListener != null) {
                            AsyncResult ar4 = (AsyncResult) msg.obj;
                            if (ar4.exception == null) {
                                Bundle info3 = new Bundle();
                                info3.putIntArray("queryClir", (int[]) ar4.result);
                                ImsUtImpl.this.mListener.onUtConfigurationQueried(msg.arg1, info3);
                                return;
                            }
                            if (ar4.exception instanceof CommandException) {
                                reason4 = ImsUtImpl.this.commandExceptionToReason((CommandException) ar4.exception);
                            } else {
                                reason4 = new ImsReasonInfo(804, 0);
                            }
                            ImsUtImpl.this.mListener.onUtConfigurationQueryFailed(msg.arg1, reason4);
                            return;
                        }
                        return;
                    case 1004:
                    case 1005:
                    case 1006:
                        if (ImsUtImpl.this.mListener != null) {
                            AsyncResult ar5 = (AsyncResult) msg.obj;
                            if (ar5.exception == null) {
                                Parcelable imsSsInfo = new ImsSsInfo();
                                ((ImsSsInfo) imsSsInfo).mStatus = ((int[]) ar5.result)[0];
                                Bundle info4 = new Bundle();
                                info4.putParcelable("imsSsInfo", imsSsInfo);
                                ImsUtImpl.this.mListener.onUtConfigurationQueried(msg.arg1, info4);
                                return;
                            }
                            if (ar5.exception instanceof CommandException) {
                                reason5 = ImsUtImpl.this.commandExceptionToReason((CommandException) ar5.exception);
                            } else {
                                reason5 = new ImsReasonInfo(804, 0);
                            }
                            ImsUtImpl.this.mListener.onUtConfigurationQueryFailed(msg.arg1, reason5);
                            return;
                        }
                        return;
                    case 1007:
                    case 1008:
                        if (ImsUtImpl.this.mListener != null) {
                            AsyncResult ar6 = (AsyncResult) msg.obj;
                            if (ar6.exception != null || ar6.result == null) {
                                if (ar6.exception == null && (ssConfig.isNeedIMSDereg() || (ImsCommonUtil.supportMdAutoSetupIms() && OperatorUtils.isMatched(OperatorUtils.OPID.OP08, ImsUtImpl.this.mPhoneId)))) {
                                    boolean enable2 = "1".equals(SystemProperties.get(ImsUtImpl.IMS_DEREG_PROP, "0"));
                                    SystemProperties.set(ImsUtImpl.IMS_DEREG_PROP, "0");
                                    boolean disableIMSDereg2 = "1".equals(SystemProperties.get(ImsUtImpl.IMS_DEREG_DISABLE_PROP, "-1"));
                                    if (enable2 && !disableIMSDereg2) {
                                        if (!ImsUtImpl.this.mIsInVoLteCall) {
                                            Log.d(ImsUtImpl.TAG, "IMS dereg.");
                                            ImsUtImpl.this.mImsService.deregisterImsWithCause(ImsUtImpl.this.mPhoneId, 2);
                                            break;
                                        } else {
                                            Log.d(ImsUtImpl.TAG, "During call and later do IMS dereg");
                                            ImsUtImpl.this.mIsNeedImsDereg = ImsUtImpl.DBG;
                                            break;
                                        }
                                    } else {
                                        Log.d(ImsUtImpl.TAG, "Skip IMS dereg.");
                                        break;
                                    }
                                }
                            } else if (ar6.result instanceof CallForwardInfo[]) {
                                CallForwardInfo[] cfInfo2 = (CallForwardInfo[]) ar6.result;
                                ImsCallForwardInfo[] imsCfInfo2 = null;
                                if (!(cfInfo2 == null || cfInfo2.length == 0)) {
                                    imsCfInfo2 = new ImsCallForwardInfo[cfInfo2.length];
                                    while (i2 < cfInfo2.length) {
                                        Log.d(ImsUtImpl.TAG, "IMS_UT_EVENT_SET_CF: cfInfo[" + i2 + "] = " + cfInfo2[i2]);
                                        imsCfInfo2[i2] = ImsUtImpl.this.getImsCallForwardInfo(cfInfo2[i2]);
                                        i2++;
                                    }
                                }
                                ImsUtImpl.this.mListener.onUtConfigurationCallForwardQueried(msg.arg1, imsCfInfo2);
                                return;
                            }
                        }
                        break;
                    case 1009:
                    case 1010:
                    case 1011:
                    case 1012:
                    case 1013:
                        break;
                    default:
                        switch (i) {
                            case ImsUtImpl.IMS_UT_EVENT_GET_CF_TIME_SLOT /* 1200 */:
                                if (ImsUtImpl.this.mListener != null) {
                                    AsyncResult ar7 = (AsyncResult) msg.obj;
                                    if (ar7.exception == null) {
                                        MtkCallForwardInfo[] cfInfo3 = (MtkCallForwardInfo[]) ar7.result;
                                        ImsCallForwardInfo[] imsCfInfo3 = null;
                                        if (cfInfo3 != null) {
                                            imsCfInfo3 = new ImsCallForwardInfo[cfInfo3.length];
                                            while (i2 < cfInfo3.length) {
                                                ImsCallForwardInfo info5 = new ImsCallForwardInfo();
                                                info5.mCondition = ImsUtImpl.this.getConditionFromCFReason(cfInfo3[i2].reason);
                                                info5.mStatus = cfInfo3[i2].status;
                                                info5.mServiceClass = cfInfo3[i2].serviceClass;
                                                info5.mToA = cfInfo3[i2].toa;
                                                info5.mNumber = cfInfo3[i2].number;
                                                info5.mTimeSeconds = cfInfo3[i2].timeSeconds;
                                                imsCfInfo3[i2] = info5;
                                                i2++;
                                            }
                                        }
                                        if (ssConfig.isNeedIMSDereg()) {
                                            boolean enable3 = "1".equals(SystemProperties.get(ImsUtImpl.IMS_DEREG_PROP, "0"));
                                            SystemProperties.set(ImsUtImpl.IMS_DEREG_PROP, "0");
                                            boolean disableIMSDereg3 = "1".equals(SystemProperties.get(ImsUtImpl.IMS_DEREG_DISABLE_PROP, "-1"));
                                            if (!enable3 || disableIMSDereg3) {
                                                Log.d(ImsUtImpl.TAG, "Skip IMS dereg.");
                                            } else if (ImsUtImpl.this.mIsInVoLteCall) {
                                                Log.d(ImsUtImpl.TAG, "During call and later do IMS dereg");
                                                ImsUtImpl.this.mIsNeedImsDereg = ImsUtImpl.DBG;
                                            } else {
                                                Log.d(ImsUtImpl.TAG, "IMS dereg.");
                                                ImsUtImpl.this.mImsService.deregisterImsWithCause(ImsUtImpl.this.mPhoneId, 2);
                                            }
                                        }
                                        ImsUtImpl.this.mListener.onUtConfigurationCallForwardQueried(msg.arg1, imsCfInfo3);
                                        return;
                                    }
                                    if (ar7.exception instanceof CommandException) {
                                        reason7 = ImsUtImpl.this.commandExceptionToReason((CommandException) ar7.exception);
                                    } else {
                                        reason7 = new ImsReasonInfo(804, 0);
                                    }
                                    ImsUtImpl.this.mListener.onUtConfigurationQueryFailed(msg.arg1, reason7);
                                    return;
                                }
                                return;
                            case 1201:
                                if (ImsUtImpl.this.mListener != null) {
                                    AsyncResult ar8 = (AsyncResult) msg.obj;
                                    if (ar8.exception == null) {
                                        Log.d(ImsUtImpl.TAG, "utConfigurationUpdated(): event = " + msg.what);
                                        ImsUtImpl.this.notifyUtConfigurationUpdated(msg);
                                        return;
                                    }
                                    if (ar8.exception instanceof CommandException) {
                                        reason8 = ImsUtImpl.this.commandExceptionToReason((CommandException) ar8.exception);
                                    } else {
                                        reason8 = new ImsReasonInfo(804, 0);
                                    }
                                    ImsUtImpl.this.notifyUtConfigurationUpdateFailed(msg, reason8);
                                    return;
                                }
                                return;
                            default:
                                Log.d(ImsUtImpl.TAG, "Unknown Event: " + msg.what);
                                return;
                        }
                }
                if (ImsUtImpl.this.mListener != null) {
                    AsyncResult ar9 = (AsyncResult) msg.obj;
                    if (ar9.exception == null) {
                        Log.d(ImsUtImpl.TAG, "utConfigurationUpdated(): event = " + msg.what);
                        ImsUtImpl.this.mListener.onUtConfigurationUpdated(msg.arg1);
                        return;
                    }
                    if (ar9.exception instanceof CommandException) {
                        reason6 = ImsUtImpl.this.commandExceptionToReason((CommandException) ar9.exception);
                    } else {
                        reason6 = new ImsReasonInfo(804, 0);
                    }
                    ImsUtImpl.this.mListener.onUtConfigurationUpdateFailed(msg.arg1, reason6);
                    return;
                }
                return;
            }
            ImsUtImpl.this.mImsService.deregisterImsWithCause(ImsUtImpl.this.mPhoneId, 2);
        }
    }

    public void close() {
        this.mContext.unregisterReceiver(this.mIntentReceiver);
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

    public int getCFActionFromAction(int cfAction) {
        switch (cfAction) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
            default:
                return 0;
            case 3:
                return 3;
            case 4:
                return 4;
        }
    }

    public int getCFReasonFromCondition(int condition) {
        switch (condition) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            default:
                return 3;
        }
    }

    public int getConditionFromCFReason(int reason) {
        switch (reason) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsCallForwardInfo getImsCallForwardInfo(CallForwardInfo info) {
        ImsCallForwardInfo imsCfInfo = new ImsCallForwardInfo();
        imsCfInfo.mCondition = getConditionFromCFReason(info.reason);
        imsCfInfo.mStatus = info.status;
        imsCfInfo.mServiceClass = info.serviceClass;
        imsCfInfo.mToA = info.toa;
        imsCfInfo.mNumber = info.number;
        imsCfInfo.mTimeSeconds = info.timeSeconds;
        return imsCfInfo;
    }

    public int queryCallBarring(int cbType) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCallBarring(): requestId = " + requestId);
        String facility = getFacilityFromCBType(cbType);
        int serviceClass = getServiceClass() != -1 ? getServiceClass() : 0;
        Message msg = this.mHandler.obtainMessage(1000, requestId, 0, null);
        this.mImsRILAdapter.queryFacilityLock(facility, null, serviceClass, msg);
        resetServcieClass();
        return requestId;
    }

    public int queryCallBarringForServiceClass(int cbType, int serviceClass) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCallBarringForServiceClass(): requestId = " + requestId);
        String facility = getFacilityFromCBType(cbType);
        Message msg = this.mHandler.obtainMessage(1000, requestId, 0, null);
        this.mImsRILAdapter.queryFacilityLock(facility, null, serviceClass, msg);
        resetServcieClass();
        return requestId;
    }

    public int queryCallForward(int condition, String number) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCallForward(): requestId = " + requestId);
        int serviceClass = getServiceClass() != -1 ? getServiceClass() : 0;
        Message msg = this.mHandler.obtainMessage(1001, requestId, 0, null);
        this.mImsRILAdapter.queryCallForwardStatus(getCFReasonFromCondition(condition), serviceClass, number, msg);
        resetServcieClass();
        return requestId;
    }

    public int queryCallWaiting() {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCallWaiting(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1002, requestId, 0, null);
        this.mImsRILAdapter.queryCallWaiting(1, msg);
        return requestId;
    }

    public int queryCLIR() {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCLIR(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1003, requestId, 0, null);
        this.mImsRILAdapter.getCLIR(msg);
        return requestId;
    }

    public int queryCLIP() {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCLIP(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1004, requestId, 0, null);
        this.mImsRILAdapter.queryCLIP(msg);
        return requestId;
    }

    public int queryCOLR() {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCOLR(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1005, requestId, 0, null);
        this.mImsRILAdapter.getCOLR(msg);
        return requestId;
    }

    public int queryCOLP() {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "queryCOLP(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1006, requestId, 0, null);
        this.mImsRILAdapter.getCOLP(msg);
        return requestId;
    }

    public int transact(Bundle ssInfo) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        return requestId;
    }

    public String convertSpecialCharacters(String number) {
        if (number == null) {
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        String r = number.replace("*", "^").replace("#", "|");
        if (SDBG) {
            Log.d(TAG, "convertSpecialCharacters: number=" + number + ", r=" + r);
        }
        return r;
    }

    public int updateCallBarring(int cbType, int enable, String[] barrList) {
        int requestId;
        int serviceClass;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "updateCallBarring(): requestId = " + requestId);
        boolean bEnable = enable == 1;
        String facility = getFacilityFromCBType(cbType);
        if (getServiceClass() != -1) {
            serviceClass = getServiceClass();
        } else {
            serviceClass = 0;
        }
        Message msg = this.mHandler.obtainMessage(1007, requestId, 0, null);
        this.mImsRILAdapter.setFacilityLock(facility, bEnable, MtkPhoneConstants.MVNO_TYPE_NONE, serviceClass, msg);
        resetServcieClass();
        return requestId;
    }

    public int updateCallBarringForServiceClass(int cbType, int enable, String[] barrList, int serviceClass) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "updateCallBarringForServiceClass(): requestId = " + requestId);
        boolean bEnable = enable == 1;
        String facility = getFacilityFromCBType(cbType);
        Message msg = this.mHandler.obtainMessage(1007, requestId, 0, null);
        this.mImsRILAdapter.setFacilityLock(facility, bEnable, MtkPhoneConstants.MVNO_TYPE_NONE, serviceClass, msg);
        return requestId;
    }

    public int updateCallForward(int action, int condition, String number, int serviceClass, int timeSeconds) {
        int requestId;
        synchronized (mLock) {
            try {
                requestId = sRequestId;
                sRequestId++;
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
        Log.d(TAG, "updateCallForward(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1008, requestId, 0, null);
        this.mImsRILAdapter.setCallForward(getCFActionFromAction(action), getCFReasonFromCondition(condition), serviceClass, convertSpecialCharacters(number), timeSeconds, msg);
        return requestId;
    }

    public int updateCallWaiting(boolean enable, int serviceClass) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "updateCallWaiting(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1009, requestId, 0, null);
        this.mImsRILAdapter.setCallWaiting(enable, serviceClass, msg);
        return requestId;
    }

    public int updateCLIR(int clirMode) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "updateCLIR(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1010, requestId, 0, null);
        this.mImsRILAdapter.setCLIR(clirMode, msg);
        return requestId;
    }

    public int updateCLIP(boolean enable) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "updateCLIP(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1011, requestId, 0, null);
        this.mImsRILAdapter.setCLIP(enable ? 1 : 0, msg);
        return requestId;
    }

    public int updateCOLR(int presentation) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "updateCOLR(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1012, requestId, 0, null);
        this.mImsRILAdapter.setCOLR(presentation, msg);
        return requestId;
    }

    public int updateCOLP(boolean enable) {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        Log.d(TAG, "updateCOLP(): requestId = " + requestId);
        Message msg = this.mHandler.obtainMessage(1013, requestId, 0, null);
        this.mImsRILAdapter.setCOLP(enable ? 1 : 0, msg);
        return requestId;
    }

    public void setListener(ImsUtListener listener) {
        this.mListener = listener;
    }

    public ImsReasonInfo commandExceptionToReason(CommandException commandException) {
        CommandException.Error err = commandException.getCommandError();
        Log.d(TAG, "commandException: " + err);
        if (err == CommandException.Error.OEM_ERROR_2) {
            ImsReasonInfo reason = new ImsReasonInfo(61446, 0);
            return reason;
        } else if (err == CommandException.Error.OEM_ERROR_4) {
            ImsReasonInfo reason2 = new ImsReasonInfo(61448, 0);
            return reason2;
        } else if (err == CommandException.Error.OEM_ERROR_1) {
            ImsReasonInfo reason3 = new ImsReasonInfo(61449, 0, getXCAPErrorMessageFromSysProp(CommandException.Error.OEM_ERROR_1));
            return reason3;
        } else if (err == CommandException.Error.OEM_ERROR_7) {
            ImsReasonInfo reason4 = new ImsReasonInfo(61450, 0);
            return reason4;
        } else if (err == CommandException.Error.REQUEST_NOT_SUPPORTED) {
            ImsReasonInfo reason5 = new ImsReasonInfo(801, 0);
            return reason5;
        } else if (err == CommandException.Error.RADIO_NOT_AVAILABLE) {
            ImsReasonInfo reason6 = new ImsReasonInfo(802, 0);
            return reason6;
        } else if (err == CommandException.Error.PASSWORD_INCORRECT) {
            ImsReasonInfo reason7 = new ImsReasonInfo(821, 0);
            return reason7;
        } else {
            ImsReasonInfo reason8 = new ImsReasonInfo(804, 0);
            return reason8;
        }
    }

    public String getXCAPErrorMessageFromSysProp(CommandException.Error error) {
        String propNamePrefix = ERROR_MSG_PROP_PREFIX + this.mPhoneId;
        String fullErrorMsg = MtkPhoneConstants.MVNO_TYPE_NONE;
        int idx = 0;
        String propName = propNamePrefix + ".0";
        String propValue = SystemProperties.get(propName, MtkPhoneConstants.MVNO_TYPE_NONE);
        while (!propValue.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
            fullErrorMsg = fullErrorMsg + propValue;
            idx++;
            String propName2 = propNamePrefix + "." + idx;
            propValue = SystemProperties.get(propName2, MtkPhoneConstants.MVNO_TYPE_NONE);
        }
        Log.d(TAG, "fullErrorMsg: " + fullErrorMsg);
        if (AnonymousClass2.$SwitchMap$com$android$internal$telephony$CommandException$Error[error.ordinal()] != 1) {
            Log.d(TAG, "errorMsg: " + ((String) null));
            return null;
        } else if (!fullErrorMsg.startsWith("409")) {
            Log.d(TAG, "errorMsg: " + ((String) null));
            return null;
        } else {
            String errorMsg = fullErrorMsg.substring("409".length() + 1);
            Log.d(TAG, "errorMsg: " + errorMsg);
            return errorMsg;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mediatek.ims.ImsUtImpl$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$android$internal$telephony$CommandException$Error = new int[CommandException.Error.values().length];

        static {
            try {
                $SwitchMap$com$android$internal$telephony$CommandException$Error[CommandException.Error.OEM_ERROR_1.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public static int getAndIncreaseRequestId() {
        int requestId;
        synchronized (mLock) {
            requestId = sRequestId;
            sRequestId++;
        }
        return requestId;
    }

    private static int getServiceClass() {
        return Integer.parseInt(SystemProperties.get("vendor.gsm.radio.ss.sc", "-1"));
    }

    private static void resetServcieClass() {
        SystemProperties.set("vendor.gsm.radio.ss.sc", "-1");
    }

    public void notifyUtConfigurationUpdated(Message msg) {
        this.mListener.onUtConfigurationUpdated(msg.arg1);
    }

    public void notifyUtConfigurationUpdateFailed(Message msg, ImsReasonInfo error) {
        this.mListener.onUtConfigurationUpdateFailed(msg.arg1, error);
    }

    public void notifyUtConfigurationQueried(Message msg, Bundle ssInfo) {
        this.mListener.onUtConfigurationQueried(msg.arg1, ssInfo);
    }

    public void notifyUtConfigurationQueryFailed(Message msg, ImsReasonInfo error) {
        this.mListener.onUtConfigurationQueryFailed(msg.arg1, error);
    }

    private long[] convertToTimeSlotArray(String timeSlotString) {
        long[] timeSlot = null;
        if (timeSlotString != null) {
            String[] timeArray = timeSlotString.split(",", 2);
            if (timeArray.length == 2) {
                timeSlot = new long[2];
                for (int i = 0; i < 2; i++) {
                    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm");
                    dateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8"));
                    try {
                        Date date = dateFormat.parse(timeArray[i]);
                        timeSlot[i] = date.getTime();
                    } catch (ParseException e) {
                        e.printStackTrace();
                        return null;
                    }
                }
            }
        }
        return timeSlot;
    }

    public int updateCallForwardUncondTimer(int startHour, int startMinute, int endHour, int endMinute, int action, int condition, String number) {
        int requestId;
        if (startHour == 0 && startMinute == 0 && endHour == 0 && endMinute == 0) {
            Log.i(TAG, "updateCallForwardUncondTimer(): Time is all zero! use updateCallForward");
            return updateCallForward(action, condition, number, 1, 0);
        }
        synchronized (mLock) {
            try {
                requestId = sRequestId;
                sRequestId++;
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
        Log.d(TAG, "updateCallForwardUncondTimer(): requestId = " + requestId);
        if (startHour < 0 || startHour > 23 || startMinute < 0 || startMinute > 59 || endHour < 0 || endHour > 23 || endMinute < 0 || endMinute > 59) {
            Log.e(TAG, "updateCallForwardUncondTimer(): Time is wrong! ");
        }
        String timer = String.format("%02d:%02d,%02d:%02d", Integer.valueOf(startHour), Integer.valueOf(startMinute), Integer.valueOf(endHour), Integer.valueOf(endMinute));
        Message msg = this.mHandler.obtainMessage(1201, requestId, 0, null);
        this.mImsRILAdapter.setCallForwardInTimeSlot(getCFActionFromAction(action), getCFReasonFromCondition(condition), 1, number, 0, convertToTimeSlotArray(timer), msg);
        return requestId;
    }
}
