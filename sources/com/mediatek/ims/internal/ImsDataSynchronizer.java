package com.mediatek.ims.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.util.SparseArray;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.mediatek.ims.common.SubscriptionManagerHelper;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.io.Serializable;
import vendor.mediatek.hardware.netdagent.V1_0.INetdagent;
/* loaded from: classes.dex */
public class ImsDataSynchronizer {
    public static final int EVENT_CONNECT = 0;
    public static final int EVENT_CONNECT_DONE = 1;
    public static final int EVENT_DISCONNECT = 2;
    public static final int EVENT_DISCONNECT_DONE = 3;
    public static final int EVENT_IMS_DATA_INFO = 7;
    public static final int EVENT_MD_RESTART = 5;
    public static final int EVENT_SET_BEARER_NOTIFICATION_DONE = 6;
    public static final int EVENT_SUBSCRIPTIONS_CHANGED = 4;
    private Context mContext;
    private ImsDataTracker mDataTracker;
    private int mPhoneId;
    private String TAG = ImsDataSynchronizer.class.getSimpleName();
    private int mSubId = -1;
    private HandlerThread mImsDcHandlerThread = new HandlerThread("ImsDcHandlerThread");
    private DataConnection mImsDataConnection = new DataConnection("ims", new Handler(this.mImsDcHandlerThread.getLooper()), 4);
    private DataConnection mEmcDataConnection = new DataConnection("emergency", new Handler(this.mImsDcHandlerThread.getLooper()), 10);

    public ImsDataSynchronizer(Context context, ImsDataTracker dataTracker, int phoneId) {
        this.mContext = context;
        this.mDataTracker = dataTracker;
        this.mPhoneId = phoneId;
        this.mImsDcHandlerThread.start();
    }

    public void notifyMdRequest(ImsBearerRequest request) {
        char c;
        logd("got request: " + request);
        String capability = request.getCapability();
        int hashCode = capability.hashCode();
        if (hashCode != 104399) {
            if (hashCode == 1629013393 && capability.equals("emergency")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (capability.equals("ims")) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                Handler imsHandle = this.mImsDataConnection.getHandler();
                this.mImsDataConnection.putRequest(request);
                imsHandle.sendMessage(imsHandle.obtainMessage(request.getRequest()));
                return;
            case 1:
                Handler emcHandle = this.mEmcDataConnection.getHandler();
                this.mEmcDataConnection.putRequest(request);
                emcHandle.sendMessage(emcHandle.obtainMessage(request.getRequest()));
                return;
            default:
                loge("not support capability: " + request.getCapability());
                return;
        }
    }

    public void notifyMdRestart() {
        logd("notifyMdRestart");
        Handler imsHandle = this.mImsDataConnection.getHandler();
        imsHandle.sendMessage(imsHandle.obtainMessage(5));
        Handler emcHandle = this.mEmcDataConnection.getHandler();
        emcHandle.sendMessage(emcHandle.obtainMessage(5));
    }

    public void notifyClearCodesEvent(int cause, int capability) {
        logd("notifyClearCodesEvent,cause= " + cause + " capability= " + capability);
    }

    public void onSubscriptionsChanged() {
        int newSubId = SubscriptionManagerHelper.getSubIdUsingPhoneId(this.mPhoneId);
        if (this.mSubId != newSubId) {
            logd("onSubscriptionsChanged: subId: " + this.mSubId + ", newSubId: " + newSubId);
            this.mSubId = newSubId;
            this.mImsDataConnection.onSubscriptionsChanged();
            this.mEmcDataConnection.onSubscriptionsChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean earlyConfirmReqNetworkToMd() {
        if ("OP07".equals(SystemProperties.get("persist.vendor.operator.optr", MtkPhoneConstants.MVNO_TYPE_NONE))) {
            return false;
        }
        return true;
    }

    public void logd(String s) {
        Rlog.d(this.TAG, s);
    }

    public void logi(String s) {
        Rlog.i(this.TAG, s);
    }

    public void loge(String s) {
        Rlog.e(this.TAG, s);
    }

    /* loaded from: classes.dex */
    public class DataConnection extends StateMachine {
        private static final int STATUS_ABORT = 1;
        private static final int STATUS_SUCCESS = 0;
        private int mCapability;
        private ConnectivityManager mConnectivityManager;
        private String TAG = "DC-";
        private SparseArray<ImsBearerRequest> mImsNetworkRequests = new SparseArray<>();
        private DataConnection mConn = this;
        private String mPdnSatate = "DefaultState";
        private DefaultState mDefaultState = new DefaultState();
        private InactiveState mInactiveState = new InactiveState();
        private ActivatingState mActivatingState = new ActivatingState();
        private ActiveState mActiveState = new ActiveState();
        private DisconnectingState mDisconnectingState = new DisconnectingState();
        private String mFwInterface = MtkPhoneConstants.MVNO_TYPE_NONE;
        private NetworkAvailableCallback mAvailableListener = new NetworkAvailableCallback();
        private NetworkLostCallback mLostListener = new NetworkLostCallback();

        public DataConnection(String name, Handler mHandler, int capability) {
            super(name, mHandler);
            this.mCapability = capability;
            this.mConnectivityManager = (ConnectivityManager) ImsDataSynchronizer.this.mContext.getSystemService("connectivity");
            refreshNetworkLostListener();
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
                DataConnection.this.mPdnSatate = "DefaultState";
                DataConnection.this.logd("enter");
            }

            public void exit() {
                DataConnection.this.logd("exit");
            }

            public boolean processMessage(Message msg) {
                int i = msg.what;
                return true;
            }
        }

        /* loaded from: classes.dex */
        private class InactiveState extends State {
            private InactiveState() {
            }

            public void enter() {
                DataConnection.this.mPdnSatate = "InactiveState";
                DataConnection.this.logd(" enter");
            }

            public void exit() {
                DataConnection.this.logd("exit");
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("msg=" + DataConnection.this.msgToString(msg.what));
                boolean retVal = false;
                switch (msg.what) {
                    case 0:
                    case 4:
                        if (DataConnection.this.requestNetwork()) {
                            if (ImsDataSynchronizer.this.earlyConfirmReqNetworkToMd()) {
                                DataConnection.this.confirmRequestNetworkToMd(0, 0);
                            }
                            DataConnection.this.transitionTo(DataConnection.this.mActivatingState);
                        }
                        retVal = true;
                        break;
                    case 1:
                        DataConnection.this.transitionTo(DataConnection.this.mActiveState);
                        retVal = true;
                        break;
                    case 2:
                        if (DataConnection.this.mImsNetworkRequests.get(0) != null) {
                            DataConnection.this.logd("handle pdn abort requested");
                            DataConnection.this.confirmRequestNetworkToMd(0, 1);
                        }
                        DataConnection.this.releaseNetwork();
                        DataConnection.this.confirmReleaseNetworkToMd(2);
                        retVal = true;
                        break;
                    case 3:
                    default:
                        DataConnection dataConnection2 = DataConnection.this;
                        dataConnection2.loge("not handle the messag " + DataConnection.this.msgToString(msg.what));
                        break;
                    case 5:
                        DataConnection.this.mConn.clear();
                        DataConnection.this.releaseNetwork();
                        retVal = true;
                        break;
                }
                return retVal;
            }
        }

        /* loaded from: classes.dex */
        private class ActivatingState extends State {
            private ActivatingState() {
            }

            public void enter() {
                DataConnection.this.mPdnSatate = "ActivatingState";
                DataConnection.this.logd("enter");
            }

            public void exit() {
                DataConnection.this.logd("exit");
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("msg=" + DataConnection.this.msgToString(msg.what));
                int i = msg.what;
                boolean retVal = false;
                if (i != 5) {
                    switch (i) {
                        case 1:
                            if (!ImsDataSynchronizer.this.earlyConfirmReqNetworkToMd()) {
                                DataConnection.this.confirmRequestNetworkToMd(0, 0);
                            }
                            DataConnection.this.transitionTo(DataConnection.this.mActiveState);
                            retVal = true;
                            break;
                        case 2:
                            DataConnection.this.confirmRequestNetworkToMd(0, 1);
                            DataConnection.this.deferMessage(msg);
                            DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                            retVal = true;
                            break;
                        default:
                            DataConnection dataConnection2 = DataConnection.this;
                            dataConnection2.loge("not handle the message " + DataConnection.this.msgToString(msg.what));
                            break;
                    }
                } else {
                    DataConnection.this.mConn.clear();
                    DataConnection.this.releaseNetwork();
                    DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                    retVal = true;
                }
                return retVal;
            }
        }

        /* loaded from: classes.dex */
        private class ActiveState extends State {
            private ActiveState() {
            }

            public void enter() {
                DataConnection.this.mPdnSatate = "ActiveState";
                DataConnection.this.logd("enter");
                DataConnection.this.setFirewallInterfaceChain(true);
            }

            public void exit() {
                DataConnection.this.logd("exit");
                DataConnection.this.setFirewallInterfaceChain(false);
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("msg=" + DataConnection.this.msgToString(msg.what));
                int i = msg.what;
                if (i != 5) {
                    switch (i) {
                        case 2:
                            DataConnection.this.releaseNetwork();
                            DataConnection.this.transitionTo(DataConnection.this.mDisconnectingState);
                            return true;
                        case 3:
                            DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                            return true;
                        default:
                            DataConnection dataConnection2 = DataConnection.this;
                            dataConnection2.loge("not handle the message " + DataConnection.this.msgToString(msg.what));
                            return false;
                    }
                } else {
                    DataConnection.this.mConn.clear();
                    DataConnection.this.releaseNetwork();
                    DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                    return true;
                }
            }
        }

        /* loaded from: classes.dex */
        private class DisconnectingState extends State {
            private DisconnectingState() {
            }

            public void enter() {
                DataConnection.this.mPdnSatate = "DisconnectingState";
                DataConnection.this.logd("enter");
            }

            public void exit() {
                DataConnection.this.logd("exit");
            }

            public boolean processMessage(Message msg) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("msg=" + DataConnection.this.msgToString(msg.what));
                int i = msg.what;
                if (i == 3) {
                    DataConnection.this.confirmReleaseNetworkToMd(2);
                    DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                    return true;
                } else if (i != 5) {
                    DataConnection dataConnection2 = DataConnection.this;
                    dataConnection2.loge("not handle the message " + DataConnection.this.msgToString(msg.what));
                    return false;
                } else {
                    DataConnection.this.mConn.clear();
                    DataConnection.this.transitionTo(DataConnection.this.mInactiveState);
                    return true;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean requestNetwork() {
            logd("requestNetwork");
            if (ImsDataSynchronizer.this.mSubId >= 0 || this.mCapability == 10) {
                ImsBearerRequest n = this.mImsNetworkRequests.get(0);
                if (n == null) {
                    loge("ImsBearerRequest is NULL");
                    return false;
                }
                NetworkRequest.Builder builder = new NetworkRequest.Builder();
                builder.addCapability(this.mCapability);
                builder.addTransportType(0);
                builder.setNetworkSpecifier(String.valueOf(ImsDataSynchronizer.this.mSubId));
                NetworkRequest nwRequest = builder.build();
                logd("start requestNetwork for " + getName());
                this.mAvailableListener.setNetworkCallbackRegistered(true);
                this.mConnectivityManager.requestNetwork(nwRequest, this.mAvailableListener);
                return true;
            }
            loge("inValid subId: " + ImsDataSynchronizer.this.mSubId);
            return false;
        }

        private void refreshNetworkLostListener() {
            logd("refreshNetworkLostListener");
            if (ImsDataSynchronizer.this.mSubId >= 0 || this.mCapability == 10) {
                try {
                    this.mConnectivityManager.unregisterNetworkCallback(this.mLostListener);
                } catch (IllegalArgumentException e) {
                    loge("cb already has been released!!");
                }
                NetworkRequest.Builder builder = new NetworkRequest.Builder();
                builder.addCapability(this.mCapability);
                builder.addTransportType(0);
                builder.setNetworkSpecifier(String.valueOf(ImsDataSynchronizer.this.mSubId));
                NetworkRequest nwRequest = builder.build();
                this.mConnectivityManager.registerNetworkCallback(nwRequest, this.mLostListener);
                return;
            }
            loge("inValid subId: " + ImsDataSynchronizer.this.mSubId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void confirmRequestNetworkToMd(int reqId, int status) {
            logd("confirmRequestNetworkToMd");
            ImsBearerRequest n = this.mImsNetworkRequests.get(reqId);
            for (int i = 0; i < this.mImsNetworkRequests.size(); i++) {
                logd("found Req: " + this.mImsNetworkRequests.valueAt(i));
            }
            if (n != null) {
                this.mImsNetworkRequests.remove(n.getRequest());
                ImsDataSynchronizer.this.mDataTracker.responseBearerConfirm(n.getRequest(), n.getAid(), status, ImsDataSynchronizer.this.mPhoneId);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void releaseNetwork() {
            logd("releaseNetwork");
            try {
                this.mConnectivityManager.unregisterNetworkCallback(this.mAvailableListener);
                this.mAvailableListener.setNetworkCallbackRegistered(false);
            } catch (IllegalArgumentException e) {
                loge("cb already has been released!!");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void confirmReleaseNetworkToMd(int reqId) {
            logd("confirmReleaseNetworkToMd");
            ImsBearerRequest n = this.mImsNetworkRequests.get(reqId);
            for (int i = 0; i < this.mImsNetworkRequests.size(); i++) {
                logd("found Req: " + this.mImsNetworkRequests.valueAt(i));
            }
            if (n != null) {
                this.mImsNetworkRequests.remove(n.getRequest());
                ImsDataSynchronizer.this.mDataTracker.responseBearerConfirm(n.getRequest(), n.getAid(), 0, ImsDataSynchronizer.this.mPhoneId);
            }
        }

        public void putRequest(ImsBearerRequest request) {
            ImsBearerRequest n = this.mImsNetworkRequests.get(request.getRequest());
            if (n == null) {
                this.mImsNetworkRequests.put(request.getRequest(), request);
                return;
            }
            loge("request already exist: " + request);
        }

        public void clear() {
            logd("clear");
            this.mImsNetworkRequests.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class NetworkAvailableCallback extends ConnectivityManager.NetworkCallback {
            private boolean mNetworkCallbackRegistered = false;

            public NetworkAvailableCallback() {
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                NetworkInfo netInfo = DataConnection.this.mConnectivityManager.getNetworkInfo(network);
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("onAvailable: networInfo: " + netInfo + " mNetworkCallbackRegistered " + this.mNetworkCallbackRegistered);
                if (this.mNetworkCallbackRegistered) {
                    DataConnection.this.mConn.sendMessage(DataConnection.this.mConn.obtainMessage(1));
                }
            }

            public void setNetworkCallbackRegistered(boolean regState) {
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("setNetworkCallbackRegistered regState= " + regState);
                this.mNetworkCallbackRegistered = regState;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class NetworkLostCallback extends ConnectivityManager.NetworkCallback {
            public NetworkLostCallback() {
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                NetworkInfo netInfo = DataConnection.this.mConnectivityManager.getNetworkInfo(network);
                DataConnection dataConnection = DataConnection.this;
                dataConnection.logd("onLost: networInfo: " + netInfo);
                DataConnection.this.mConn.sendMessage(DataConnection.this.mConn.obtainMessage(3));
            }
        }

        public void onSubscriptionsChanged() {
            logd("onSubscriptionsChanged");
            refreshNetworkLostListener();
            ImsBearerRequest n = this.mImsNetworkRequests.get(0);
            if (n != null) {
                sendMessage(obtainMessage(4));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFirewallInterfaceChain(final boolean isAdded) {
            LinkProperties linkProp;
            logd("setFirewallInterfaceChain:" + isAdded);
            if (isAdded) {
                try {
                    Network[] info = this.mConnectivityManager.getAllNetworks();
                    for (Network nw : info) {
                        NetworkCapabilities nc = this.mConnectivityManager.getNetworkCapabilities(nw);
                        if (nc.hasCapability(this.mCapability) && (linkProp = this.mConnectivityManager.getLinkProperties(nw)) != null) {
                            this.mFwInterface = linkProp.getInterfaceName();
                        }
                    }
                } catch (Exception e) {
                    loge("getAllNetworks:" + e);
                }
            }
            Thread thread = new Thread("setFirewallInterfaceChain") { // from class: com.mediatek.ims.internal.ImsDataSynchronizer.DataConnection.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        INetdagent agent = INetdagent.getService();
                        if (agent == null) {
                            DataConnection.this.loge("agnet is null");
                        } else if (DataConnection.this.mFwInterface == null) {
                            DataConnection.this.loge("mFwInterface is null");
                        } else {
                            String rule = isAdded ? "allow" : "deny";
                            String cmd = String.format("netdagent firewall set_interface_for_chain_rule %s dozable %s", DataConnection.this.mFwInterface, rule);
                            DataConnection dataConnection = DataConnection.this;
                            dataConnection.logd("cmd:" + cmd);
                            agent.dispatchNetdagentCmd(cmd);
                        }
                    } catch (Exception e2) {
                        DataConnection dataConnection2 = DataConnection.this;
                        dataConnection2.loge("setFirewallInterfaceChain:" + e2);
                    }
                }
            };
            thread.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String msgToString(int msg) {
            switch (msg) {
                case 0:
                    return "EVENT_CONNECT";
                case 1:
                    return "EVENT_CONNECT_DONE";
                case 2:
                    return "EVENT_DISCONNECT";
                case 3:
                    return "EVENT_DISCONNECT_DONE";
                case 4:
                    return "EVENT_SUBSCRIPTIONS_CHANGED";
                case 5:
                    return "EVENT_MD_RESTART";
                default:
                    return "<unknown request>";
            }
        }

        public void logd(String s) {
            Rlog.d(this.TAG + getName() + "[" + ImsDataSynchronizer.this.mPhoneId + "]", this.mPdnSatate + ": " + s);
        }

        public void logi(String s) {
            Rlog.i(this.TAG + getName() + "[" + ImsDataSynchronizer.this.mPhoneId + "]", this.mPdnSatate + ": " + s);
        }

        public void loge(String s) {
            Rlog.e(this.TAG + getName() + "[" + ImsDataSynchronizer.this.mPhoneId + "]", this.mPdnSatate + ": " + s);
        }
    }

    /* loaded from: classes.dex */
    public static class ImsBearerRequest implements Serializable {
        private static final long serialVersionUID = -5053412967314724078L;
        private int mAid;
        private String mCapability;
        private int mPhoneId;
        private int mRequest;

        public ImsBearerRequest(int aid, int phoneId, int request, String capability) {
            this.mAid = aid;
            this.mPhoneId = phoneId;
            this.mRequest = request;
            this.mCapability = capability;
        }

        public int getAid() {
            return this.mAid;
        }

        public int getPhoneId() {
            return this.mPhoneId;
        }

        public int getRequest() {
            return this.mRequest;
        }

        public String getCapability() {
            return this.mCapability;
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            builder.append("aid: " + this.mAid);
            builder.append(" phoneId: " + this.mPhoneId);
            int i = this.mRequest;
            if (i == 0) {
                builder.append(" Request: EVENT_CONNECT");
            } else if (i == 2) {
                builder.append(" Request: EVENT_DISCONNECT");
            }
            builder.append(" Capability: " + this.mCapability + " }");
            return builder.toString();
        }
    }
}
