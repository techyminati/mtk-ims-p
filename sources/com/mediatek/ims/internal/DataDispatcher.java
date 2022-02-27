package com.mediatek.ims.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.radio.V1_0.DataCallFailCause;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.telephony.Rlog;
import android.telephony.SubscriptionManager;
import android.util.SparseArray;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.mediatek.ims.ImsAdapter;
import com.mediatek.ims.ImsEventDispatcher;
import com.mediatek.ims.VaConstants;
import com.mediatek.ims.common.SubscriptionManagerHelper;
import com.mediatek.ims.internal.DataDispatcherUtil;
import java.util.HashMap;
import vendor.mediatek.hardware.netdagent.V1_0.INetdagent;
/* loaded from: classes.dex */
public class DataDispatcher implements ImsEventDispatcher.VaEventDispatcher {
    private static final String FAILCAUSE_LOST_CONNECTION = "LOST_CONNECTION";
    private static final String FAILCAUSE_NONE = "";
    private static final String FAILCAUSE_UNKNOWN = "UNKNOWN";
    static final int MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT = 800004;
    static final int MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED = 800001;
    static final int MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL = 800003;
    static final int MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED = 800002;
    private static final String TAG = DataDispatcher.class.getSimpleName();
    private Context mContext;
    private boolean mIsEnable;
    private int mPhoneId;
    private int mSubId;
    private ImsDataTracker mTracker;
    private Object mLock = new Object();
    private final int MSG_ID_IMSA_DISABLE_SERVICE = 700001;
    private final int MSG_ID_NOTIFY_SUBCRIPTION_CHANAGED = 600001;
    private HashMap<String, Integer> mFailCauses = new HashMap<String, Integer>() { // from class: com.mediatek.ims.internal.DataDispatcher.1
        private static final long serialVersionUID = 1;

        {
            put("", 0);
            put("OPERATOR_BARRED", 8);
            put("NAS_SIGNALLING", 14);
            put("MBMS_CAPABILITIES_INSUFFICIENT", 24);
            put("LLC_SNDCP", 25);
            put("INSUFFICIENT_RESOURCES", 26);
            put("MISSING_UNKNOWN_APN", 27);
            put("UNKNOWN_PDP_ADDRESS_TYPE", 28);
            put("USER_AUTHENTICATION", 29);
            put("ACTIVATION_REJECT_GGSN", 30);
            put("ACTIVATION_REJECT_UNSPECIFIED", 31);
            put("SERVICE_OPTION_NOT_SUPPORTED", 32);
            put("SERVICE_OPTION_NOT_SUBSCRIBED", 33);
            put("SERVICE_OPTION_OUT_OF_ORDER", 34);
            put("NSAPI_IN_USE", 35);
            put("REGULAR_DEACTIVATION", 36);
            put("QOS_NOT_ACCEPTED", 37);
            put("NETWORK_FAILURE", 38);
            put("UMTS_REACTIVATION_REQ", 39);
            put("FEATURE_NOT_SUPP", 40);
            put("TFT_SEMANTIC_ERROR", 41);
            put("TFT_SYTAX_ERROR", 42);
            put("UNKNOWN_PDP_CONTEXT", 43);
            put("FILTER_SEMANTIC_ERROR", 44);
            put("FILTER_SYTAX_ERROR", 45);
            put("PDP_WITHOUT_ACTIVE_TFT", 46);
            put("MULTICAST_GROUP_MEMBERSHIP_TIMEOUT", 47);
            put("BCM_VIOLATION", 48);
            put("LAST_PDN_DISC_NOT_ALLOWED", 49);
            put("ONLY_IPV4_ALLOWED", 50);
            put("ONLY_IPV6_ALLOWED", 51);
            put("ONLY_SINGLE_BEARER_ALLOWED", 52);
            put("ESM_INFO_NOT_RECEIVED", 53);
            put("PDN_CONN_DOES_NOT_EXIST", 54);
            put("MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED", 55);
            put("COLLISION_WITH_NW_INITIATED_REQUEST", 56);
            put("UNSUPPORTED_QCI_VALUE", 59);
            put("BEARER_HANDLING_NOT_SUPPORT", 60);
            put("MAX_ACTIVE_PDP_CONTEXT_REACHED", 65);
            put("UNSUPPORTED_APN_IN_CURRENT_PLMN", 66);
            put("INVALID_TRANSACTION_ID", 81);
            put("MESSAGE_INCORRECT_SEMANTIC", 95);
            put("INVALID_MANDATORY_INFO", 96);
            put("MESSAGE_TYPE_UNSUPPORTED", 97);
            put("MSG_TYPE_NONCOMPATIBLE_STATE", 98);
            put("UNKNOWN_INFO_ELEMENT", 99);
            put("CONDITIONAL_IE_ERROR", 100);
            put("MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE", 101);
            put("PROTOCOL_ERRORS", 111);
            put("APN_TYPE_CONFLICT", Integer.valueOf((int) DataCallFailCause.APN_TYPE_CONFLICT));
            put("REGISTRATION_FAIL", -1);
            put("GPRS_REGISTRATION_FAIL", -2);
            put("SIGNAL_LOST", -3);
            put("PREF_RADIO_TECH_CHANGED", -4);
            put("RADIO_POWER_OFF", -5);
            put("TETHERED_CALL_ACTIVE", -6);
            put("PDP_FAIL_ROUTER_ADVERTISEMENT", -7);
            put("PDP_FAIL_FALLBACK_RETRY", -1000);
            put("INSUFFICIENT_LOCAL_RESOURCES", 1048574);
            put("ERROR_UNSPECIFIED", 65535);
            put(DataDispatcher.FAILCAUSE_UNKNOWN, 65536);
            put("RADIO_NOT_AVAILABLE", 65537);
            put("UNACCEPTABLE_NETWORK_PARAMETER", 65538);
            put("CONNECTION_TO_DATACONNECTIONAC_BROKEN", 65539);
            put(DataDispatcher.FAILCAUSE_LOST_CONNECTION, 65540);
            put("RESET_BY_FRAMEWORK", 65541);
            put("PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP", 5122);
            put("TCM_ESM_TIMER_TIMEOUT", 86058);
            put("MTK_TCM_ESM_TIMER_TIMEOUT", 3910);
            put("DUE_TO_REACH_RETRY_COUNTER", 3599);
            put("OEM_DCFAILCAUSE_12", Integer.valueOf((int) DataCallFailCause.OEM_DCFAILCAUSE_12));
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.internal.DataDispatcher.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equalsIgnoreCase("android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED")) {
                String type = intent.getStringExtra("apnType");
                String failure = intent.getStringExtra("failCause");
                char c = 65535;
                int subId = intent.getIntExtra("subscription", -1);
                DataDispatcher dataDispatcher = DataDispatcher.this;
                dataDispatcher.logd("ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED subId: " + subId + ", mSubId: " + DataDispatcher.this.mSubId);
                if (DataDispatcher.this.mSubId == subId && failure != null && failure.length() > 0) {
                    DataDispatcher dataDispatcher2 = DataDispatcher.this;
                    dataDispatcher2.logd("onReceive, intent action is " + intent.getAction());
                    DataDispatcher dataDispatcher3 = DataDispatcher.this;
                    dataDispatcher3.logd("APN: " + type + " failCause: " + failure);
                    int hashCode = type.hashCode();
                    if (hashCode != 104399) {
                        if (hashCode == 1629013393 && type.equals("emergency")) {
                            c = 1;
                        }
                    } else if (type.equals("ims")) {
                        c = 0;
                    }
                    switch (c) {
                        case 0:
                            Handler imsHandle = DataDispatcher.this.mImsConnection.getHandler();
                            imsHandle.sendMessage(imsHandle.obtainMessage(DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL, failure));
                            return;
                        case 1:
                            Handler emcHandle = DataDispatcher.this.mEmcConnection.getHandler();
                            emcHandle.sendMessage(emcHandle.obtainMessage(DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL, failure));
                            return;
                        default:
                            DataDispatcher dataDispatcher4 = DataDispatcher.this;
                            dataDispatcher4.loge("UnKnown APN: " + type);
                            return;
                    }
                }
            }
        }
    };
    private HandlerThread mDcHandlerThread = new HandlerThread("DcHandlerThread");
    private DataConnection mImsConnection = new DataConnection("ims", new Handler(this.mDcHandlerThread.getLooper()), 4);
    private DataConnection mEmcConnection = new DataConnection("emergency", new Handler(this.mDcHandlerThread.getLooper()), 10);
    private DataDispatcherUtil mDataDispatcherUtil = new DataDispatcherUtil();

    public DataDispatcher(Context context, ImsDataTracker tracker, int phoneId) {
        logd("constructor");
        this.mContext = context;
        this.mPhoneId = phoneId;
        this.mSubId = SubscriptionManagerHelper.getSubIdUsingPhoneId(this.mPhoneId);
        this.mTracker = tracker;
        this.mDcHandlerThread.start();
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void enableRequest(int phoneId) {
        logi("receive enableRequest");
        synchronized (this.mLock) {
            this.mIsEnable = true;
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED");
            this.mContext.registerReceiver(this.mReceiver, filter);
        }
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void disableRequest(int phoneId) {
        logi("receive disableRequest");
        synchronized (this.mLock) {
            this.mIsEnable = false;
            this.mContext.unregisterReceiver(this.mReceiver);
            this.mImsConnection.disable();
            this.mEmcConnection.disable();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00a2, code lost:
        if (r2.equals("emergency") == false) goto L_0x00af;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e3  */
    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void vaEventCallback(com.mediatek.ims.ImsAdapter.VaEvent r7) {
        /*
            r6 = this;
            boolean r0 = r6.mIsEnable
            r1 = 1
            if (r0 != r1) goto L_0x00fb
            com.mediatek.ims.internal.DataDispatcherUtil r0 = r6.mDataDispatcherUtil
            com.mediatek.ims.internal.DataDispatcherUtil$ImsBearerRequest r0 = r0.deCodeEvent(r7)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "got request: "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            r6.logi(r2)
            int r2 = r0.getRequestID()
            r3 = 900403(0xdbd33, float:1.261733E-39)
            if (r2 != r3) goto L_0x0088
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r3 = r0.getTransId()
            r2.append(r3)
            java.lang.String r3 = ","
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.append(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r3 = r6.mPhoneId
            r2.append(r3)
            java.lang.String r3 = ","
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.append(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.util.HashMap<java.lang.String, java.lang.Integer> r3 = r6.mFailCauses
            java.lang.String r4 = "UNKNOWN"
            java.lang.Object r3 = r3.get(r4)
            r2.append(r3)
            java.lang.String r3 = ""
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.append(r2)
            com.mediatek.ims.internal.DataDispatcherUtil r2 = r6.mDataDispatcherUtil
            r3 = 900405(0xdbd35, float:1.261736E-39)
            java.lang.String r4 = r1.toString()
            com.mediatek.ims.ImsAdapter$VaEvent r2 = r2.enCodeEvent(r3, r4)
            r6.sendVaEvent(r2)
            return
        L_0x0088:
            java.lang.String r2 = r0.getCapability()
            r3 = -1
            int r4 = r2.hashCode()
            r5 = 104399(0x197cf, float:1.46294E-40)
            if (r4 == r5) goto L_0x00a5
            r5 = 1629013393(0x6118c591, float:1.7613383E20)
            if (r4 == r5) goto L_0x009c
            goto L_0x00af
        L_0x009c:
            java.lang.String r4 = "emergency"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L_0x00af
            goto L_0x00b0
        L_0x00a5:
            java.lang.String r1 = "ims"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x00af
            r1 = 0
            goto L_0x00b0
        L_0x00af:
            r1 = r3
        L_0x00b0:
            switch(r1) {
                case 0: goto L_0x00e3;
                case 1: goto L_0x00cc;
                default: goto L_0x00b3;
            }
        L_0x00b3:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "not support capbility: "
            r1.append(r2)
            java.lang.String r2 = r0.getCapability()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r6.loge(r1)
            goto L_0x00fa
        L_0x00cc:
            com.mediatek.ims.internal.DataDispatcher$DataConnection r1 = r6.mEmcConnection
            android.os.Handler r1 = r1.getHandler()
            com.mediatek.ims.internal.DataDispatcher$DataConnection r2 = r6.mEmcConnection
            r2.putRequest(r0)
            int r2 = r0.getRequestID()
            android.os.Message r2 = r1.obtainMessage(r2)
            r1.sendMessage(r2)
            goto L_0x00fa
        L_0x00e3:
            com.mediatek.ims.internal.DataDispatcher$DataConnection r1 = r6.mImsConnection
            android.os.Handler r1 = r1.getHandler()
            com.mediatek.ims.internal.DataDispatcher$DataConnection r2 = r6.mImsConnection
            r2.putRequest(r0)
            int r2 = r0.getRequestID()
            android.os.Message r2 = r1.obtainMessage(r2)
            r1.sendMessage(r2)
        L_0x00fa:
            goto L_0x0100
        L_0x00fb:
            java.lang.String r0 = "ims service not be enabled"
            r6.loge(r0)
        L_0x0100:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.internal.DataDispatcher.vaEventCallback(com.mediatek.ims.ImsAdapter$VaEvent):void");
    }

    public void sendVaEvent(ImsAdapter.VaEvent event) {
        if (this.mIsEnable) {
            logi("send event [" + event.getRequestID() + ", " + event.getDataLen() + "]");
            this.mTracker.sendVaEvent(event);
            return;
        }
        loge("ims service not be enabled");
    }

    public void onSubscriptionsChanged() {
        int newSubId = SubscriptionManagerHelper.getSubIdUsingPhoneId(this.mPhoneId);
        if (this.mSubId != newSubId) {
            logd("onSubscriptionsChanged: subId: " + this.mSubId + ", newSubId: " + newSubId);
            this.mSubId = newSubId;
            this.mImsConnection.onSubscriptionsChanged();
            this.mEmcConnection.onSubscriptionsChanged();
        }
    }

    public void logd(String s) {
        String str = TAG;
        Rlog.d(str, "[" + this.mPhoneId + "]" + s);
    }

    public void logi(String s) {
        String str = TAG;
        Rlog.i(str, "[" + this.mPhoneId + "]" + s);
    }

    public void loge(String s) {
        String str = TAG;
        Rlog.e(str, "[" + this.mPhoneId + "]" + s);
    }

    /* loaded from: classes.dex */
    public class DataConnection extends StateMachine {
        private int mCapabiliy;
        private ConnectivityManager mConnectivityManager;
        private int mNetworkId;
        private String TAG = "DC-";
        private SparseArray<DataDispatcherUtil.ImsBearerRequest> mImsNetworkRequests = new SparseArray<>();
        private long mNetworkHandle = 0;
        private String mInterface = "";
        private String mFwInterface = "";
        private DefaultState mDefaultState = new DefaultState();
        private InactiveState mInactiveState = new InactiveState();
        private ActivatingState mActivatingState = new ActivatingState();
        private ActiveState mActiveState = new ActiveState();
        private DisconnectingState mDisconnectingState = new DisconnectingState();
        private NwAvailableCallback mNwAvailableCallback = new NwAvailableCallback(this);
        private NwLostCallback mNwLostCallback = new NwLostCallback(this);

        public DataConnection(String name, Handler mHandler, int capability) {
            super(name, mHandler);
            this.mCapabiliy = capability;
            this.mConnectivityManager = (ConnectivityManager) DataDispatcher.this.mContext.getSystemService("connectivity");
            addState(this.mDefaultState);
            addState(this.mInactiveState, this.mDefaultState);
            addState(this.mActivatingState, this.mDefaultState);
            addState(this.mActiveState, this.mDefaultState);
            addState(this.mDisconnectingState, this.mDefaultState);
            setInitialState(this.mInactiveState);
            start();
        }

        /* loaded from: classes.dex */
        private class DefaultState extends State {
            private DefaultState() {
            }

            public void enter() {
                DataConnection.this.logd("DefaultState: enter");
            }

            public void exit() {
                DataConnection.this.logd("DefaultState: exit");
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("DefaultState msg: " + DataConnection.this.msgToString(msg.what));
                int i = msg.what;
                if (i == 900008) {
                    DataConnection.this.rejectNetworkRequest(((Integer) DataDispatcher.this.mFailCauses.get("")).intValue());
                } else if (i != 900011) {
                    DataConnection dataConnection2 = DataConnection.this;
                    dataConnection2.loge("DefaultState not handled request: " + DataConnection.this.msgToString(msg.what));
                } else {
                    DataConnection.this.rejectNetworkReleased(((Integer) DataDispatcher.this.mFailCauses.get("")).intValue());
                }
                return true;
            }
        }

        /* loaded from: classes.dex */
        private class InactiveState extends State {
            private InactiveState() {
            }

            public void enter() {
                DataConnection.this.logd("InactiveState: enter");
            }

            public void exit() {
                DataConnection.this.logd("InactiveState: exit");
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("InactiveState msg: " + DataConnection.this.msgToString(msg.what));
                switch (msg.what) {
                    case 600001:
                    case VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ /* 900008 */:
                        if (!DataConnection.this.requestNetwork()) {
                            return true;
                        }
                        DataConnection.this.transitionTo(DataConnection.this.mActivatingState);
                        return true;
                    case 700001:
                        DataConnection.this.clearNwInfo(true);
                        return true;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED /* 800002 */:
                        break;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT /* 800004 */:
                        DataConnection.this.rejectNetworkRequest(((Integer) DataDispatcher.this.mFailCauses.get(DataDispatcher.FAILCAUSE_UNKNOWN)).intValue());
                        DataConnection.this.releaseNetwork();
                        DataConnection.this.onAbortNetworkCompleted();
                        return true;
                    case VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ /* 900011 */:
                        DataConnection.this.releaseNetwork();
                        break;
                    default:
                        DataConnection dataConnection2 = DataConnection.this;
                        dataConnection2.loge("InactiveState not handled request: " + DataConnection.this.msgToString(msg.what));
                        return false;
                }
                DataConnection.this.onReleaseNetworkCompleted();
                return true;
            }
        }

        /* loaded from: classes.dex */
        private class ActivatingState extends State {
            private ActivatingState() {
            }

            public void enter() {
                DataConnection.this.logd("ActivatingState: enter");
            }

            public void exit() {
                DataConnection.this.logd("ActivatingState: exit");
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("ActivatingState msg: " + DataConnection.this.msgToString(msg.what));
                switch (msg.what) {
                    case 600001:
                        DataConnection.this.releaseNetwork();
                        DataConnection.this.rejectNetworkRequest(((Integer) DataDispatcher.this.mFailCauses.get(DataDispatcher.FAILCAUSE_UNKNOWN)).intValue());
                        DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                        return true;
                    case 700001:
                        DataConnection.this.releaseNetwork();
                        DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                        DataConnection.this.clearNwInfo(true);
                        return true;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED /* 800001 */:
                        DataConnection.this.deferMessage(msg);
                        DataConnection.this.transitionTo(DataConnection.this.mActiveState);
                        return true;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL /* 800003 */:
                        DataConnection.this.releaseNetwork();
                        DataConnection.this.rejectNetworkRequest(((Integer) DataDispatcher.this.mFailCauses.get((String) msg.obj)).intValue());
                        DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                        return true;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT /* 800004 */:
                        DataConnection.this.deferMessage(msg);
                        DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                        return true;
                    default:
                        DataConnection dataConnection2 = DataConnection.this;
                        dataConnection2.loge("ActivatingState not handled request: " + DataConnection.this.msgToString(msg.what));
                        return false;
                }
            }
        }

        /* loaded from: classes.dex */
        private class ActiveState extends State {
            private ActiveState() {
            }

            public void enter() {
                DataConnection.this.logd("ActiveState: enter");
                DataConnection.this.setFirewallInterfaceChain(true);
                DataConnection.this.mFwInterface = DataConnection.this.mInterface;
            }

            public void exit() {
                DataConnection.this.logd("ActiveState: exit");
                DataConnection.this.setFirewallInterfaceChain(false);
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("ActiveState msg: " + DataConnection.this.msgToString(msg.what));
                switch (msg.what) {
                    case 700001:
                        DataConnection.this.releaseNetwork();
                        DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                        DataConnection.this.clearNwInfo(true);
                        return true;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED /* 800001 */:
                        DataConnection.this.onRequestNetworkCompleted();
                        return true;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED /* 800002 */:
                        DataConnection.this.notifyNetworkLosted();
                        DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                        return true;
                    case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT /* 800004 */:
                        DataConnection.this.deferMessage(msg);
                        DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                        return true;
                    case VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ /* 900011 */:
                        DataConnection.this.releaseNetwork();
                        DataConnection.this.transitionTo(DataConnection.this.mDisconnectingState);
                        return true;
                    default:
                        DataConnection dataConnection2 = DataConnection.this;
                        dataConnection2.loge("ActiveState not handled request: " + DataConnection.this.msgToString(msg.what));
                        return false;
                }
            }
        }

        /* loaded from: classes.dex */
        private class DisconnectingState extends State {
            private DisconnectingState() {
            }

            public void enter() {
                DataConnection.this.logd("DisconnectingState: enter");
            }

            public void exit() {
                DataConnection.this.logd("DisconnectingState: exit");
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("DisconnectingState msg: " + DataConnection.this.msgToString(msg.what));
                int i = msg.what;
                if (i == 700001) {
                    DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                    DataConnection.this.clearNwInfo(true);
                    return true;
                } else if (i != DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED) {
                    DataConnection dataConnection2 = DataConnection.this;
                    dataConnection2.loge("DisconnectingState not handled request: " + DataConnection.this.msgToString(msg.what));
                    return false;
                } else {
                    DataConnection.this.deferMessage(msg);
                    DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                    return true;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean requestNetwork() {
            logd("requestNetwork");
            if (SubscriptionManager.isValidSubscriptionId(DataDispatcher.this.mSubId) || this.mCapabiliy == 10) {
                DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ);
                if (n == null) {
                    loge("ImsBearerRequest is NULL");
                    return false;
                }
                NetworkRequest.Builder builder = new NetworkRequest.Builder();
                builder.addCapability(this.mCapabiliy);
                builder.addTransportType(0);
                builder.setNetworkSpecifier(String.valueOf(DataDispatcher.this.mSubId));
                NetworkRequest nwRequest = builder.build();
                logd("start requestNetwork for " + getName());
                this.mConnectivityManager.requestNetwork(nwRequest, this.mNwAvailableCallback);
                return true;
            }
            loge("inValid subId: " + DataDispatcher.this.mSubId);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void rejectNetworkRequest(int cause) {
            logd("rejectNetworkRequest cause: " + cause);
            DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ);
            for (int i = 0; i < this.mImsNetworkRequests.size(); i++) {
                logd("found Req: " + this.mImsNetworkRequests.valueAt(i));
            }
            if (n != null) {
                StringBuilder builder = new StringBuilder();
                builder.append(n.getTransId() + ",");
                builder.append(DataDispatcher.this.mPhoneId + ",");
                builder.append(cause + "");
                DataDispatcher.this.sendVaEvent(DataDispatcher.this.mDataDispatcherUtil.enCodeEvent(VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_REJ_RESP, builder.toString()));
                clearNwInfo(false);
                this.mImsNetworkRequests.remove(n.getRequestID());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRequestNetworkCompleted() {
            logd("onRequestNetworkComplete");
            DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ);
            for (int i = 0; i < this.mImsNetworkRequests.size(); i++) {
                logd("found Req: " + this.mImsNetworkRequests.valueAt(i));
            }
            if (n != null) {
                notifyNetworkHandle();
                StringBuilder builder = new StringBuilder();
                builder.append(n.getTransId() + ",");
                builder.append(DataDispatcher.this.mPhoneId + ",");
                builder.append(this.mNetworkId + ",");
                builder.append(this.mInterface + "");
                logd("netId:" + this.mNetworkId + " IfaceName:" + this.mInterface);
                DataDispatcher.this.sendVaEvent(DataDispatcher.this.mDataDispatcherUtil.enCodeEvent(VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_ACK_RESP, builder.toString()));
                this.mImsNetworkRequests.remove(n.getRequestID());
            }
        }

        private void notifyNetworkHandle() {
            log("notifyNetworkHandle() netHandle: " + this.mNetworkHandle);
            StringBuilder builder = new StringBuilder();
            builder.append(DataDispatcher.this.mPhoneId + ",");
            builder.append(this.mNetworkHandle);
            DataDispatcher.this.sendVaEvent(DataDispatcher.this.mDataDispatcherUtil.enCodeEvent(VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_NETWORK_HANDLE_NOTIFY, builder.toString()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void releaseNetwork() {
            logd("releaseNetwork");
            this.mImsNetworkRequests.get(VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ);
            try {
                this.mConnectivityManager.unregisterNetworkCallback(this.mNwAvailableCallback);
            } catch (IllegalArgumentException e) {
                loge("cb already has been released!!");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void rejectNetworkReleased(int cause) {
            logd("rejectNetworkReleased cause: " + cause);
            DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ);
            for (int i = 0; i < this.mImsNetworkRequests.size(); i++) {
                logd("found Req: " + this.mImsNetworkRequests.valueAt(i));
            }
            if (n != null) {
                StringBuilder builder = new StringBuilder();
                builder.append(n.getTransId() + ",");
                builder.append(DataDispatcher.this.mPhoneId + ",");
                builder.append(cause + "");
                DataDispatcher.this.sendVaEvent(DataDispatcher.this.mDataDispatcherUtil.enCodeEvent(VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_REJ_RESP, builder.toString()));
                this.mImsNetworkRequests.remove(n.getRequestID());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onReleaseNetworkCompleted() {
            logd("onReleaseNetworkCompleted");
            DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ);
            for (int i = 0; i < this.mImsNetworkRequests.size(); i++) {
                logd("found Req: " + this.mImsNetworkRequests.valueAt(i));
            }
            if (n != null) {
                StringBuilder builder = new StringBuilder();
                builder.append(n.getTransId() + ",");
                builder.append(DataDispatcher.this.mPhoneId + ",");
                builder.append(DataDispatcher.this.mFailCauses.get(DataDispatcher.FAILCAUSE_UNKNOWN) + ",");
                builder.append(this.mInterface + "");
                DataDispatcher.this.sendVaEvent(DataDispatcher.this.mDataDispatcherUtil.enCodeEvent(VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_ACK_RESP, builder.toString()));
                this.mImsNetworkRequests.remove(n.getRequestID());
            }
            clearNwInfo(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onAbortNetworkCompleted() {
            logd("onAbortNetworkCompleted");
            DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT);
            for (int i = 0; i < this.mImsNetworkRequests.size(); i++) {
                logd("found Req: " + this.mImsNetworkRequests.valueAt(i));
            }
            if (n != null) {
                StringBuilder builder = new StringBuilder();
                builder.append(n.getTransId() + ",");
                builder.append(DataDispatcher.this.mPhoneId + ",");
                builder.append(DataDispatcher.this.mFailCauses.get(DataDispatcher.FAILCAUSE_UNKNOWN) + ",");
                builder.append(this.mInterface + "");
                DataDispatcher.this.sendVaEvent(DataDispatcher.this.mDataDispatcherUtil.enCodeEvent(VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_ACK_RESP, builder.toString()));
                this.mImsNetworkRequests.remove(n.getRequestID());
            }
            clearNwInfo(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyNetworkLosted() {
            logd("notifyNetworkLosted");
            try {
                this.mConnectivityManager.unregisterNetworkCallback(this.mNwAvailableCallback);
            } catch (IllegalArgumentException e) {
                loge("cb already has been released!!");
            }
            StringBuilder builder = new StringBuilder();
            builder.append(DataDispatcher.this.mPhoneId + ",");
            builder.append(DataDispatcher.this.mFailCauses.get(DataDispatcher.FAILCAUSE_LOST_CONNECTION) + ",");
            builder.append(this.mInterface + "");
            DataDispatcher.this.sendVaEvent(DataDispatcher.this.mDataDispatcherUtil.enCodeEvent(VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_IND, builder.toString()));
            clearNwInfo(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void disable() {
            sendMessage(obtainMessage(700001));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNwInfo(boolean disable) {
            logd("clearNwInfo");
            if (disable) {
                this.mImsNetworkRequests.clear();
            }
            this.mNetworkId = 0;
            this.mNetworkHandle = 0L;
            this.mInterface = "";
        }

        public void putRequest(DataDispatcherUtil.ImsBearerRequest request) {
            DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(request.getRequestID());
            if (n == null) {
                this.mImsNetworkRequests.put(request.getRequestID(), request);
                return;
            }
            loge("request already exist: " + request);
        }

        public void onSubscriptionsChanged() {
            logd("onSubscriptionsChanged");
            DataDispatcherUtil.ImsBearerRequest n = this.mImsNetworkRequests.get(VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ);
            if (n != null) {
                sendMessage(obtainMessage(600001));
            }
        }

        private void refreshNwLostCallBack(NetworkRequest nwRequest) {
            logd("refreshNwLostCallBack nwRequest: " + nwRequest);
            try {
                this.mConnectivityManager.unregisterNetworkCallback(this.mNwLostCallback);
            } catch (IllegalArgumentException e) {
                loge("cb already has been released!!");
            }
            this.mConnectivityManager.registerNetworkCallback(nwRequest, this.mNwLostCallback);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class NwAvailableCallback extends ConnectivityManager.NetworkCallback {
            private DataConnection mConn;

            public NwAvailableCallback(DataConnection conn) {
                this.mConn = conn;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                if (network == null) {
                    DataConnection.this.loge("onAvailable: network is null");
                    return;
                }
                LinkProperties mLink = DataConnection.this.mConnectivityManager.getLinkProperties(network);
                if (mLink == null) {
                    DataConnection.this.loge("LinkProperties is null");
                    return;
                }
                NetworkInfo netInfo = DataConnection.this.mConnectivityManager.getNetworkInfo(network);
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("onAvailable: networInfo: " + netInfo);
                DataConnection.this.mNetworkId = network.netId;
                DataConnection.this.mNetworkHandle = network.getNetworkHandle();
                DataConnection.this.mInterface = mLink.getInterfaceName();
                this.mConn.sendMessage(this.mConn.obtainMessage(DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED));
            }
        }

        /* loaded from: classes.dex */
        private class NwLostCallback extends ConnectivityManager.NetworkCallback {
            private DataConnection mConn;

            public NwLostCallback(DataConnection conn) {
                this.mConn = conn;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                NetworkInfo netInfo = DataConnection.this.mConnectivityManager.getNetworkInfo(network);
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("onLost: networInfo: " + netInfo);
                this.mConn.sendMessage(this.mConn.obtainMessage(DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String msgToString(int msg) {
            if (msg == 700001) {
                return "MSG_ID_IMSA_DISABLE_SERVICE";
            }
            if (msg == 900008) {
                return "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ";
            }
            if (msg == 900011) {
                return "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ";
            }
            if (msg == 900403) {
                return "MSG_ID_REQUEST_PCSCF_DISCOVERY";
            }
            switch (msg) {
                case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED /* 800001 */:
                    return "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED";
                case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED /* 800002 */:
                    return "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED";
                case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL /* 800003 */:
                    return "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL";
                case DataDispatcher.MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT /* 800004 */:
                    return "MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT";
                default:
                    return "" + msg;
            }
        }

        public void logd(String s) {
            Rlog.d(this.TAG + getName(), "[" + DataDispatcher.this.mPhoneId + "] " + s);
        }

        public void logi(String s) {
            Rlog.i(this.TAG + getName(), "[" + DataDispatcher.this.mPhoneId + "] " + s);
        }

        public void loge(String s) {
            Rlog.e(this.TAG + getName(), "[" + DataDispatcher.this.mPhoneId + "] " + s);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFirewallInterfaceChain(final boolean isAdded) {
            logd("setFirewallInterfaceChain:" + isAdded);
            Thread thread = new Thread("setFirewallInterfaceChain") { // from class: com.mediatek.ims.internal.DataDispatcher.DataConnection.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        INetdagent agent = INetdagent.getService();
                        if (agent == null) {
                            DataConnection.this.loge("agnet is null");
                            return;
                        }
                        String rule = isAdded ? "allow" : "deny";
                        String cmd = String.format("netdagent firewall set_interface_for_chain_rule %s dozable %s", DataConnection.this.mFwInterface, rule);
                        DataConnection dataConnection = DataConnection.this;
                        dataConnection.logd("cmd:" + cmd);
                        agent.dispatchNetdagentCmd(cmd);
                    } catch (Exception e) {
                        DataConnection dataConnection2 = DataConnection.this;
                        dataConnection2.loge("setFirewallInterfaceChain:" + e);
                    }
                }
            };
            thread.start();
        }
    }
}
