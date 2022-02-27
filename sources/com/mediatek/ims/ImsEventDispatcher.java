package com.mediatek.ims;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.mediatek.ims.ImsAdapter;
import com.mediatek.ims.internal.CallControlDispatcher;
import com.mediatek.ims.internal.ImsDataTracker;
import com.mediatek.ims.internal.ImsSimservsDispatcher;
import com.mediatek.ims.internal.WfcDispatcher;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ImsEventDispatcher extends Handler {
    private static final String TAG = "[ImsEventDispatcher]";
    private CallControlDispatcher mCallControlDispatcher;
    private Context mContext;
    private ImsDataTracker mImsDataTracker;
    private ImsSimservsDispatcher mSimservsDispatcher;
    private ImsAdapter.VaSocketIO mSocket;
    private ArrayList<VaEventDispatcher> mVaEventDispatcher = new ArrayList<>();
    private WfcDispatcher mWfcDispatcher;

    /* loaded from: classes.dex */
    public interface VaEventDispatcher {
        void disableRequest(int i);

        void enableRequest(int i);

        void vaEventCallback(ImsAdapter.VaEvent vaEvent);
    }

    public ImsEventDispatcher(Context context, ImsAdapter.VaSocketIO IO) {
        this.mContext = context;
        this.mSocket = IO;
        createDispatcher();
    }

    void enableRequest(int phoneId) {
        Iterator<VaEventDispatcher> it = this.mVaEventDispatcher.iterator();
        while (it.hasNext()) {
            VaEventDispatcher dispatcher = it.next();
            dispatcher.enableRequest(phoneId);
        }
    }

    void disableRequest(int phoneId) {
        Iterator<VaEventDispatcher> it = this.mVaEventDispatcher.iterator();
        while (it.hasNext()) {
            VaEventDispatcher dispatcher = it.next();
            dispatcher.disableRequest(phoneId);
        }
    }

    private void createDispatcher() {
        this.mCallControlDispatcher = new CallControlDispatcher(this.mContext, this.mSocket);
        this.mVaEventDispatcher.add(this.mCallControlDispatcher);
        this.mImsDataTracker = new ImsDataTracker(this.mContext, this.mSocket);
        this.mVaEventDispatcher.add(this.mImsDataTracker);
        this.mSimservsDispatcher = new ImsSimservsDispatcher(this.mContext, this.mSocket);
        this.mVaEventDispatcher.add(this.mSimservsDispatcher);
        this.mWfcDispatcher = new WfcDispatcher(this.mContext, this.mSocket);
        this.mVaEventDispatcher.add(this.mWfcDispatcher);
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        dispatchCallback((ImsAdapter.VaEvent) msg.obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchCallback(ImsAdapter.VaEvent event) {
        Log.i(TAG, "dispatchCallback: request ID:" + ImsAdapter.requestIdToString(event.getRequestID()));
        switch (event.getRequestID()) {
            case VaConstants.MSG_ID_WRAP_IMSM_IMSPA_INFORMATION_REQ /* 900002 */:
            case VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ /* 900008 */:
            case VaConstants.MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ /* 900011 */:
            case VaConstants.MSG_ID_REQUEST_PCSCF_DISCOVERY /* 900403 */:
                this.mImsDataTracker.vaEventCallback(event);
                return;
            case VaConstants.MSG_ID_IMS_ENABLE_IND /* 900003 */:
                enableRequest(event.getPhoneId());
                return;
            case VaConstants.MSG_ID_IMS_DISABLE_IND /* 900004 */:
                disableRequest(event.getPhoneId());
                return;
            case VaConstants.MSG_ID_NOTIFY_XUI_IND /* 900401 */:
                this.mSimservsDispatcher.vaEventCallback(event);
                return;
            case VaConstants.MSG_ID_NOTIFY_SS_PROGRESS_INDICATION /* 900402 */:
                this.mCallControlDispatcher.vaEventCallback(event);
                return;
            case VaConstants.MSG_ID_REQUEST_VOWIFI_RELATED_INFO /* 900406 */:
                this.mWfcDispatcher.vaEventCallback(event);
                return;
            default:
                Log.d(TAG, "Receive unsupported Request ID");
                return;
        }
    }
}
