package com.mediatek.ims.ril;

import android.content.Context;
import android.hardware.radio.V1_0.CallForwardInfo;
import android.hardware.radio.V1_0.CdmaSmsAck;
import android.hardware.radio.V1_0.CdmaSmsMessage;
import android.hardware.radio.V1_0.CdmaSmsSubaddress;
import android.hardware.radio.V1_0.Dial;
import android.hardware.radio.V1_0.GsmSmsMessage;
import android.hardware.radio.V1_0.ImsSmsMessage;
import android.hardware.radio.V1_0.NvItem;
import android.hardware.radio.V1_0.RadioResponseInfo;
import android.hardware.radio.V1_0.UusInfo;
import android.net.ConnectivityManager;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.WorkSource;
import android.telephony.ModemActivityInfo;
import android.telephony.PhoneNumberUtils;
import android.telephony.Rlog;
import android.telephony.TelephonyHistogram;
import android.util.SparseArray;
import com.android.internal.telephony.ClientWakelockTracker;
import com.android.internal.telephony.CommandException;
import com.android.internal.telephony.UUSInfo;
import com.android.internal.telephony.metrics.TelephonyMetrics;
import com.android.internal.telephony.uicc.IccUtils;
import com.mediatek.ims.ImsCallInfo;
import com.mediatek.ims.ImsCallSessionProxy;
import com.mediatek.ims.ImsServiceCallTracker;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ExtensionPluginFactory;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.MtkRILConstants;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.TimeZone;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import vendor.mediatek.hardware.radio.V3_0.CallForwardInfoEx;
import vendor.mediatek.hardware.radio.V3_0.ConferenceDial;
import vendor.mediatek.hardware.radio.V3_0.IRadio;
/* loaded from: classes.dex */
public final class ImsRILAdapter extends ImsBaseCommands implements ImsCommandsInterface {
    private static final int DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS = 200;
    private static final int DEFAULT_WAKE_LOCK_TIMEOUT_MS = 60000;
    static final int EVENT_ACK_WAKE_LOCK_TIMEOUT = 4;
    static final int EVENT_BLOCKING_RESPONSE_TIMEOUT = 5;
    static final int EVENT_RADIO_PROXY_DEAD = 6;
    static final int EVENT_SEND = 1;
    static final int EVENT_WAKE_LOCK_TIMEOUT = 2;
    public static final int FOR_ACK_WAKELOCK = 1;
    public static final int FOR_WAKELOCK = 0;
    static final boolean IMSRIL_LOGD = true;
    static final boolean IMSRIL_LOGV = false;
    static final String IMSRIL_LOG_TAG = "IMS_RILA";
    static final boolean IMS_RILA_LOGD = true;
    public static final int INVALID_WAKELOCK = -1;
    static final int IRADIO_GET_SERVICE_DELAY_MILLIS = 4000;
    static final String PROPERTY_WAKE_LOCK_TIMEOUT = "ro.ril.wake_lock_timeout";
    static final String RILJ_ACK_WAKELOCK_NAME = "IMSRIL_ACK_WL";
    static final int RIL_HISTOGRAM_BUCKET_COUNT = 5;
    final PowerManager.WakeLock mAckWakeLock;
    private WorkSource mActiveWakelockWorkSource;
    Context mContext;
    boolean mIsMobileNetworkSupported;
    Object[] mLastNITZTimeInfo;
    private OpImsCommandsInterface mOpCI;
    final Integer mPhoneId;
    private WorkSource mRILDefaultWorkSource;
    ImsRadioIndication mRadioIndication;
    ImsRadioResponse mRadioResponse;
    final PowerManager.WakeLock mWakeLock;
    static SparseArray<TelephonyHistogram> mRilTimeHistograms = new SparseArray<>();
    static final String[] IMS_HIDL_SERVICE_NAME = {"imsrild1", "imsrild2", "imsrild3", "imsrild4"};
    private final ClientWakelockTracker mClientWakelockTracker = new ClientWakelockTracker();
    volatile int mWlSequenceNum = 0;
    volatile int mAckWlSequenceNum = 0;
    SparseArray<RILRequest> mRequestList = new SparseArray<>();
    AtomicBoolean mTestingEmergencyCall = new AtomicBoolean(false);
    private TelephonyMetrics mMetrics = TelephonyMetrics.getInstance();
    private DtmfQueueHandler mDtmfReqQueue = new DtmfQueueHandler();
    volatile IRadio mRadioProxy = null;
    final AtomicLong mRadioProxyCookie = new AtomicLong(0);
    final RilHandler mRilHandler = new RilHandler();
    final RadioProxyDeathRecipient mRadioProxyDeathRecipient = new RadioProxyDeathRecipient();
    final int mWakeLockTimeout = SystemProperties.getInt(PROPERTY_WAKE_LOCK_TIMEOUT, 60000);
    final int mAckWakeLockTimeout = SystemProperties.getInt(PROPERTY_WAKE_LOCK_TIMEOUT, 200);
    int mWakeLockCount = 0;

    public static List<TelephonyHistogram> getTelephonyRILTimingHistograms() {
        List<TelephonyHistogram> list;
        synchronized (mRilTimeHistograms) {
            list = new ArrayList<>(mRilTimeHistograms.size());
            for (int i = 0; i < mRilTimeHistograms.size(); i++) {
                TelephonyHistogram entry = new TelephonyHistogram(mRilTimeHistograms.valueAt(i));
                list.add(entry);
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class DtmfQueueHandler {
        private boolean mDtmfStatus;
        public final int MAXIMUM_DTMF_REQUEST = 32;
        private final boolean DTMF_STATUS_START = true;
        private final boolean DTMF_STATUS_STOP = false;
        private Vector<DtmfQueueRR> mDtmfQueue = new Vector<>(32);
        private DtmfQueueRR mPendingCHLDRequest = null;
        private boolean mIsSendChldRequest = false;

        /* loaded from: classes.dex */
        public class DtmfQueueRR {
            public Object[] params;
            public RILRequest rr;

            public DtmfQueueRR(RILRequest rr, Object[] params) {
                this.rr = rr;
                this.params = params;
            }
        }

        public DtmfQueueHandler() {
            this.mDtmfStatus = false;
            this.mDtmfStatus = false;
        }

        public void start() {
            this.mDtmfStatus = true;
        }

        public void stop() {
            this.mDtmfStatus = false;
        }

        public boolean isStart() {
            return this.mDtmfStatus;
        }

        public void add(DtmfQueueRR o) {
            this.mDtmfQueue.addElement(o);
        }

        public void remove(DtmfQueueRR o) {
            this.mDtmfQueue.remove(o);
        }

        public void remove(int idx) {
            this.mDtmfQueue.removeElementAt(idx);
        }

        public DtmfQueueRR get() {
            return this.mDtmfQueue.get(0);
        }

        public int size() {
            return this.mDtmfQueue.size();
        }

        public void setPendingRequest(DtmfQueueRR r) {
            this.mPendingCHLDRequest = r;
        }

        public DtmfQueueRR getPendingRequest() {
            return this.mPendingCHLDRequest;
        }

        public void setSendChldRequest() {
            this.mIsSendChldRequest = true;
        }

        public void resetSendChldRequest() {
            this.mIsSendChldRequest = false;
        }

        public boolean hasSendChldRequest() {
            ImsRILAdapter imsRILAdapter = ImsRILAdapter.this;
            imsRILAdapter.riljLog("mIsSendChldRequest = " + this.mIsSendChldRequest);
            return this.mIsSendChldRequest;
        }

        public DtmfQueueRR buildDtmfQueueRR(RILRequest rr, Object[] param) {
            if (rr == null) {
                return null;
            }
            ImsRILAdapter imsRILAdapter = ImsRILAdapter.this;
            imsRILAdapter.riljLog("DtmfQueueHandler.buildDtmfQueueRR build ([" + rr.mSerial + "] reqId=" + rr.mRequest + ")");
            return new DtmfQueueRR(rr, param);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class RilHandler extends Handler {
        RilHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i != 2) {
                switch (i) {
                    case 4:
                        int serial = msg.arg1;
                        if (serial == ImsRILAdapter.this.mAckWlSequenceNum) {
                            ImsRILAdapter.this.clearWakeLock(1);
                            return;
                        }
                        return;
                    case 5:
                        int serial2 = msg.arg1;
                        RILRequest rr = ImsRILAdapter.this.findAndRemoveRequestFromList(serial2);
                        if (rr != null) {
                            if (rr.mResult != null) {
                                Object timeoutResponse = ImsRILAdapter.getResponseForTimedOutRILRequest(rr);
                                AsyncResult.forMessage(rr.mResult, timeoutResponse, (Throwable) null);
                                rr.mResult.sendToTarget();
                                ImsRILAdapter.this.mMetrics.writeOnRilTimeoutResponse(ImsRILAdapter.this.mPhoneId.intValue(), rr.mSerial, rr.mRequest);
                            }
                            ImsRILAdapter.this.decrementWakeLock(rr);
                            rr.release();
                            return;
                        }
                        return;
                    case 6:
                        ImsRILAdapter imsRILAdapter = ImsRILAdapter.this;
                        imsRILAdapter.riljLog("handleMessage: EVENT_RADIO_PROXY_DEAD cookie = " + msg.obj + " mRadioProxyCookie = " + ImsRILAdapter.this.mRadioProxyCookie.get());
                        if (((Long) msg.obj).longValue() == ImsRILAdapter.this.mRadioProxyCookie.get()) {
                            ImsRILAdapter.this.resetProxyAndRequestList();
                            ImsRILAdapter.this.getRadioProxy(null);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            } else {
                synchronized (ImsRILAdapter.this.mRequestList) {
                    if (msg.arg1 == ImsRILAdapter.this.mWlSequenceNum) {
                        if (ImsRILAdapter.this.clearWakeLock(0)) {
                            int count = ImsRILAdapter.this.mRequestList.size();
                            Rlog.d(ImsRILAdapter.IMSRIL_LOG_TAG, "WAKE_LOCK_TIMEOUT  mRequestList=" + count);
                            for (int i2 = 0; i2 < count; i2++) {
                                RILRequest rr2 = ImsRILAdapter.this.mRequestList.valueAt(i2);
                                Rlog.d(ImsRILAdapter.IMSRIL_LOG_TAG, i2 + ": [" + rr2.mSerial + "] " + ImsRILAdapter.requestToString(rr2.mRequest));
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getResponseForTimedOutRILRequest(RILRequest rr) {
        if (rr == null || rr.mRequest != 135) {
            return null;
        }
        Object timeoutResponse = new ModemActivityInfo(0L, 0, 0, new int[5], 0, 0);
        return timeoutResponse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class RadioProxyDeathRecipient implements IHwBinder.DeathRecipient {
        RadioProxyDeathRecipient() {
        }

        @Override // android.os.IHwBinder.DeathRecipient
        public void serviceDied(long cookie) {
            ImsRILAdapter.this.riljLog("serviceDied");
            ImsRILAdapter.this.mRilHandler.sendMessageDelayed(ImsRILAdapter.this.mRilHandler.obtainMessage(6, Long.valueOf(cookie)), 4000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetProxyAndRequestList() {
        this.mRadioProxy = null;
        this.mRadioProxyCookie.incrementAndGet();
        setRadioState(ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE);
        RILRequest.resetSerial();
        clearRequestList(1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IRadio getRadioProxy(Message result) {
        if (!this.mIsMobileNetworkSupported) {
            return null;
        }
        if (this.mRadioProxy != null) {
            return this.mRadioProxy;
        }
        try {
            this.mRadioProxy = IRadio.getService(IMS_HIDL_SERVICE_NAME[this.mPhoneId == null ? 0 : this.mPhoneId.intValue()]);
            if (this.mRadioProxy != null) {
                this.mRadioProxy.linkToDeath(this.mRadioProxyDeathRecipient, this.mRadioProxyCookie.incrementAndGet());
                this.mRadioProxy.setResponseFunctionsIms(this.mRadioResponse, this.mRadioIndication);
                this.mRadioProxy.setResponseFunctions(this.mRadioResponse, this.mRadioIndication);
                if (this.mDtmfReqQueue != null) {
                    synchronized (this.mDtmfReqQueue) {
                        riljLog("queue size  " + this.mDtmfReqQueue.size());
                        for (int i = this.mDtmfReqQueue.size() - 1; i >= 0; i--) {
                            this.mDtmfReqQueue.remove(i);
                        }
                        riljLog("queue size  after " + this.mDtmfReqQueue.size());
                        if (this.mDtmfReqQueue.getPendingRequest() != null) {
                            riljLog("reset pending switch request");
                            DtmfQueueHandler.DtmfQueueRR pendingDqrr = this.mDtmfReqQueue.getPendingRequest();
                            RILRequest pendingRequest = pendingDqrr.rr;
                            if (pendingRequest.mResult != null) {
                                AsyncResult.forMessage(pendingRequest.mResult, (Object) null, (Throwable) null);
                                pendingRequest.mResult.sendToTarget();
                            }
                            this.mDtmfReqQueue.resetSendChldRequest();
                            this.mDtmfReqQueue.setPendingRequest(null);
                        }
                    }
                }
            } else {
                riljLoge("getRadioProxy: mRadioProxy == null");
            }
        } catch (RemoteException | RuntimeException e) {
            this.mRadioProxy = null;
            riljLoge("RadioProxy getService/setResponseFunctions: " + e);
        }
        if (this.mRadioProxy == null) {
            if (result != null) {
                AsyncResult.forMessage(result, (Object) null, CommandException.fromRilErrno(1));
                result.sendToTarget();
            }
            this.mRilHandler.sendMessageDelayed(this.mRilHandler.obtainMessage(6, Long.valueOf(this.mRadioProxyCookie.incrementAndGet())), 4000L);
        }
        return this.mRadioProxy;
    }

    public ImsRILAdapter(Context context, int instanceId) {
        super(context, instanceId);
        boolean z = false;
        riljLog("Ims-RIL: init phone = " + instanceId);
        this.mContext = context;
        this.mPhoneId = Integer.valueOf(instanceId);
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        this.mIsMobileNetworkSupported = cm.isNetworkSupported(0);
        this.mRadioResponse = new ImsRadioResponse(this, instanceId);
        this.mRadioIndication = new ImsRadioIndication(this, instanceId);
        PowerManager pm = (PowerManager) context.getSystemService("power");
        this.mWakeLock = pm.newWakeLock(1, IMSRIL_LOG_TAG);
        this.mWakeLock.setReferenceCounted(false);
        this.mAckWakeLock = pm.newWakeLock(1, RILJ_ACK_WAKELOCK_NAME);
        this.mAckWakeLock.setReferenceCounted(false);
        this.mRILDefaultWorkSource = new WorkSource(context.getApplicationInfo().uid, context.getPackageName());
        IRadio proxy = getRadioProxy(null);
        StringBuilder sb = new StringBuilder();
        sb.append("Ims-RIL: proxy = ");
        sb.append(proxy == null ? true : z);
        riljLog(sb.toString());
        this.mOpCI = OpImsRILUtil.makeCommandInterface(context, instanceId);
    }

    private void addRequest(RILRequest rr) {
        acquireWakeLock(rr, 0);
        synchronized (this.mRequestList) {
            rr.mStartTimeMs = SystemClock.elapsedRealtime();
            this.mRequestList.append(rr.mSerial, rr);
        }
    }

    private RILRequest obtainRequest(int request, Message result, WorkSource workSource) {
        RILRequest rr = RILRequest.obtain(request, result, workSource);
        addRequest(rr);
        return rr;
    }

    private void handleRadioProxyExceptionForRR(RILRequest rr, String caller, Exception e) {
        riljLoge(caller + ": " + e);
        resetProxyAndRequestList();
        this.mRilHandler.sendMessageDelayed(this.mRilHandler.obtainMessage(6, Long.valueOf(this.mRadioProxyCookie.incrementAndGet())), 4000L);
    }

    protected String convertNullToEmptyString(String string) {
        return string != null ? string : MtkPhoneConstants.MVNO_TYPE_NONE;
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public OpImsCommandsInterface getOpCommandsInterface() {
        return this.mOpCI;
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setMute(boolean enableMute, Message result) {
        IRadio radioProxy = getRadioProxy(null);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(53, null, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " mute = " + enableMute);
            try {
                radioProxy.setMute(rr.mSerial, enableMute);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setMute", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void start(String callee, int clirMode, boolean isEmergency, boolean isVideoCall, Message result) {
        if (isVideoCall) {
            vtDial(callee, clirMode, null, result);
        } else if (isEmergency) {
            ExtensionPluginFactory facotry = ExtensionFactory.makeExtensionPluginFactory();
            int serviceCategory = facotry.makeImsCallPlugin(this.mContext).getServiceCategoryFromEcc(callee);
            setEccServiceCategory(serviceCategory, null);
            emergencyDial(callee, clirMode, null, result);
        } else {
            dial(callee, clirMode, result);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void startConference(String[] participants, int clirMode, boolean isVideoCall, Message result) {
        conferenceDial(participants, clirMode, isVideoCall, result);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void accept(Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(40, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.acceptCall(rr.mSerial);
                this.mMetrics.writeRilAnswer(this.mPhoneId.intValue(), rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "acceptCall", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void acceptVideoCall(int videoMode, int callId, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_VIDEO_CALL_ACCEPT, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " videoMode = " + videoMode + " callId = " + callId);
            try {
                radioProxy.videoCallAccept(rr.mSerial, videoMode, callId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "acceptCall", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void hangup(int callId, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(12, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " callId = " + callId);
            try {
                radioProxy.hangup(rr.mSerial, callId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "hangup", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void explicitCallTransfer(Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(72, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            handleChldRelatedRequest(rr, null);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void unattendedCallTransfer(String number, int type, Message response) {
        internalImsEct(number, type, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void hold(int callId, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_HOLD_CALL, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + "callId = " + callId);
            try {
                radioProxy.holdCall(rr.mSerial, callId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "holdCall", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void resume(int callId, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_RESUME_CALL, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + "callId = " + callId);
            try {
                radioProxy.resumeCall(rr.mSerial, callId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "resumeCall", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void conference(Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(16, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            handleChldRelatedRequest(rr, null);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void sendDtmf(char c, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(24, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                int i = rr.mSerial;
                radioProxy.sendDtmf(i, c + MtkPhoneConstants.MVNO_TYPE_NONE);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "sendDtmf", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void startDtmf(char c, Message result) {
        synchronized (this.mDtmfReqQueue) {
            if (!this.mDtmfReqQueue.hasSendChldRequest()) {
                int size = this.mDtmfReqQueue.size();
                Objects.requireNonNull(this.mDtmfReqQueue);
                if (size < 32) {
                    if (!this.mDtmfReqQueue.isStart()) {
                        IRadio radioProxy = getRadioProxy(result);
                        if (radioProxy != null) {
                            RILRequest rr = obtainRequest(49, result, this.mRILDefaultWorkSource);
                            this.mDtmfReqQueue.start();
                            Object[] param = {Character.valueOf(c)};
                            DtmfQueueHandler.DtmfQueueRR dqrr = this.mDtmfReqQueue.buildDtmfQueueRR(rr, param);
                            this.mDtmfReqQueue.add(dqrr);
                            if (this.mDtmfReqQueue.size() == 1) {
                                riljLog("send start dtmf");
                                riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
                                sendDtmfQueueRR(dqrr);
                            }
                        }
                    } else {
                        riljLog("DTMF status conflict, want to start DTMF when status is " + this.mDtmfReqQueue.isStart());
                    }
                }
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void stopDtmf(Message result) {
        synchronized (this.mDtmfReqQueue) {
            if (!this.mDtmfReqQueue.hasSendChldRequest()) {
                int size = this.mDtmfReqQueue.size();
                Objects.requireNonNull(this.mDtmfReqQueue);
                if (size < 32) {
                    if (this.mDtmfReqQueue.isStart()) {
                        IRadio radioProxy = getRadioProxy(result);
                        if (radioProxy != null) {
                            RILRequest rr = obtainRequest(50, result, this.mRILDefaultWorkSource);
                            this.mDtmfReqQueue.stop();
                            DtmfQueueHandler.DtmfQueueRR dqrr = this.mDtmfReqQueue.buildDtmfQueueRR(rr, null);
                            this.mDtmfReqQueue.add(dqrr);
                            if (this.mDtmfReqQueue.size() == 1) {
                                riljLog("send stop dtmf");
                                riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
                                sendDtmfQueueRR(dqrr);
                            }
                        }
                    } else {
                        riljLog("DTMF status conflict, want to start DTMF when status is " + this.mDtmfReqQueue.isStart());
                    }
                }
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCallIndication(int mode, int callId, int seqNum, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_CALL_INDICATION, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " mode = " + mode + " callId = " + callId + " seqNum = " + seqNum);
            try {
                radioProxy.setCallIndication(rr.mSerial, mode, callId, seqNum);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCallIndication", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void deregisterIms(Message response) {
        deregisterImsWithCause(1, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void deregisterImsWithCause(int cause, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_DEREG_NOTIFICATION, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest));
            try {
                radioProxy.imsDeregNotification(rr.mSerial, cause);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "imsDeregNotification", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setImsCfg(int[] params, Message response) {
        boolean volteEnable = params[0] == 1;
        boolean vilteEnable = params[1] == 1;
        boolean vowifiEnable = params[2] == 1;
        boolean viwifiEnable = params[3] == 1;
        boolean smsEnable = params[4] == 1;
        boolean eimsEnable = params[5] == 1;
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMSCFG, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " volteEnable = " + params[0] + " vilteEnable = " + params[1] + " vowifiEnable = " + params[2] + " viwifiEnable = " + params[3] + " smsEnable = " + params[4] + " eimsEnable = " + params[5]);
            try {
                radioProxy.setImscfg(rr.mSerial, volteEnable, vilteEnable, vowifiEnable, viwifiEnable, smsEnable, eimsEnable);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsCfg", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setModemImsCfg(String keys, String values, int type, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_MD_IMSCFG, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " keys = " + keys + " values = " + values + " type = " + type);
            try {
                radioProxy.setModemImsCfg(rr.mSerial, keys, values, type);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "sendModemImsCfg", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnIms(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setImsEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffIms(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setImsEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnVolte(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_VOLTE_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setVolteEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setVolteEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffVolte(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_VOLTE_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setVolteEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setVolteEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnWfc(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_WFC_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setWfcEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setWfcEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffWfc(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_WFC_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setWfcEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setWfcEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnVilte(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_VILTE_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setVilteEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setVilteEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffVilte(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_VILTE_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setVilteEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setVilteEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnViwifi(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_VIWIFI_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setViWifiEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setViWifiEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffViwifi(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_VIWIFI_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setViWifiEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setViWifiEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnRcsUa(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_RCS_UA_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setRcsUaEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setRcsUaEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffRcsUa(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_RCS_UA_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setRcsUaEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setRcsUaEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnImsVoice(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_VOICE_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setImsVoiceEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsVoiceEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffImsVoice(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_VOICE_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setImsVoiceEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsVoiceEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOnImsVideo(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_VIDEO_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = ON");
            try {
                radioProxy.setImsVideoEnable(rr.mSerial, true);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsVideoEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void turnOffImsVideo(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_VIDEO_ENABLE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " switch = OFF");
            try {
                radioProxy.setImsVideoEnable(rr.mSerial, false);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsVideoEnable", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getProvisionValue(String provisionStr, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_GET_PROVISION_VALUE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " provisionStr = " + provisionStr);
            try {
                radioProxy.getProvisionValue(rr.mSerial, provisionStr);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getProvisionValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setProvisionValue(String provisionStr, String provisionValue, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_PROVISION_VALUE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " provisionStr = " + provisionStr + " provisionValue" + provisionValue);
            try {
                radioProxy.setProvisionValue(rr.mSerial, provisionStr, provisionValue);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setProvisionValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setImsCfgFeatureValue(int featureId, int network, int value, int isLast, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_CONFIG_SET_FEATURE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " featureId = " + featureId + " network = " + network + " value = " + value + " isLast = " + isLast);
            try {
                radioProxy.setImsCfgFeatureValue(rr.mSerial, featureId, network, value, isLast);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsCfgFeatureValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getImsCfgFeatureValue(int featureId, int network, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_CONFIG_GET_FEATURE, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " featureId = " + featureId + " network = " + network);
            try {
                radioProxy.getImsCfgFeatureValue(rr.mSerial, featureId, network);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getImsCfgFeatureValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setImsCfgProvisionValue(int configId, String value, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_CONFIG_SET_PROVISION, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " configId = " + configId + " value = " + value);
            try {
                radioProxy.setImsCfgProvisionValue(rr.mSerial, configId, value);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsCfgProvisionValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getImsCfgProvisionValue(int configId, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_CONFIG_GET_PROVISION, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " configId = " + configId);
            try {
                radioProxy.getImsCfgProvisionValue(rr.mSerial, configId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getImsCfgProvisionValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setImsCfgResourceCapValue(int featureId, int value, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_CONFIG_SET_RESOURCE_CAP, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " featureId = " + featureId + " value = " + value);
            try {
                radioProxy.setImsCfgResourceCapValue(rr.mSerial, featureId, value);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsCfgResourceCapValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getImsCfgResourceCapValue(int featureId, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_CONFIG_GET_RESOURCE_CAP, result, this.mRILDefaultWorkSource);
            try {
                radioProxy.getImsCfgResourceCapValue(rr.mSerial, featureId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getImsCfgResourceCapValue", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void inviteParticipants(int confCallId, String participant, Message response) {
        int participantCallId = ImsServiceCallTracker.getInstance(this.mPhoneId.intValue()).getParticipantCallId(participant);
        internalAddConferenceMember(confCallId, participant, participantCallId, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void removeParticipants(int confCallId, String participant, Message response) {
        int participantCallId = ImsServiceCallTracker.getInstance(this.mPhoneId.intValue()).getParticipantCallId(participant);
        internalRemoveConferenceMember(confCallId, participant, participantCallId, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void inviteParticipantsByCallId(int confCallId, String callId, Message response) {
        ImsCallInfo callInfo = ImsServiceCallTracker.getInstance(this.mPhoneId.intValue()).getCallInfo(callId);
        if (callInfo == null) {
            Rlog.d(IMSRIL_LOG_TAG, "Invite participants failed, call info is null");
            return;
        }
        try {
            int id = Integer.parseInt(callId);
            internalAddConferenceMember(confCallId, callInfo.mCallNum, id, response);
        } catch (NumberFormatException e) {
            Rlog.d(IMSRIL_LOG_TAG, "Invite participants failed: id is not integer: " + callId);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getLastCallFailCause(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(18, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest));
            try {
                radioProxy.getLastCallFailCause(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getLastCallFailCause", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void hangupAllCall(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_HANGUP_ALL, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest));
            try {
                radioProxy.hangupAll(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "hangupAll", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void swap(Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(15, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            handleChldRelatedRequest(rr, null);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void sendWfcProfileInfo(int wfcPreference, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_WFC_PROFILE, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " wfcPreference = " + wfcPreference);
            try {
                radioProxy.setWfcProfile(rr.mSerial, wfcPreference);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setWfcProfile", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void dial(String address, int clirMode, Message result) {
        dial(address, clirMode, null, result);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void dial(String address, int clirMode, UUSInfo uusInfo, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy == null) {
            return;
        }
        if (!PhoneNumberUtils.isUriNumber(address)) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_DIAL, response, this.mRILDefaultWorkSource);
            Dial dialInfo = new Dial();
            dialInfo.address = convertNullToEmptyString(address);
            dialInfo.clir = clirMode;
            if (uusInfo != null) {
                UusInfo info = new UusInfo();
                info.uusType = uusInfo.getType();
                info.uusDcs = uusInfo.getDcs();
                info.uusData = new String(uusInfo.getUserData());
                dialInfo.uusInfo.add(info);
            }
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.dial(rr.mSerial, dialInfo);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "dial", e);
            }
        } else {
            RILRequest rr2 = obtainRequest(MtkRILConstants.RIL_REQUEST_DIAL_WITH_SIP_URI, response, this.mRILDefaultWorkSource);
            riljLog(rr2.serialString() + "> " + requestToString(rr2.mRequest));
            try {
                radioProxy.dialWithSipUri(rr2.mSerial, address);
            } catch (RemoteException | RuntimeException e2) {
                handleRadioProxyExceptionForRR(rr2, "dialWithSipUri", e2);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void emergencyDial(String address, int clirMode, UUSInfo uusInfo, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_EMERGENCY_DIAL, response, this.mRILDefaultWorkSource);
            Dial dialInfo = new Dial();
            dialInfo.address = convertNullToEmptyString(address);
            dialInfo.clir = clirMode;
            if (uusInfo != null) {
                UusInfo info = new UusInfo();
                info.uusType = uusInfo.getType();
                info.uusDcs = uusInfo.getDcs();
                info.uusData = new String(uusInfo.getUserData());
                dialInfo.uusInfo.add(info);
            }
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.emergencyDial(rr.mSerial, dialInfo);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "emergencyDial", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void conferenceDial(String[] participants, int clirMode, boolean isVideoCall, Message result) {
        if (participants == null) {
            riljLoge("Participants MUST NOT be null in conferenceDial");
            return;
        }
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_CONFERENCE_DIAL, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " clirMode = " + clirMode + " isVideoCall = " + isVideoCall);
            ConferenceDial dialInfo = new ConferenceDial();
            dialInfo.clir = clirMode;
            dialInfo.isVideoCall = isVideoCall;
            for (String dialNumber : participants) {
                dialInfo.dialNumbers.add(dialNumber);
                riljLog("conferenceDial: dialNumber " + dialNumber);
            }
            try {
                radioProxy.conferenceDial(rr.mSerial, dialInfo);
            } catch (RemoteException | RuntimeException e) {
                Rlog.w(IMSRIL_LOG_TAG, "conferenceDial failed");
                handleRadioProxyExceptionForRR(rr, "conferenceDial", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setEccServiceCategory(int serviceCategory, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_ECC_SERVICE_CATEGORY, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " serviceCategory = " + serviceCategory);
            try {
                radioProxy.setEccServiceCategory(rr.mSerial, serviceCategory);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setEccServiceCategory", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void vtDial(String address, int clirMode, UUSInfo uusInfo, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy == null) {
            return;
        }
        if (!PhoneNumberUtils.isUriNumber(address)) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_VT_DIAL, response, this.mRILDefaultWorkSource);
            Dial dialInfo = new Dial();
            dialInfo.address = convertNullToEmptyString(address);
            dialInfo.clir = clirMode;
            if (uusInfo != null) {
                UusInfo info = new UusInfo();
                info.uusType = uusInfo.getType();
                info.uusDcs = uusInfo.getDcs();
                info.uusData = new String(uusInfo.getUserData());
                dialInfo.uusInfo.add(info);
            }
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.vtDial(rr.mSerial, dialInfo);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "vtDial", e);
            }
        } else {
            RILRequest rr2 = obtainRequest(MtkRILConstants.RIL_REQUEST_VT_DIAL_WITH_SIP_URI, response, this.mRILDefaultWorkSource);
            riljLog(rr2.serialString() + "> " + requestToString(rr2.mRequest));
            try {
                radioProxy.vtDialWithSipUri(rr2.mSerial, address);
            } catch (RemoteException | RuntimeException e2) {
                handleRadioProxyExceptionForRR(rr2, "vtDialWithSipUri", e2);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void sendUSSI(int action, String ussiString, Message response) {
        if (SystemProperties.get("persist.vendor.ims.ussi.ap").equals(RadioCapabilitySwitchUtil.IMSI_READY)) {
            riljLog("Wrap sendUSSI, action = " + action + " ussiString = " + ussiString);
            response.sendToTarget();
            return;
        }
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SEND_USSI, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " action = " + action + " ussiString = " + ussiString);
            try {
                radioProxy.sendUssi(rr.mSerial, action, ussiString);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "sendUssi", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void cancelPendingUssi(Message response) {
        if (SystemProperties.get("persist.vendor.ims.ussi.ap").equals(RadioCapabilitySwitchUtil.IMSI_READY)) {
            riljLog("Wrap cancelPendingUssi");
            response.sendToTarget();
            return;
        }
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_CANCEL_USSI, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest));
            try {
                radioProxy.cancelUssi(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "cancelUssi", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void queryFacilityLock(String facility, String password, int serviceClass, Message result) {
        queryFacilityLockForApp(facility, password, serviceClass, "A0000000871002", result);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void queryFacilityLockForApp(String facility, String password, int serviceClass, String appId, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(42, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " facility = " + facility + " serviceClass = " + serviceClass + " appId = " + appId);
            try {
                radioProxy.getFacilityLockForApp(rr.mSerial, convertNullToEmptyString(facility), convertNullToEmptyString(password), serviceClass, convertNullToEmptyString(appId));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getFacilityLockForApp", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setFacilityLock(String facility, boolean lockState, String password, int serviceClass, Message result) {
        setFacilityLockForApp(facility, lockState, password, serviceClass, "A0000000871002", result);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setFacilityLockForApp(String facility, boolean lockState, String password, int serviceClass, String appId, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(43, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " facility = " + facility + " lockstate = " + lockState + " serviceClass = " + serviceClass + " appId = " + appId);
            try {
                radioProxy.setFacilityLockForApp(rr.mSerial, convertNullToEmptyString(facility), lockState, convertNullToEmptyString(password), serviceClass, convertNullToEmptyString(appId));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setFacilityLockForApp", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCallForward(int action, int cfReason, int serviceClass, String number, int timeSeconds, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(34, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " action = " + action + " cfReason = " + cfReason + " serviceClass = " + serviceClass + " timeSeconds = " + timeSeconds);
            CallForwardInfo cfInfo = new CallForwardInfo();
            cfInfo.status = action;
            cfInfo.reason = cfReason;
            cfInfo.serviceClass = serviceClass;
            cfInfo.toa = PhoneNumberUtils.toaFromString(number);
            cfInfo.number = convertNullToEmptyString(number);
            cfInfo.timeSeconds = timeSeconds;
            try {
                radioProxy.setCallForward(rr.mSerial, cfInfo);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCallForward", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void queryCallForwardStatus(int cfReason, int serviceClass, String number, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(33, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " cfreason = " + cfReason + " serviceClass = " + serviceClass);
            CallForwardInfo cfInfo = new CallForwardInfo();
            cfInfo.reason = cfReason;
            cfInfo.serviceClass = serviceClass;
            cfInfo.toa = PhoneNumberUtils.toaFromString(number);
            cfInfo.number = convertNullToEmptyString(number);
            cfInfo.timeSeconds = 0;
            try {
                radioProxy.getCallForwardStatus(rr.mSerial, cfInfo);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "queryCallForwardStatus", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void queryCallWaiting(int serviceClass, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(35, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " serviceClass = " + serviceClass);
            try {
                radioProxy.getCallWaiting(rr.mSerial, serviceClass);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "queryCallWaiting", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCallWaiting(boolean enable, int serviceClass, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(36, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " enable = " + enable + " serviceClass = " + serviceClass);
            try {
                radioProxy.setCallWaiting(rr.mSerial, enable, serviceClass);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCallWaiting", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getCLIR(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(31, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.getClir(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getCLIR", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCLIR(int clirMode, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(32, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " clirMode = " + clirMode);
            try {
                radioProxy.setClir(rr.mSerial, clirMode);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCLIR", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void queryCLIP(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(55, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.getClip(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "queryCLIP", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCLIP(int clipEnable, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_CLIP, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " clipEnable = " + clipEnable);
            try {
                radioProxy.setClip(rr.mSerial, clipEnable);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCLIP", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getCOLR(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_GET_COLR, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.getColr(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getCOLR", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCOLR(int colrEnable, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_COLR, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " colrEnable = " + colrEnable);
            try {
                radioProxy.setColr(rr.mSerial, colrEnable);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCOLR", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getCOLP(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_GET_COLP, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.getColp(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getCOLP", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCOLP(int colpEnable, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_COLP, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " colpEnable = " + colpEnable);
            try {
                radioProxy.setColp(rr.mSerial, colpEnable);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCOLP", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void queryCallForwardInTimeSlotStatus(int cfReason, int serviceClass, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_QUERY_CALL_FORWARD_IN_TIME_SLOT, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " cfreason = " + cfReason + " serviceClass = " + serviceClass);
            CallForwardInfoEx cfInfoEx = new CallForwardInfoEx();
            cfInfoEx.reason = cfReason;
            cfInfoEx.serviceClass = serviceClass;
            cfInfoEx.toa = PhoneNumberUtils.toaFromString(MtkPhoneConstants.MVNO_TYPE_NONE);
            cfInfoEx.number = convertNullToEmptyString(MtkPhoneConstants.MVNO_TYPE_NONE);
            cfInfoEx.timeSeconds = 0;
            cfInfoEx.timeSlotBegin = convertNullToEmptyString(MtkPhoneConstants.MVNO_TYPE_NONE);
            cfInfoEx.timeSlotEnd = convertNullToEmptyString(MtkPhoneConstants.MVNO_TYPE_NONE);
            try {
                radioProxy.queryCallForwardInTimeSlotStatus(rr.mSerial, cfInfoEx);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "queryCallForwardInTimeSlotStatus", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setCallForwardInTimeSlot(int action, int cfReason, int serviceClass, String number, int timeSeconds, long[] timeSlot, Message result) {
        String timeSlotBegin = MtkPhoneConstants.MVNO_TYPE_NONE;
        String timeSlotEnd = MtkPhoneConstants.MVNO_TYPE_NONE;
        if (timeSlot != null && timeSlot.length == 2) {
            for (int i = 0; i < timeSlot.length; i++) {
                Date date = new Date(timeSlot[i]);
                SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm");
                dateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8"));
                if (i == 0) {
                    timeSlotBegin = dateFormat.format(date);
                } else {
                    timeSlotEnd = dateFormat.format(date);
                }
            }
        }
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_CALL_FORWARD_IN_TIME_SLOT, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " action = " + action + " cfReason = " + cfReason + " serviceClass = " + serviceClass + " timeSeconds = " + timeSeconds + "timeSlot = [" + timeSlotBegin + ":" + timeSlotEnd + "]");
            CallForwardInfoEx cfInfoEx = new CallForwardInfoEx();
            cfInfoEx.status = action;
            cfInfoEx.reason = cfReason;
            cfInfoEx.serviceClass = serviceClass;
            cfInfoEx.toa = PhoneNumberUtils.toaFromString(number);
            cfInfoEx.number = convertNullToEmptyString(number);
            cfInfoEx.timeSeconds = timeSeconds;
            cfInfoEx.timeSlotBegin = convertNullToEmptyString(timeSlotBegin);
            cfInfoEx.timeSlotEnd = convertNullToEmptyString(timeSlotEnd);
            try {
                radioProxy.setCallForwardInTimeSlot(rr.mSerial, cfInfoEx);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setCallForwardInTimeSlot", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void runGbaAuthentication(String nafFqdn, String nafSecureProtocolId, boolean forceRun, int netId, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_RUN_GBA, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " nafFqdn = " + nafFqdn + " nafSecureProtocolId = " + nafSecureProtocolId + " forceRun = " + forceRun + " netId = " + netId);
            try {
                radioProxy.runGbaAuthentication(rr.mSerial, nafFqdn, nafSecureProtocolId, forceRun, netId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "runGbaAuthentication", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void getXcapStatus(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_GET_XCAP_STATUS, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest));
            try {
                radioProxy.getXcapStatus(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getXcapStatus", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void resetSuppServ(Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_RESET_SUPP_SERV, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest));
            try {
                radioProxy.resetSuppServ(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "getXcapStatus", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setupXcapUserAgentString(String userAgent, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SETUP_XCAP_USER_AGENT_STRING, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " userAgent = " + userAgent);
            try {
                radioProxy.setupXcapUserAgentString(rr.mSerial, userAgent);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setupXcapUserAgentString", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void requestExitEmergencyCallbackMode(Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(99, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest));
            try {
                radioProxy.exitEmergencyCallbackMode(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "exitEmergencyCallbackMode", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void forceHangup(int callId, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_FORCE_RELEASE_CALL, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " callId = " + callId);
            try {
                radioProxy.forceReleaseCall(rr.mSerial, callId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "forceHangup", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void responseBearerActivationDone(int aid, int status, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_BEARER_ACTIVATION_DONE, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " aid = " + aid + " status =" + status);
            try {
                radioProxy.imsBearerActivationDone(rr.mSerial, aid, status);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "imsBearerActivationDone", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void responseBearerDeactivationDone(int aid, int status, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_BEARER_DEACTIVATION_DONE, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " aid = " + aid + " status =" + status);
            try {
                radioProxy.imsBearerDeactivationDone(rr.mSerial, aid, status);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "imsBearerDeactivationDone", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setImsBearerNotification(int enable, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " enable = " + enable);
            try {
                radioProxy.setImsBearerNotification(rr.mSerial, enable);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsBearerNotification", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void pullCall(String target, boolean isVideoCall, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_PULL_CALL, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " target = " + isVideoCall + " isVideoCall = " + isVideoCall);
            try {
                radioProxy.pullCall(rr.mSerial, target, isVideoCall);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "pullCall", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setImsRegistrationReport(Message response) {
        IRadio radioProxy = getRadioProxy(null);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_REGISTRATION_REPORT, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.setImsRegistrationReport(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsRegistrationReport", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setImsRtpInfo(int pdnId, int networkId, int timer, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_IMS_RTP_REPORT, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " PDN id = " + pdnId + " network Id = " + networkId + " Timer = " + timer);
            try {
                radioProxy.setImsRtpReport(rr.mSerial, pdnId, networkId, timer);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setImsRtpReport", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void setVoiceDomainPreference(int vdp, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " vdp = " + vdp);
            try {
                radioProxy.setVoiceDomainPreference(rr.mSerial, vdp);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "setVoiceDomainPreference", e);
            }
        }
    }

    private void internalAddConferenceMember(int confCallId, String address, int callIdToAdd, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " confCallId = " + confCallId + " address = " + address + " callIdToAdd =" + callIdToAdd);
            try {
                radioProxy.addImsConferenceCallMember(rr.mSerial, confCallId, address, callIdToAdd);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "addImsConferenceCallMember", e);
            }
        }
    }

    private void internalRemoveConferenceMember(int confCallId, String address, int callIdToRemove, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + ">  " + requestToString(rr.mRequest) + " confCallId = " + confCallId + " address = " + address + " callIdToRemove =" + callIdToRemove);
            try {
                radioProxy.removeImsConferenceCallMember(rr.mSerial, confCallId, address, callIdToRemove);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "removeImsConferenceCallMember", e);
            }
        }
    }

    private void internalImsEct(String number, int type, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_ECT, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            try {
                radioProxy.imsEctCommand(rr.mSerial, number, type);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "imsEctCommand", e);
            }
        }
    }

    private void handleChldRelatedRequest(RILRequest rr, Object[] params) {
        int j;
        synchronized (this.mDtmfReqQueue) {
            int queueSize = this.mDtmfReqQueue.size();
            if (queueSize > 0) {
                DtmfQueueHandler.DtmfQueueRR dqrr2 = this.mDtmfReqQueue.get();
                RILRequest rr2 = dqrr2.rr;
                if (rr2.mRequest == 49) {
                    riljLog("DTMF queue isn't 0, first request is START, send stop dtmf and pending switch");
                    if (queueSize > 1) {
                        j = 2;
                    } else {
                        j = 1;
                    }
                    riljLog("queue size  " + this.mDtmfReqQueue.size());
                    for (int i = queueSize + (-1); i >= j; i--) {
                        this.mDtmfReqQueue.remove(i);
                    }
                    riljLog("queue size  after " + this.mDtmfReqQueue.size());
                    if (this.mDtmfReqQueue.size() == 1) {
                        riljLog("add dummy stop dtmf request");
                        RILRequest rr3 = obtainRequest(50, null, this.mRILDefaultWorkSource);
                        Object[] myParam = {Integer.valueOf(rr3.mSerial)};
                        DtmfQueueHandler.DtmfQueueRR dqrr3 = this.mDtmfReqQueue.buildDtmfQueueRR(rr3, myParam);
                        this.mDtmfReqQueue.stop();
                        this.mDtmfReqQueue.add(dqrr3);
                    }
                } else {
                    riljLog("DTMF queue isn't 0, first request is STOP, penging switch");
                    for (int i2 = queueSize - 1; i2 >= 1; i2--) {
                        this.mDtmfReqQueue.remove(i2);
                    }
                }
                if (this.mDtmfReqQueue.getPendingRequest() != null) {
                    DtmfQueueHandler.DtmfQueueRR pendingDqrr = this.mDtmfReqQueue.getPendingRequest();
                    RILRequest pendingRequest = pendingDqrr.rr;
                    if (pendingRequest.mResult != null) {
                        AsyncResult.forMessage(pendingRequest.mResult, (Object) null, (Throwable) null);
                        pendingRequest.mResult.sendToTarget();
                    }
                }
                DtmfQueueHandler.DtmfQueueRR dqrr = this.mDtmfReqQueue.buildDtmfQueueRR(rr, params);
                this.mDtmfReqQueue.setPendingRequest(dqrr);
            } else {
                riljLog("DTMF queue is 0, send switch Immediately");
                this.mDtmfReqQueue.setSendChldRequest();
                DtmfQueueHandler.DtmfQueueRR dqrr4 = this.mDtmfReqQueue.buildDtmfQueueRR(rr, params);
                sendDtmfQueueRR(dqrr4);
            }
        }
    }

    private void sendDtmfQueueRR(DtmfQueueHandler.DtmfQueueRR dqrr) {
        RILRequest rr = dqrr.rr;
        IRadio radioProxy = getRadioProxy(rr.mResult);
        if (radioProxy == null) {
            riljLoge("get RadioProxy null. ([" + rr.serialString() + "] request: " + requestToString(rr.mRequest) + ")");
            return;
        }
        riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " (by DtmfQueueRR)");
        try {
            switch (rr.mRequest) {
                case 15:
                    radioProxy.switchWaitingOrHoldingAndActive(rr.mSerial);
                    break;
                case 16:
                    radioProxy.conference(rr.mSerial);
                    break;
                case 49:
                    Object[] params = dqrr.params;
                    if (params.length == 1) {
                        char c = ((Character) params[0]).charValue();
                        int i = rr.mSerial;
                        radioProxy.startDtmf(i, c + MtkPhoneConstants.MVNO_TYPE_NONE);
                        break;
                    } else {
                        riljLoge("request " + requestToString(rr.mRequest) + " params error. (" + params.toString() + ")");
                        break;
                    }
                case 50:
                    radioProxy.stopDtmf(rr.mSerial);
                    break;
                case 52:
                    Object[] params2 = dqrr.params;
                    if (params2.length == 1) {
                        int gsmIndex = ((Integer) params2[0]).intValue();
                        radioProxy.separateConnection(rr.mSerial, gsmIndex);
                        break;
                    } else {
                        riljLoge("request " + requestToString(rr.mRequest) + " params error. (" + Arrays.toString(params2) + ")");
                        break;
                    }
                case NvItem.LTE_BAND_ENABLE_26 /* 72 */:
                    radioProxy.explicitCallTransfer(rr.mSerial);
                    break;
                default:
                    riljLoge("get RadioProxy null. ([" + rr.serialString() + "] request: " + requestToString(rr.mRequest) + ")");
                    break;
            }
        } catch (RemoteException | RuntimeException e) {
            handleRadioProxyExceptionForRR(rr, "DtmfQueueRR(" + requestToString(rr.mRequest) + ")", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleDtmfQueueNext(int serial) {
        riljLog("handleDtmfQueueNext (serial = " + serial);
        synchronized (this.mDtmfReqQueue) {
            DtmfQueueHandler.DtmfQueueRR dqrr = null;
            int i = 0;
            while (true) {
                if (i < this.mDtmfReqQueue.mDtmfQueue.size()) {
                    DtmfQueueHandler.DtmfQueueRR adqrr = (DtmfQueueHandler.DtmfQueueRR) this.mDtmfReqQueue.mDtmfQueue.get(i);
                    if (adqrr != null && adqrr.rr.mSerial == serial) {
                        dqrr = adqrr;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            if (dqrr == null) {
                riljLoge("cannot find serial " + serial + " from mDtmfQueue. (size = " + this.mDtmfReqQueue.size() + ")");
            } else {
                this.mDtmfReqQueue.remove(dqrr);
                riljLog("remove first item in dtmf queue done. (size = " + this.mDtmfReqQueue.size() + ")");
            }
            if (this.mDtmfReqQueue.size() > 0) {
                DtmfQueueHandler.DtmfQueueRR dqrr2 = this.mDtmfReqQueue.get();
                RILRequest rr2 = dqrr2.rr;
                riljLog(rr2.serialString() + "> " + requestToString(rr2.mRequest));
                sendDtmfQueueRR(dqrr2);
            } else if (this.mDtmfReqQueue.getPendingRequest() != null) {
                riljLog("send pending switch request");
                DtmfQueueHandler.DtmfQueueRR pendingReq = this.mDtmfReqQueue.getPendingRequest();
                sendDtmfQueueRR(pendingReq);
                this.mDtmfReqQueue.setSendChldRequest();
                this.mDtmfReqQueue.setPendingRequest(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processIndication(int indicationType) {
        if (indicationType == 1) {
            sendAck();
        }
    }

    void processRequestAck(int serial) {
        RILRequest rr;
        synchronized (this.mRequestList) {
            rr = this.mRequestList.get(serial);
        }
        if (rr == null) {
            Rlog.w(IMSRIL_LOG_TAG, "processRequestAck: Unexpected solicited ack response! serial: " + serial);
            return;
        }
        decrementWakeLock(rr);
        riljLog(rr.serialString() + " Ack < " + requestToString(rr.mRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RILRequest processResponse(RadioResponseInfo responseInfo) {
        RILRequest rr;
        int serial = responseInfo.serial;
        int error = responseInfo.error;
        int type = responseInfo.type;
        if (type == 1) {
            synchronized (this.mRequestList) {
                rr = this.mRequestList.get(serial);
            }
            if (rr == null) {
                Rlog.w(IMSRIL_LOG_TAG, "Unexpected solicited ack response! sn: " + serial);
            } else {
                decrementWakeLock(rr);
                riljLog(rr.serialString() + " Ack < " + requestToString(rr.mRequest));
            }
            return rr;
        }
        RILRequest rr2 = findAndRemoveRequestFromList(serial);
        if (rr2 == null) {
            Rlog.e(IMSRIL_LOG_TAG, "processResponse: Unexpected response! serial: " + serial + " error: " + error);
            return null;
        }
        addToRilHistogram(rr2);
        if (type == 2) {
            sendAck();
            riljLog("Response received for " + rr2.serialString() + " " + requestToString(rr2.mRequest) + " Sending ack to ril.cpp");
        }
        if (rr2.mRequest == 129) {
            setRadioState(ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE);
        }
        return rr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processResponseDone(RILRequest rr, RadioResponseInfo responseInfo, Object ret) {
        if (responseInfo.error == 0) {
            riljLog(rr.serialString() + "< " + requestToString(rr.mRequest) + " " + retToString(rr.mRequest, ret));
        } else {
            riljLog(rr.serialString() + "< " + requestToString(rr.mRequest) + " error " + responseInfo.error);
            rr.onError(responseInfo.error, ret);
        }
        this.mMetrics.writeOnRilSolicitedResponse(this.mPhoneId.intValue(), rr.mSerial, responseInfo.error, rr.mRequest, ret);
        if (rr.mRequest == 15 || rr.mRequest == 16 || rr.mRequest == 52 || rr.mRequest == 72) {
            riljLog("clear mIsSendChldRequest");
            this.mDtmfReqQueue.resetSendChldRequest();
        }
        if (rr != null) {
            if (responseInfo.type == 0) {
                decrementWakeLock(rr);
            }
            rr.release();
        }
    }

    private void sendAck() {
        RILRequest rr = RILRequest.obtain(800, null, this.mRILDefaultWorkSource);
        acquireWakeLock(rr, 1);
        IRadio radioProxy = getRadioProxy(null);
        if (radioProxy != null) {
            try {
                radioProxy.responseAcknowledgement();
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "sendAck", e);
                riljLoge("sendAck: " + e);
            }
        } else {
            Rlog.e(IMSRIL_LOG_TAG, "Error trying to send ack, radioProxy = null");
        }
        rr.release();
    }

    private WorkSource getDeafultWorkSourceIfInvalid(WorkSource workSource) {
        if (workSource == null) {
            return this.mRILDefaultWorkSource;
        }
        return workSource;
    }

    private String getWorkSourceClientId(WorkSource workSource) {
        if (workSource == null) {
            return null;
        }
        return String.valueOf(workSource.get(0)) + ":" + workSource.getName(0);
    }

    private GsmSmsMessage constructGsmSendSmsRilRequest(String smscPdu, String pdu) {
        GsmSmsMessage msg = new GsmSmsMessage();
        msg.smscPdu = smscPdu == null ? MtkPhoneConstants.MVNO_TYPE_NONE : smscPdu;
        msg.pdu = pdu == null ? MtkPhoneConstants.MVNO_TYPE_NONE : pdu;
        return msg;
    }

    protected void constructCdmaSendSmsRilRequest(CdmaSmsMessage msg, byte[] pdu) {
        ByteArrayInputStream bais = new ByteArrayInputStream(pdu);
        DataInputStream dis = new DataInputStream(bais);
        try {
            msg.teleserviceId = dis.readInt();
            boolean z = true;
            msg.isServicePresent = ((byte) dis.readInt()) == 1;
            msg.serviceCategory = dis.readInt();
            msg.address.digitMode = dis.read();
            msg.address.numberMode = dis.read();
            msg.address.numberType = dis.read();
            msg.address.numberPlan = dis.read();
            int addrNbrOfDigits = (byte) dis.read();
            for (int i = 0; i < addrNbrOfDigits; i++) {
                msg.address.digits.add(Byte.valueOf(dis.readByte()));
            }
            msg.subAddress.subaddressType = dis.read();
            CdmaSmsSubaddress cdmaSmsSubaddress = msg.subAddress;
            if (((byte) dis.read()) != 1) {
                z = false;
            }
            cdmaSmsSubaddress.odd = z;
            int subaddrNbrOfDigits = (byte) dis.read();
            for (int i2 = 0; i2 < subaddrNbrOfDigits; i2++) {
                msg.subAddress.digits.add(Byte.valueOf(dis.readByte()));
            }
            int bearerDataLength = dis.read();
            for (int i3 = 0; i3 < bearerDataLength; i3++) {
                msg.bearerData.add(Byte.valueOf(dis.readByte()));
            }
        } catch (IOException ex) {
            riljLog("sendSmsCdma: conversion from input stream to object failed: " + ex);
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void sendSms(int token, int messageRef, String format, String smsc, boolean isRetry, byte[] pdu, Message response) {
        IRadio radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_IMS_SEND_SMS_EX, response, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest));
            ImsSmsMessage msg = new ImsSmsMessage();
            msg.retry = isRetry;
            msg.messageRef = messageRef;
            int i = 1;
            if ("3gpp".equals(format)) {
                msg.tech = 1;
                GsmSmsMessage gsmMsg = constructGsmSendSmsRilRequest(smsc, IccUtils.bytesToHexString(pdu));
                msg.gsmMessage.add(gsmMsg);
            } else if ("3gpp2".equals(format)) {
                msg.tech = 2;
                CdmaSmsMessage cdmaMsg = new CdmaSmsMessage();
                constructCdmaSendSmsRilRequest(cdmaMsg, pdu);
                msg.cdmaMessage.add(cdmaMsg);
            } else {
                riljLog(rr.serialString() + "> SMS format Error");
                return;
            }
            try {
                radioProxy.sendImsSmsEx(rr.mSerial, msg);
                TelephonyMetrics telephonyMetrics = this.mMetrics;
                int intValue = this.mPhoneId.intValue();
                int i2 = rr.mSerial;
                if (!"3gpp".equals(format)) {
                    i = 2;
                }
                telephonyMetrics.writeRilSendSms(intValue, i2, 3, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "sendImsGsmSms", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void acknowledgeLastIncomingGsmSms(boolean success, int cause, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_SMS_ACKNOWLEDGE_EX, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " success = " + success + " cause = " + cause);
            try {
                radioProxy.acknowledgeLastIncomingGsmSmsEx(rr.mSerial, success, cause);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "acknowledgeLastIncomingGsmSms", e);
            }
        }
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    public void acknowledgeLastIncomingCdmaSmsEx(boolean success, int cause, Message result) {
        IRadio radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            RILRequest rr = obtainRequest(MtkRILConstants.RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE_EX, result, this.mRILDefaultWorkSource);
            riljLog(rr.serialString() + "> " + requestToString(rr.mRequest) + " success = " + success + " cause = " + cause);
            CdmaSmsAck msg = new CdmaSmsAck();
            msg.errorClass = !success ? 1 : 0;
            msg.smsCauseCode = cause;
            try {
                radioProxy.acknowledgeLastIncomingCdmaSmsEx(rr.mSerial, msg);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(rr, "acknowledgeLastIncomingCdmaSms", e);
            }
        }
    }

    private void acquireWakeLock(RILRequest rr, int wakeLockType) {
        synchronized (rr) {
            if (rr.mWakeLockType != -1) {
                Rlog.d(IMSRIL_LOG_TAG, "Failed to aquire wakelock for " + rr.serialString());
                return;
            }
            switch (wakeLockType) {
                case 0:
                    synchronized (this.mWakeLock) {
                        this.mWakeLock.acquire();
                        this.mWakeLockCount++;
                        this.mWlSequenceNum++;
                        String clientId = getWorkSourceClientId(rr.mWorkSource);
                        if (!this.mClientWakelockTracker.isClientActive(clientId)) {
                            if (this.mActiveWakelockWorkSource != null) {
                                this.mActiveWakelockWorkSource.add(rr.mWorkSource);
                            } else {
                                this.mActiveWakelockWorkSource = rr.mWorkSource;
                            }
                            this.mWakeLock.setWorkSource(this.mActiveWakelockWorkSource);
                        }
                        this.mClientWakelockTracker.startTracking(rr.mClientId, rr.mRequest, rr.mSerial, this.mWakeLockCount);
                        Message msg = this.mRilHandler.obtainMessage(2);
                        msg.arg1 = this.mWlSequenceNum;
                        this.mRilHandler.sendMessageDelayed(msg, this.mWakeLockTimeout);
                        break;
                    }
                case 1:
                    synchronized (this.mAckWakeLock) {
                        this.mAckWakeLock.acquire();
                        this.mAckWlSequenceNum++;
                        Message msg2 = this.mRilHandler.obtainMessage(4);
                        msg2.arg1 = this.mAckWlSequenceNum;
                        this.mRilHandler.sendMessageDelayed(msg2, this.mAckWakeLockTimeout);
                    }
                    break;
                default:
                    Rlog.w(IMSRIL_LOG_TAG, "Acquiring Invalid Wakelock type " + wakeLockType);
                    return;
            }
            rr.mWakeLockType = wakeLockType;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decrementWakeLock(RILRequest rr) {
        synchronized (rr) {
            switch (rr.mWakeLockType) {
                case -1:
                    break;
                case 0:
                    synchronized (this.mWakeLock) {
                        this.mClientWakelockTracker.stopTracking(rr.mClientId, rr.mRequest, rr.mSerial, this.mWakeLockCount > 1 ? this.mWakeLockCount - 1 : 0);
                        String clientId = getWorkSourceClientId(rr.mWorkSource);
                        if (!this.mClientWakelockTracker.isClientActive(clientId) && this.mActiveWakelockWorkSource != null) {
                            this.mActiveWakelockWorkSource.remove(rr.mWorkSource);
                            if (this.mActiveWakelockWorkSource.size() == 0) {
                                this.mActiveWakelockWorkSource = null;
                            }
                            this.mWakeLock.setWorkSource(this.mActiveWakelockWorkSource);
                        }
                        if (this.mWakeLockCount > 1) {
                            this.mWakeLockCount--;
                        } else {
                            this.mWakeLockCount = 0;
                            this.mWakeLock.release();
                        }
                    }
                    break;
                case 1:
                    break;
                default:
                    Rlog.w(IMSRIL_LOG_TAG, "Decrementing Invalid Wakelock type " + rr.mWakeLockType);
                    break;
            }
            rr.mWakeLockType = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean clearWakeLock(int wakeLockType) {
        if (wakeLockType == 0) {
            synchronized (this.mWakeLock) {
                if (this.mWakeLockCount == 0 && !this.mWakeLock.isHeld()) {
                    return false;
                }
                Rlog.d(IMSRIL_LOG_TAG, "NOTE: mWakeLockCount is " + this.mWakeLockCount + "at time of clearing");
                this.mWakeLockCount = 0;
                this.mWakeLock.release();
                this.mClientWakelockTracker.stopTrackingAll();
                this.mActiveWakelockWorkSource = null;
                return true;
            }
        }
        synchronized (this.mAckWakeLock) {
            if (!this.mAckWakeLock.isHeld()) {
                return false;
            }
            this.mAckWakeLock.release();
            return true;
        }
    }

    private void clearRequestList(int error, boolean loggable) {
        synchronized (this.mRequestList) {
            int count = this.mRequestList.size();
            if (loggable) {
                Rlog.d(IMSRIL_LOG_TAG, "clearRequestList  mWakeLockCount=" + this.mWakeLockCount + " mRequestList=" + count);
            }
            for (int i = 0; i < count; i++) {
                RILRequest rr = this.mRequestList.valueAt(i);
                if (loggable) {
                    Rlog.d(IMSRIL_LOG_TAG, i + ": [" + rr.mSerial + "] " + requestToString(rr.mRequest));
                }
                rr.onError(error, null);
                decrementWakeLock(rr);
                rr.release();
            }
            this.mRequestList.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RILRequest findAndRemoveRequestFromList(int serial) {
        RILRequest rr;
        synchronized (this.mRequestList) {
            rr = this.mRequestList.get(serial);
            if (rr != null) {
                this.mRequestList.remove(serial);
            }
        }
        return rr;
    }

    private void addToRilHistogram(RILRequest rr) {
        long endTime = SystemClock.elapsedRealtime();
        int totalTime = (int) (endTime - rr.mStartTimeMs);
        synchronized (mRilTimeHistograms) {
            TelephonyHistogram entry = mRilTimeHistograms.get(rr.mRequest);
            if (entry == null) {
                entry = new TelephonyHistogram(1, rr.mRequest, 5);
                mRilTimeHistograms.put(rr.mRequest, entry);
            }
            entry.addTimeTaken(totalTime);
        }
    }

    static String responseToString(int response) {
        if (response == 1000) {
            return "RADIO_STATE_CHANGED";
        }
        if (response == 3015) {
            return "INCOMING_CALL_INDICATION";
        }
        if (response == 3024) {
            return "CIPHER_INDICATION";
        }
        if (response == 3027) {
            return "SPEECH_CODEC_INFO";
        }
        if (response == 3085) {
            return "IMS_MULTIIMS_COUNT";
        }
        switch (response) {
            case MtkRILConstants.RIL_UNSOL_CALL_INFO_INDICATION /* 3031 */:
                return "CALL_INFO_INDICATION";
            case MtkRILConstants.RIL_UNSOL_ECONF_RESULT_INDICATION /* 3032 */:
                return "ECONF_RESULT_INDICATION";
            case MtkRILConstants.RIL_UNSOL_SIP_CALL_PROGRESS_INDICATOR /* 3033 */:
                return "SIP_CALL_PROGRESS_INDICATOR";
            case MtkRILConstants.RIL_UNSOL_CALLMOD_CHANGE_INDICATOR /* 3034 */:
                return "CALLMOD_CHANGE_INDICATOR";
            case MtkRILConstants.RIL_UNSOL_VIDEO_CAPABILITY_INDICATOR /* 3035 */:
                return "VIDEO_CAPABILITY_INDICATOR";
            case MtkRILConstants.RIL_UNSOL_ON_USSI /* 3036 */:
                return "ON_USSI";
            case MtkRILConstants.RIL_UNSOL_GET_PROVISION_DONE /* 3037 */:
                return "GET_PROVISION_DONE";
            case MtkRILConstants.RIL_UNSOL_IMS_RTP_INFO /* 3038 */:
                return "UNSOL_IMS_RTP_INFO";
            case MtkRILConstants.RIL_UNSOL_ON_XUI /* 3039 */:
                return "ON_XUI";
            case MtkRILConstants.RIL_UNSOL_IMS_EVENT_PACKAGE_INDICATION /* 3040 */:
                return "IMS_EVENT_PACKAGE_INDICATION";
            case MtkRILConstants.RIL_UNSOL_IMS_REGISTRATION_INFO /* 3041 */:
                return "IMS_REGISTRATION_INFO";
            case MtkRILConstants.RIL_UNSOL_IMS_ENABLE_DONE /* 3042 */:
                return "IMS_ENABLE_DONE";
            case MtkRILConstants.RIL_UNSOL_IMS_DISABLE_DONE /* 3043 */:
                return "IMS_DISABLE_DONE";
            case MtkRILConstants.RIL_UNSOL_IMS_ENABLE_START /* 3044 */:
                return "IMS_ENABLE_START";
            case MtkRILConstants.RIL_UNSOL_IMS_DISABLE_START /* 3045 */:
                return "IMS_DISABLE_START";
            case MtkRILConstants.RIL_UNSOL_ECT_INDICATION /* 3046 */:
                return "ECT_INDICATION";
            case MtkRILConstants.RIL_UNSOL_VOLTE_SETTING /* 3047 */:
                return "VOLTE_SETTING";
            default:
                switch (response) {
                    case MtkRILConstants.RIL_UNSOL_IMS_BEARER_ACTIVATION /* 3049 */:
                        return "IMS_BEARER_ACTIVATION";
                    case MtkRILConstants.RIL_UNSOL_IMS_BEARER_DEACTIVATION /* 3050 */:
                        return "IMS_BEARER_DEACTIVATION";
                    case MtkRILConstants.RIL_UNSOL_IMS_BEARER_INIT /* 3051 */:
                        return "RIL_UNSOL_IMS_BEARER_INIT";
                    case MtkRILConstants.RIL_UNSOL_IMS_DEREG_DONE /* 3052 */:
                        return "IMS_DEREG_DONE";
                    default:
                        switch (response) {
                            case MtkRILConstants.RIL_UNSOL_IMS_CONFIG_DYNAMIC_IMS_SWITCH_COMPLETE /* 3091 */:
                                return "DYNAMIC_IMS_SWITCH_COMPLETE";
                            case MtkRILConstants.RIL_UNSOL_IMS_CONFIG_FEATURE_CHANGED /* 3092 */:
                                return "IMS_FEATURE_CHANGED";
                            case MtkRILConstants.RIL_UNSOL_IMS_CONFIG_CONFIG_CHANGED /* 3093 */:
                                return "IMS_CONFIG_CHANGED";
                            case MtkRILConstants.RIL_UNSOL_IMS_CONFIG_CONFIG_LOADED /* 3094 */:
                                return "IMS_CONFIG_LOADED";
                            default:
                                switch (response) {
                                    case MtkRILConstants.RIL_UNSOL_ON_VOLTE_SUBSCRIPTION /* 3110 */:
                                        return "RIL_UNSOL_ON_VOLTE_SUBSCRIPTION";
                                    case MtkRILConstants.RIL_UNSOL_IMS_DATA_INFO_NOTIFY /* 3111 */:
                                        return "RIL_UNSOL_IMS_DATA_INFO_NOTIFY";
                                    case MtkRILConstants.RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX /* 3112 */:
                                        return "RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX";
                                    case MtkRILConstants.RIL_UNSOL_RESPONSE_NEW_SMS_EX /* 3113 */:
                                        return "RIL_UNSOL_RESPONSE_NEW_SMS_EX";
                                    default:
                                        switch (response) {
                                            case MtkRILConstants.RIL_UNSOL_RESPONSE_CDMA_NEW_SMS_EX /* 3116 */:
                                                return "UNSOL_CDMA_NEW_SMS_EX";
                                            case MtkRILConstants.RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE /* 3117 */:
                                                return "RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE";
                                            default:
                                                return "<unknown response>" + String.valueOf(response);
                                        }
                                }
                        }
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String requestToString(int request) {
        switch (request) {
            case 15:
                return "SWITCH_WAITING_OR_HOLDING_AND_ACTIVE";
            case 16:
                return "CONFERENCE";
            default:
                switch (request) {
                    case 31:
                        return "GET_CLIR";
                    case 32:
                        return "SET_CLIR";
                    case 33:
                        return "QUERY_CALL_FORWARD_STATUS";
                    case 34:
                        return "SET_CALL_FORWARD";
                    case 35:
                        return "QUERY_CALL_WAITING";
                    case 36:
                        return "SET_CALL_WAITING";
                    default:
                        switch (request) {
                            case 42:
                                return "QUERY_FACILITY_LOCK";
                            case 43:
                                return "SET_FACILITY_LOCK";
                            case 44:
                                return "CHANGE_BARRING_PASSWORD";
                            default:
                                switch (request) {
                                    case 49:
                                        return "DTMF_START";
                                    case 50:
                                        return "DTMF_STOP";
                                    default:
                                        switch (request) {
                                            case MtkRILConstants.RIL_REQUEST_SET_IMS_ENABLE /* 2069 */:
                                                return "SET_IMS_ENABLE";
                                            case MtkRILConstants.RIL_REQUEST_SET_VOLTE_ENABLE /* 2070 */:
                                                return "SET_VOLTE_ENABLE";
                                            case MtkRILConstants.RIL_REQUEST_SET_WFC_ENABLE /* 2071 */:
                                                return "SET_WFC_ENABLE";
                                            case MtkRILConstants.RIL_REQUEST_SET_VILTE_ENABLE /* 2072 */:
                                                return "SET_VILTE_ENABLE";
                                            case MtkRILConstants.RIL_REQUEST_SET_VIWIFI_ENABLE /* 2073 */:
                                                return "SET_VIWIFI_ENABLE";
                                            case MtkRILConstants.RIL_REQUEST_SET_IMS_VOICE_ENABLE /* 2074 */:
                                                return "SET_IMS_VOICE_ENABLE";
                                            case MtkRILConstants.RIL_REQUEST_SET_IMS_VIDEO_ENABLE /* 2075 */:
                                                return "SET_IMS_VIDEO_ENABLE";
                                            case MtkRILConstants.RIL_REQUEST_VIDEO_CALL_ACCEPT /* 2076 */:
                                                return "VIDEO_CALL_ACCEPT";
                                            case MtkRILConstants.RIL_REQUEST_SET_IMSCFG /* 2077 */:
                                                return "SET_IMSCFG";
                                            case MtkRILConstants.RIL_REQUEST_GET_PROVISION_VALUE /* 2078 */:
                                                return "GET_PROVISION_VALUE";
                                            case MtkRILConstants.RIL_REQUEST_SET_PROVISION_VALUE /* 2079 */:
                                                return "SET_PROVISION_VALUE";
                                            case MtkRILConstants.RIL_REQUEST_IMS_BEARER_ACTIVATION_DONE /* 2080 */:
                                                return "IMS_BEARER_ACTIVATION_DONE";
                                            case MtkRILConstants.RIL_REQUEST_IMS_BEARER_DEACTIVATION_DONE /* 2081 */:
                                                return "IMS_BEARER_DEACTIVATION_DONE";
                                            case MtkRILConstants.RIL_REQUEST_IMS_DEREG_NOTIFICATION /* 2082 */:
                                                return "IMS_DEREG_NOTIFICATION";
                                            case MtkRILConstants.RIL_REQUEST_IMS_ECT /* 2083 */:
                                                return "IMS_ECT";
                                            case MtkRILConstants.RIL_REQUEST_HOLD_CALL /* 2084 */:
                                                return "HOLD_CALL";
                                            case MtkRILConstants.RIL_REQUEST_RESUME_CALL /* 2085 */:
                                                return "RESUME_CALL";
                                            default:
                                                switch (request) {
                                                    case MtkRILConstants.RIL_REQUEST_IMS_EMERGENCY_DIAL /* 2087 */:
                                                        return "IMS_EMERGENCY_DIAL";
                                                    case MtkRILConstants.RIL_REQUEST_SET_IMS_RTP_REPORT /* 2088 */:
                                                        return "RIL_REQUEST_SET_IMS_RTP_REPORT";
                                                    case MtkRILConstants.RIL_REQUEST_CONFERENCE_DIAL /* 2089 */:
                                                        return "RIL_REQUEST_CONFERENCE_DIAL";
                                                    case MtkRILConstants.RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER /* 2090 */:
                                                        return "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER";
                                                    case MtkRILConstants.RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER /* 2091 */:
                                                        return "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER";
                                                    case MtkRILConstants.RIL_REQUEST_VT_DIAL_WITH_SIP_URI /* 2092 */:
                                                        return "VT_DIAL_WITH_SIP_URI";
                                                    case MtkRILConstants.RIL_REQUEST_SEND_USSI /* 2093 */:
                                                        return "SEND_USSI";
                                                    case MtkRILConstants.RIL_REQUEST_CANCEL_USSI /* 2094 */:
                                                        return "CANCEL_USSI";
                                                    case MtkRILConstants.RIL_REQUEST_SET_WFC_PROFILE /* 2095 */:
                                                        return "SET_WFC_PROFILE";
                                                    case MtkRILConstants.RIL_REQUEST_PULL_CALL /* 2096 */:
                                                        return "PULL_CALL";
                                                    case MtkRILConstants.RIL_REQUEST_SET_IMS_REGISTRATION_REPORT /* 2097 */:
                                                        return "SET_IMS_REGISTRATION_REPORT";
                                                    case MtkRILConstants.RIL_REQUEST_IMS_DIAL /* 2098 */:
                                                        return "IMS_DIAL";
                                                    case MtkRILConstants.RIL_REQUEST_IMS_VT_DIAL /* 2099 */:
                                                        return "IMS_VT_DIAL";
                                                    default:
                                                        switch (request) {
                                                            case MtkRILConstants.RIL_REQUEST_SET_CLIP /* 2103 */:
                                                                return "SET_CLIP";
                                                            case MtkRILConstants.RIL_REQUEST_GET_COLP /* 2104 */:
                                                                return "GET_COLP";
                                                            case MtkRILConstants.RIL_REQUEST_GET_COLR /* 2105 */:
                                                                return "GET_COLR";
                                                            default:
                                                                switch (request) {
                                                                    case MtkRILConstants.RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE /* 2122 */:
                                                                        return "RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE";
                                                                    case MtkRILConstants.RIL_REQUEST_SET_COLP /* 2123 */:
                                                                        return "SET_COLP";
                                                                    case MtkRILConstants.RIL_REQUEST_SET_COLR /* 2124 */:
                                                                        return "SET_COLR";
                                                                    case MtkRILConstants.RIL_REQUEST_QUERY_CALL_FORWARD_IN_TIME_SLOT /* 2125 */:
                                                                        return "QUERY_CALL_FORWARD_IN_TIME_SLOT";
                                                                    case MtkRILConstants.RIL_REQUEST_SET_CALL_FORWARD_IN_TIME_SLOT /* 2126 */:
                                                                        return "SET_CALL_FORWARD_IN_TIME_SLOT";
                                                                    case MtkRILConstants.RIL_REQUEST_RUN_GBA /* 2127 */:
                                                                        return "RIL_REQUEST_RUN_GBA";
                                                                    case MtkRILConstants.RIL_REQUEST_SET_MD_IMSCFG /* 2128 */:
                                                                        return "RIL_REQUEST_SET_MD_IMSCFG";
                                                                    default:
                                                                        switch (request) {
                                                                            case MtkRILConstants.RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION /* 2135 */:
                                                                                return "RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION";
                                                                            case MtkRILConstants.RIL_REQUEST_IMS_CONFIG_SET_FEATURE /* 2136 */:
                                                                                return "IMS_CONFIG_SET_FEATURE";
                                                                            case MtkRILConstants.RIL_REQUEST_IMS_CONFIG_GET_FEATURE /* 2137 */:
                                                                                return "IMS_CONFIG_GET_FEATURE";
                                                                            case MtkRILConstants.RIL_REQUEST_IMS_CONFIG_SET_PROVISION /* 2138 */:
                                                                                return "IMS_CONFIG_SET_PROVISION";
                                                                            case MtkRILConstants.RIL_REQUEST_IMS_CONFIG_GET_PROVISION /* 2139 */:
                                                                                return "IMS_CONFIG_GET_PROVISION";
                                                                            case MtkRILConstants.RIL_REQUEST_IMS_CONFIG_SET_RESOURCE_CAP /* 2140 */:
                                                                                return "IMS_CONFIG_SET_RESOURCE_CAP";
                                                                            case MtkRILConstants.RIL_REQUEST_IMS_CONFIG_GET_RESOURCE_CAP /* 2141 */:
                                                                                return "IMS_CONFIG_GET_RESOURCE_CAP";
                                                                            default:
                                                                                switch (request) {
                                                                                    case MtkRILConstants.RIL_REQUEST_GET_XCAP_STATUS /* 2163 */:
                                                                                        return "RIL_REQUEST_GET_XCAP_STATUS";
                                                                                    case MtkRILConstants.RIL_REQUEST_RESET_SUPP_SERV /* 2164 */:
                                                                                        return "RIL_REQUEST_RESET_SUPP_SERV";
                                                                                    default:
                                                                                        switch (request) {
                                                                                            case MtkRILConstants.RIL_REQUEST_SET_RCS_UA_ENABLE /* 2166 */:
                                                                                                return "RIL_REQUEST_SET_RCS_UA_ENABLE";
                                                                                            case MtkRILConstants.RIL_REQUEST_SETUP_XCAP_USER_AGENT_STRING /* 2167 */:
                                                                                                return "SETUP_XCAP_USER_AGENT_STRING";
                                                                                            default:
                                                                                                switch (request) {
                                                                                                    case 10:
                                                                                                        return "DIAL";
                                                                                                    case 12:
                                                                                                        return "HANGUP";
                                                                                                    case 18:
                                                                                                        return "LAST_CALL_FAIL_CAUSE";
                                                                                                    case 24:
                                                                                                        return "DTMF";
                                                                                                    case 40:
                                                                                                        return "ANSWER";
                                                                                                    case 53:
                                                                                                        return "SET_MUTE";
                                                                                                    case 55:
                                                                                                        return "QUERY_CLIP";
                                                                                                    case NvItem.LTE_BAND_ENABLE_26 /* 72 */:
                                                                                                        return "EXPLICIT_CALL_TRANSFER";
                                                                                                    case 99:
                                                                                                        return "EXIT_EMERGENCY_CALLBACK_MODE";
                                                                                                    case 129:
                                                                                                        return "SHUTDOWN";
                                                                                                    case ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_HOLD /* 135 */:
                                                                                                        return "GET_ACTIVITY_INFO";
                                                                                                    case MtkRILConstants.RIL_REQUEST_SET_CALL_INDICATION /* 2016 */:
                                                                                                        return "RIL_REQUEST_SET_CALL_INDICATION";
                                                                                                    case MtkRILConstants.RIL_REQUEST_SET_ECC_SERVICE_CATEGORY /* 2018 */:
                                                                                                        return "SET_ECC_SERVICE_CATEGORY";
                                                                                                    case MtkRILConstants.RIL_REQUEST_SET_ECC_LIST /* 2030 */:
                                                                                                        return "SET_ECC_LIST";
                                                                                                    case MtkRILConstants.RIL_REQUEST_IMS_SEND_SMS_EX /* 2133 */:
                                                                                                        return "RIL_REQUEST_IMS_SEND_SMS_EX";
                                                                                                    case MtkRILConstants.RIL_REQUEST_SMS_ACKNOWLEDGE_EX /* 2170 */:
                                                                                                        return "RIL_REQUEST_SMS_ACKNOWLEDGE_EX";
                                                                                                    case MtkRILConstants.RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE_EX /* 2172 */:
                                                                                                        return "CDMA_SMS_ACKNOWLEDGE_EX";
                                                                                                    default:
                                                                                                        return "<unknown request>: " + String.valueOf(request);
                                                                                                }
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String retToString(int req, Object ret) {
        if (ret == null) {
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        if (ret instanceof int[]) {
            int[] intArray = (int[]) ret;
            int length = intArray.length;
            StringBuilder sb = new StringBuilder("{");
            if (length > 0) {
                int i = intArray[0];
                sb.append(i);
                for (int i2 = 0 + 1; i2 < length; i2++) {
                    sb.append(", ");
                    sb.append(intArray[i2]);
                }
            }
            sb.append("}");
            String s = sb.toString();
            return s;
        } else if (ret instanceof String[]) {
            String[] strings = (String[]) ret;
            int length2 = strings.length;
            StringBuilder sb2 = new StringBuilder("{");
            if (length2 > 0) {
                sb2.append(strings[0]);
                for (int i3 = 0 + 1; i3 < length2; i3++) {
                    sb2.append(", ");
                    sb2.append(strings[i3]);
                }
            }
            sb2.append("}");
            String s2 = sb2.toString();
            return s2;
        } else {
            String s3 = ret.toString();
            return s3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void riljLog(String msg) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(msg);
        if (this.mPhoneId != null) {
            str = " [SUB" + this.mPhoneId + "]";
        } else {
            str = MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        sb.append(str);
        Rlog.d(IMSRIL_LOG_TAG, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void riljLoge(String msg) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(msg);
        if (this.mPhoneId != null) {
            str = " [SUB" + this.mPhoneId + "]";
        } else {
            str = MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        sb.append(str);
        Rlog.e(IMSRIL_LOG_TAG, sb.toString());
    }

    void riljLoge(String msg, Exception e) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(msg);
        if (this.mPhoneId != null) {
            str = " [SUB" + this.mPhoneId + "]";
        } else {
            str = MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        sb.append(str);
        Rlog.e(IMSRIL_LOG_TAG, sb.toString(), e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void riljLogv(String msg) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(msg);
        if (this.mPhoneId != null) {
            str = " [SUB" + this.mPhoneId + "]";
        } else {
            str = MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        sb.append(str);
        Rlog.v(IMSRIL_LOG_TAG, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unsljLog(int response) {
        riljLog("[UNSL]< " + responseToString(response));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unsljLogMore(int response, String more) {
        riljLog("[UNSL]< " + responseToString(response) + " " + more);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unsljLogRet(int response, Object ret) {
        riljLog("[UNSL]< " + responseToString(response) + " " + retToString(response, ret));
    }

    void unsljLogvRet(int response, Object ret) {
        riljLogv("[UNSL]< " + responseToString(response) + " " + retToString(response, ret));
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void accept() {
        accept(null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void getProvisionValue(int phoneid, String provisionStr, Message response) {
        getProvisionValue(provisionStr, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void setProvisionValue(int phoneid, String provisionStr, String provisionValue, Message response) {
        setProvisionValue(provisionStr, provisionValue, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void sendWfcProfileInfo(int wfcPreference, int phoneid, Message response) {
        sendWfcProfileInfo(wfcPreference, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void responseBearerActivationDone(int phoneid, int aid, int status) {
        responseBearerActivationDone(aid, status, (Message) null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void responseBearerDeactivationDone(int phoneid, int aid, int status) {
        responseBearerDeactivationDone(aid, status, (Message) null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void setImsBearerNotification(int phoneid, int enable) {
        setImsBearerNotification(enable, (Message) null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void start(String callee, int clirMode, boolean isEmergency, boolean isVideoCall, int phoneid, Message response) {
        start(callee, clirMode, isEmergency, isVideoCall, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void startConference(String[] participants, int clirMode, boolean isVideoCall, int phoneid, Message response) {
        startConference(participants, clirMode, isVideoCall, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void getLastCallFailCause(int phoneid, Message response) {
        getLastCallFailCause(response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void setImsCfg(int[] params, int phoneid, Message response) {
        setImsCfg(params, response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void setImsRegistrationReport(int phoneid, Message response) {
        setImsRegistrationReport(response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void turnOffIms(int phoneid, Message response) {
        turnOffIms(response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void turnOnIms(int phoneid, Message response) {
        turnOnIms(response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void reject(int callId) {
        hangup(callId, null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void terminate(int callId) {
        hangup(callId, null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void merge(Message response) {
        conference(response);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void forceHangup(int callId) {
        forceHangup(callId, null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void acceptVideoCall(int videoMode, int callId) {
        acceptVideoCall(videoMode, callId, null);
    }

    @Override // com.mediatek.ims.ril.ImsCommandsInterface
    @Deprecated
    public void setCallIndication(int mode, int callId, int seqNum) {
        setCallIndication(mode, callId, seqNum, null);
    }
}
