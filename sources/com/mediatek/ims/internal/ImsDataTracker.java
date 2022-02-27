package com.mediatek.ims.internal;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.mediatek.ims.ImsAdapter;
import com.mediatek.ims.ImsEventDispatcher;
import com.mediatek.ims.internal.ImsDataSynchronizer;
import com.mediatek.ims.ril.ImsCommandsInterface;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ImsDataTracker implements ImsEventDispatcher.VaEventDispatcher {
    private String TAG;
    private Context mContext;
    private DataDispatcher[] mDispatchers;
    private ImsCommandsInterface[] mImsRILAdapters;
    private int mIsBearerNotify;
    private MdCapability mMdCapability;
    private int[] mModemEmergencyPdnState;
    private int[] mModemImsPdnState;
    private final SubscriptionManager.OnSubscriptionsChangedListener mOnSubscriptionsChangedListener;
    private final Object mPdnStateLock;
    private int mPhoneNum;
    private ImsAdapter.VaSocketIO mSocket;
    private ImsDataSynchronizer[] mSynchronizers;
    private Handler mdHander;

    /* loaded from: classes.dex */
    public enum MdCapability {
        LEGACY,
        AUTOSETUPIMS
    }

    public ImsDataTracker(Context context, ImsAdapter.VaSocketIO IO) {
        this.TAG = ImsDataTracker.class.getSimpleName();
        this.mImsRILAdapters = null;
        this.mPdnStateLock = new Object();
        this.mIsBearerNotify = 1;
        this.mdHander = new Handler() { // from class: com.mediatek.ims.internal.ImsDataTracker.1
            @Override // android.os.Handler
            public synchronized void handleMessage(Message msg) {
                int i = msg.what;
                if (i == 0) {
                    ImsDataTracker.this.onImsBearerChanged((AsyncResult) msg.obj, 0);
                } else if (i == 2) {
                    ImsDataTracker.this.onImsBearerChanged((AsyncResult) msg.obj, 2);
                } else if (i == 5) {
                    ImsDataTracker.this.onMdRestart((AsyncResult) msg.obj);
                } else if (i != 7) {
                    ImsDataTracker imsDataTracker = ImsDataTracker.this;
                    imsDataTracker.loge("not handle the message: " + msg.what);
                } else {
                    ImsDataTracker.this.onImsDataInfo((AsyncResult) msg.obj);
                }
            }
        };
        this.mOnSubscriptionsChangedListener = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.mediatek.ims.internal.ImsDataTracker.2
            @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
            public void onSubscriptionsChanged() {
                ImsDataTracker.this.logd("onSubscriptionsChanged");
                int i = 0;
                switch (AnonymousClass3.$SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability[ImsDataTracker.this.mMdCapability.ordinal()]) {
                    case 1:
                        while (i < ImsDataTracker.this.mPhoneNum) {
                            ImsDataTracker.this.mDispatchers[i].onSubscriptionsChanged();
                            i++;
                        }
                        return;
                    case 2:
                        while (i < ImsDataTracker.this.mPhoneNum) {
                            ImsDataTracker.this.mSynchronizers[i].onSubscriptionsChanged();
                            i++;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.mPhoneNum = TelephonyManager.getDefault().getPhoneCount();
        this.mDispatchers = new DataDispatcher[this.mPhoneNum];
        for (int i = 0; i < this.mPhoneNum; i++) {
            this.mDispatchers[i] = new DataDispatcher(context, this, i);
        }
        this.mSocket = IO;
        this.mMdCapability = MdCapability.LEGACY;
        SubscriptionManager.from(context).addOnSubscriptionsChangedListener(this.mOnSubscriptionsChangedListener);
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void enableRequest(int phoneId) {
        logd("receive enableRequest on phone: " + phoneId);
        this.mDispatchers[phoneId].enableRequest(phoneId);
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void disableRequest(int phoneId) {
        logd("receive disableRequest on phone: " + phoneId);
        this.mDispatchers[phoneId].disableRequest(phoneId);
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void vaEventCallback(ImsAdapter.VaEvent event) {
        logd("send event" + event.getRequestID() + " to phone " + event.getPhoneId());
        this.mDispatchers[event.getPhoneId()].vaEventCallback(event);
    }

    public void sendVaEvent(ImsAdapter.VaEvent event) {
        this.mSocket.writeEvent(event);
    }

    public ImsDataTracker(Context context, ImsCommandsInterface[] adapters) {
        this.TAG = ImsDataTracker.class.getSimpleName();
        this.mImsRILAdapters = null;
        this.mPdnStateLock = new Object();
        this.mIsBearerNotify = 1;
        this.mdHander = new Handler() { // from class: com.mediatek.ims.internal.ImsDataTracker.1
            @Override // android.os.Handler
            public synchronized void handleMessage(Message msg) {
                int i = msg.what;
                if (i == 0) {
                    ImsDataTracker.this.onImsBearerChanged((AsyncResult) msg.obj, 0);
                } else if (i == 2) {
                    ImsDataTracker.this.onImsBearerChanged((AsyncResult) msg.obj, 2);
                } else if (i == 5) {
                    ImsDataTracker.this.onMdRestart((AsyncResult) msg.obj);
                } else if (i != 7) {
                    ImsDataTracker imsDataTracker = ImsDataTracker.this;
                    imsDataTracker.loge("not handle the message: " + msg.what);
                } else {
                    ImsDataTracker.this.onImsDataInfo((AsyncResult) msg.obj);
                }
            }
        };
        this.mOnSubscriptionsChangedListener = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.mediatek.ims.internal.ImsDataTracker.2
            @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
            public void onSubscriptionsChanged() {
                ImsDataTracker.this.logd("onSubscriptionsChanged");
                int i = 0;
                switch (AnonymousClass3.$SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability[ImsDataTracker.this.mMdCapability.ordinal()]) {
                    case 1:
                        while (i < ImsDataTracker.this.mPhoneNum) {
                            ImsDataTracker.this.mDispatchers[i].onSubscriptionsChanged();
                            i++;
                        }
                        return;
                    case 2:
                        while (i < ImsDataTracker.this.mPhoneNum) {
                            ImsDataTracker.this.mSynchronizers[i].onSubscriptionsChanged();
                            i++;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.mPhoneNum = TelephonyManager.getDefault().getPhoneCount();
        this.mSynchronizers = new ImsDataSynchronizer[this.mPhoneNum];
        this.mModemImsPdnState = new int[this.mPhoneNum];
        this.mModemEmergencyPdnState = new int[this.mPhoneNum];
        this.mContext = context;
        this.mImsRILAdapters = adapters;
        for (int i = 0; i < this.mPhoneNum; i++) {
            this.mSynchronizers[i] = new ImsDataSynchronizer(context, this, i);
            this.mImsRILAdapters[i].registerForBearerActivation(this.mdHander, 0, null);
            this.mImsRILAdapters[i].registerForBearerDeactivation(this.mdHander, 2, null);
            this.mImsRILAdapters[i].registerForBearerInit(this.mdHander, 5, null);
            this.mImsRILAdapters[i].registerForImsDataInfoNotify(this.mdHander, 7, null);
            this.mModemImsPdnState[i] = NetworkInfo.State.UNKNOWN.ordinal();
            this.mModemEmergencyPdnState[i] = NetworkInfo.State.UNKNOWN.ordinal();
            setImsBearerNotification(i, this.mIsBearerNotify);
        }
        this.mMdCapability = MdCapability.AUTOSETUPIMS;
        SubscriptionManager.from(this.mContext).addOnSubscriptionsChangedListener(this.mOnSubscriptionsChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onImsBearerChanged(AsyncResult ar, int event) {
        logd("onImsBearerChanged");
        String[] bearerInfo = (String[]) ar.result;
        if (bearerInfo == null) {
            loge("parameter is NULL");
        } else if (bearerInfo.length == 3) {
            logd(Arrays.toString(bearerInfo));
            int phoneId = Integer.parseInt(bearerInfo[0]);
            int aid = Integer.parseInt(bearerInfo[1]);
            String capability = bearerInfo[2];
            updateModemPdnState(phoneId, capability, event);
            this.mSynchronizers[phoneId].notifyMdRequest(new ImsDataSynchronizer.ImsBearerRequest(aid, phoneId, event, capability));
        } else {
            loge("parameter format error: " + Arrays.toString(bearerInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMdRestart(AsyncResult ar) {
        logd("onMdRestart");
        int phoneId = ((int[]) ar.result)[0];
        logd("onMdRestart, reset phone = " + phoneId + " connection state");
        this.mSynchronizers[phoneId].notifyMdRestart();
        clearModemPdnState();
        setImsBearerNotification(phoneId, this.mIsBearerNotify);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onImsDataInfo(AsyncResult ar) {
        String[] bearerInfo = (String[]) ar.result;
        if (bearerInfo != null) {
            int cap = 4;
            if (bearerInfo.length == 4) {
                logd("onImsDataInfo: " + Arrays.toString(bearerInfo));
                int phoneId = Integer.parseInt(bearerInfo[0]);
                String capability = bearerInfo[1];
                String event = bearerInfo[2];
                if (capability.equals("emergency")) {
                    cap = 10;
                }
                if ("ClearCodes".equals(event)) {
                    int cause = Integer.parseInt(bearerInfo[3]);
                    this.mSynchronizers[phoneId].notifyClearCodesEvent(cause, cap);
                    return;
                }
                return;
            }
            loge("parameter format error: " + Arrays.toString(bearerInfo));
            return;
        }
        loge("parameter is NULL");
    }

    public void responseBearerConfirm(int event, int aid, int status, int phoneId) {
        logd("send to MD, aid:" + aid + ", status:" + status + ", phoneId:" + phoneId);
        if (event == 0) {
            this.mImsRILAdapters[phoneId].responseBearerActivationDone(aid, status, (Message) null);
        } else if (event == 2) {
            this.mImsRILAdapters[phoneId].responseBearerDeactivationDone(aid, status, (Message) null);
        }
    }

    private void setImsBearerNotification(int phoneId, int enable) {
        logd("setImsBearerNotification enable: " + enable);
        this.mImsRILAdapters[phoneId].setImsBearerNotification(enable, (Message) null);
    }

    /* renamed from: com.mediatek.ims.internal.ImsDataTracker$3  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability = new int[MdCapability.values().length];

        static {
            try {
                $SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability[MdCapability.LEGACY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability[MdCapability.AUTOSETUPIMS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public int[] getImsNetworkState(int capability) {
        int[] iArr;
        int[] iArr2;
        logd("capability/mPhoneNum/imsPdnState/emergencyPdnState are : " + capability + "/" + this.mPhoneNum + "/" + Arrays.toString(this.mModemImsPdnState) + Arrays.toString(this.mModemEmergencyPdnState));
        if (capability == 4) {
            synchronized (this.mPdnStateLock) {
                iArr2 = this.mModemImsPdnState;
            }
            return iArr2;
        } else if (capability == 10) {
            synchronized (this.mPdnStateLock) {
                iArr = this.mModemEmergencyPdnState;
            }
            return iArr;
        } else {
            int[] pdnState = new int[this.mPhoneNum];
            Arrays.fill(pdnState, NetworkInfo.State.UNKNOWN.ordinal());
            loge("getImsNetworkState failed becase of invalid capability : " + capability);
            return pdnState;
        }
    }

    private void updateModemPdnState(int phoneId, String capability, int event) {
        if (event == 0) {
            if (capability.equals("ims")) {
                this.mModemImsPdnState[phoneId] = NetworkInfo.State.CONNECTED.ordinal();
            } else if (capability.equals("emergency")) {
                this.mModemEmergencyPdnState[phoneId] = NetworkInfo.State.CONNECTED.ordinal();
            } else {
                loge("Not handle the capability: " + capability);
            }
        } else if (event != 2) {
            loge("Not handle the event: " + event);
        } else if (capability.equals("ims")) {
            this.mModemImsPdnState[phoneId] = NetworkInfo.State.DISCONNECTED.ordinal();
        } else if (capability.equals("emergency")) {
            this.mModemEmergencyPdnState[phoneId] = NetworkInfo.State.DISCONNECTED.ordinal();
        } else {
            loge("Not handle the capability: " + capability);
        }
    }

    private void clearModemPdnState() {
        synchronized (this.mPdnStateLock) {
            for (int i = 0; i < this.mPhoneNum; i++) {
                this.mModemImsPdnState[i] = NetworkInfo.State.UNKNOWN.ordinal();
                this.mModemEmergencyPdnState[i] = NetworkInfo.State.UNKNOWN.ordinal();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String s) {
        Rlog.d(this.TAG, s);
    }

    private void logi(String s) {
        Rlog.i(this.TAG, s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String s) {
        Rlog.e(this.TAG, s);
    }
}
