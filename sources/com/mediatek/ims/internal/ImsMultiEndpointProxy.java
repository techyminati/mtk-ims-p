package com.mediatek.ims.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.telephony.Rlog;
import android.telephony.ims.ImsExternalCallState;
import android.telephony.ims.stub.ImsMultiEndpointImplBase;
import com.android.ims.internal.IImsExternalCallStateListener;
import com.mediatek.ims.internal.DialogEventPackageReceiver;
import java.util.List;
/* loaded from: classes.dex */
public class ImsMultiEndpointProxy extends ImsMultiEndpointImplBase {
    private static final int MSG_UPDATE = 1;
    private static final String TAG = "ImsMultiEndpointProxy";
    private List<ImsExternalCallState> mExternalCallStateList;
    private DialogEventPackageReceiver mReceiver;
    private IImsExternalCallStateListener mListener = null;
    private final DialogEventPackageReceiver.Listener mDepListener = new DialogEventPackageReceiver.ListenerBase() { // from class: com.mediatek.ims.internal.ImsMultiEndpointProxy.2
        @Override // com.mediatek.ims.internal.DialogEventPackageReceiver.ListenerBase, com.mediatek.ims.internal.DialogEventPackageReceiver.Listener
        public void onStateChanged(List<ImsExternalCallState> list) {
            ImsMultiEndpointProxy.this.update(list);
        }
    };
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.mediatek.ims.internal.ImsMultiEndpointProxy.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                ImsMultiEndpointProxy.this.update(ImsMultiEndpointProxy.this.mExternalCallStateList);
            }
        }
    };

    public ImsMultiEndpointProxy(Context context) {
        this.mReceiver = new DialogEventPackageReceiver(context, this.mDepListener);
        Rlog.d(TAG, TAG);
    }

    public void requestImsExternalCallStateInfo() {
        this.mHandler.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(List<ImsExternalCallState> externalCallDialogs) {
        this.mExternalCallStateList = externalCallDialogs;
        onImsExternalCallStateUpdate(this.mExternalCallStateList);
    }
}
