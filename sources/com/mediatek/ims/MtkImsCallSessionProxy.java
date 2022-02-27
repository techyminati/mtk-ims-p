package com.mediatek.ims;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import android.telephony.ims.ImsReasonInfo;
import com.android.ims.internal.IImsCallSession;
import com.mediatek.ims.ImsCallSessionProxy;
import com.mediatek.ims.internal.IMtkImsCallSession;
import com.mediatek.ims.internal.IMtkImsCallSessionListener;
import com.mediatek.ims.internal.op.OpImsCallSessionProxy;
import com.mediatek.ims.internal.op.OpImsServiceCall;
import com.mediatek.ims.internal.op.OpImsServiceFactory;
import com.mediatek.ims.internal.op.OpImsServiceFactoryBase;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkPhoneConstants;
/* loaded from: classes.dex */
public class MtkImsCallSessionProxy implements AutoCloseable {
    private static final boolean DBG = true;
    private static final String LOG_TAG = "MtkImsCallSessionProxy";
    private ImsCallSessionProxy mAospImsCallSessionProxy;
    private IMtkImsCallSessionListener mMtkListener;
    private OpImsCallSessionProxy mOpExt;
    private OpImsServiceCall mOpImsServiceCall;
    private IMtkImsCallSession mServiceImpl;

    /* loaded from: classes.dex */
    private class ImsCallLogLevel {
        public static final int DEBUG = 2;
        public static final int ERROR = 5;
        public static final int INFO = 3;
        public static final int VERBOSE = 1;
        public static final int WARNNING = 4;

        private ImsCallLogLevel() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MtkImsCallSessionProxy(Context context, ImsCallProfile profile, ImsCallSessionListener listener, ImsService imsService, Handler handler, ImsCommandsInterface ci, String callId, int phoneId) {
        this.mServiceImpl = new IMtkImsCallSession.Stub() { // from class: com.mediatek.ims.MtkImsCallSessionProxy.1
            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void close() {
                MtkImsCallSessionProxy.this.close();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public String getCallId() {
                return MtkImsCallSessionProxy.this.getCallId();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public ImsCallProfile getCallProfile() {
                return MtkImsCallSessionProxy.this.getCallProfile();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void setListener(IMtkImsCallSessionListener listener2) {
                MtkImsCallSessionProxy.this.setListener(listener2);
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public IImsCallSession getIImsCallSession() {
                return MtkImsCallSessionProxy.this.getIImsCallSession();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void setIImsCallSession(IImsCallSession iSession) {
                MtkImsCallSessionProxy.this.setIImsCallSession(iSession);
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public boolean isIncomingCallMultiparty() {
                return MtkImsCallSessionProxy.this.isIncomingCallMultiparty();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void sendDtmfbyTarget(char c, Message result, Messenger target) {
                MtkImsCallSessionProxy.this.sendDtmfbyTarget(c, result, target);
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void explicitCallTransfer() {
                MtkImsCallSessionProxy.this.explicitCallTransfer();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void unattendedCallTransfer(String number, int type) {
                MtkImsCallSessionProxy.this.unattendedCallTransfer(number, type);
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void deviceSwitch(String number, String deviceId) {
                MtkImsCallSessionProxy.this.deviceSwitch(number, deviceId);
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void cancelDeviceSwitch() {
                MtkImsCallSessionProxy.this.cancelDeviceSwitch();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void notifyRttECCRedialEvent() {
                MtkImsCallSessionProxy.this.notifyRttECCRedialEvent();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void notifyTextCapabilityChanged(int localCapability, int remoteCapability, int localTextStatus, int realRemoteCapability) {
                MtkImsCallSessionProxy.this.notifyTextCapabilityChanged(localCapability, remoteCapability, localTextStatus, realRemoteCapability);
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void notifyDeviceSwitchFailed(ImsReasonInfo reasonInfo) {
                MtkImsCallSessionProxy.this.notifyDeviceSwitchFailed(reasonInfo);
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void notifyDeviceSwitched() {
                MtkImsCallSessionProxy.this.notifyDeviceSwitched();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void resume() {
                MtkImsCallSessionProxy.this.resume();
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSession
            public void callTerminated() {
                MtkImsCallSessionProxy.this.callTerminated();
            }
        };
        OpImsServiceFactory factory = OpImsServiceFactoryBase.getInstance();
        this.mOpImsServiceCall = factory.makeOpImsServiceCall(context, phoneId);
        this.mOpExt = factory.makeOpImsCallSessionProxy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MtkImsCallSessionProxy(Context context, ImsCallProfile profile, ImsCallSessionListener listener, ImsService imsService, Handler handler, ImsCommandsInterface ci, int phoneId) {
        this(context, profile, listener, imsService, handler, ci, null, phoneId);
        logWithCallId("MtkImsCallSessionProxy() : RILAdapter = " + ci, 2);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        logWithCallId("close() : MtkImsCallSessionProxy is going to be closed!!! ", 2);
        this.mAospImsCallSessionProxy.close();
        this.mAospImsCallSessionProxy = null;
        this.mMtkListener = null;
    }

    public String getCallId() {
        if (this.mAospImsCallSessionProxy.getServiceImpl() == null) {
            logWithCallId("getCallId() : mCallSessionImpl is null", 2);
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        try {
            return this.mAospImsCallSessionProxy.getServiceImpl().getCallId();
        } catch (RemoteException e) {
            logWithCallId("getCallId() : RemoteException getCallId()", 5);
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        }
    }

    public ImsCallProfile getCallProfile() {
        if (this.mAospImsCallSessionProxy.getServiceImpl() == null) {
            logWithCallId("getCallProfile() : mCallSessionImpl is null", 2);
            return null;
        }
        try {
            return this.mAospImsCallSessionProxy.getServiceImpl().getCallProfile();
        } catch (RemoteException e) {
            logWithCallId("getCallProfile() : RemoteException getCallProfile()", 5);
            return null;
        }
    }

    public void setListener(IMtkImsCallSessionListener listener) {
        this.mMtkListener = listener;
    }

    public IImsCallSession getIImsCallSession() {
        return this.mAospImsCallSessionProxy.getServiceImpl();
    }

    void setIImsCallSession(IImsCallSession iSession) {
        this.mAospImsCallSessionProxy.setServiceImpl(iSession);
    }

    public boolean isIncomingCallMultiparty() {
        if (this.mAospImsCallSessionProxy.getServiceImpl() != null) {
            return this.mAospImsCallSessionProxy.isIncomingCallMultiparty();
        }
        logWithCallId("isIncomingCallMultiparty() : mCallSessionImpl is null", 2);
        return false;
    }

    public void sendDtmfbyTarget(char c, Message result, Messenger target) {
        if (this.mAospImsCallSessionProxy.getServiceImpl() == null) {
            logWithCallId("sendDtmfbyTarget() : mCallSessionImpl is null", 2);
        } else {
            this.mAospImsCallSessionProxy.sendDtmfbyTarget(c, result, target);
        }
    }

    public void explicitCallTransfer() {
        if (this.mAospImsCallSessionProxy == null) {
            logWithCallId("explicitCallTransfer() : mCallSessionImpl is null", 2);
        } else {
            this.mAospImsCallSessionProxy.explicitCallTransfer();
        }
    }

    public void unattendedCallTransfer(String number, int type) {
        if (this.mAospImsCallSessionProxy == null) {
            logWithCallId("unattendedCallTransfer() : mCallSessionImpl is null", 2);
        } else {
            this.mAospImsCallSessionProxy.unattendedCallTransfer(number, type);
        }
    }

    public void deviceSwitch(String number, String deviceId) {
        if (this.mAospImsCallSessionProxy == null) {
            logWithCallId("deviceSwitch() : mCallSessionImpl is null", 2);
        } else {
            this.mAospImsCallSessionProxy.deviceSwitch(number, deviceId);
        }
    }

    public void cancelDeviceSwitch() {
        if (this.mAospImsCallSessionProxy == null) {
            logWithCallId("cancelDeviceSwitch() : mCallSessionImpl is null", 2);
        } else {
            this.mAospImsCallSessionProxy.cancelDeviceSwitch();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyTransferred() {
        if (this.mMtkListener == null) {
            logWithCallId("notifyTransferred() : mMtkListener is null", 2);
            return;
        }
        try {
            this.mMtkListener.callSessionTransferred(this.mServiceImpl);
        } catch (RemoteException e) {
            logWithCallId("notifyTransferred() : RemoteException callSessionTransferred()", 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyTransferFailed(ImsReasonInfo reasonInfo) {
        if (this.mMtkListener == null) {
            logWithCallId("notifyTransferFailed() : mMtkListener is null", 2);
            return;
        }
        try {
            this.mMtkListener.callSessionTransferFailed(this.mServiceImpl, reasonInfo);
        } catch (RemoteException e) {
            logWithCallId("notifyTransferFailed() : RemoteException callSessionTransferFailed()", 5);
        }
    }

    public void notifyDeviceSwitched() {
        if (this.mMtkListener == null) {
            logWithCallId("notifyDeviceSwitched() : mMtkListener is null", 2);
            return;
        }
        try {
            this.mMtkListener.callSessionDeviceSwitched(this.mServiceImpl);
        } catch (RemoteException e) {
            logWithCallId("notifyDeviceSwitched() : RemoteException notifyDeviceSwitched()", 5);
        }
    }

    public void notifyDeviceSwitchFailed(ImsReasonInfo reasonInfo) {
        Rlog.d(LOG_TAG, "notifyTransferFailed()");
        if (this.mMtkListener == null) {
            logWithCallId("notifyDeviceSwitchFailed() : mMtkListener is null", 2);
            return;
        }
        try {
            this.mMtkListener.callSessionDeviceSwitchFailed(this.mServiceImpl, reasonInfo);
        } catch (RemoteException e) {
            logWithCallId("notifyDeviceSwitchFailed() : RemoteException notifyDeviceSwitchFailed()", 5);
        }
    }

    public void notifyTextCapabilityChanged(int localCapability, int remoteCapability, int localTextStatus, int realRemoteCapability) {
        this.mOpExt.notifyTextCapabilityChanged(this.mMtkListener, this.mServiceImpl, localCapability, remoteCapability, localTextStatus, realRemoteCapability);
    }

    public void notifyRttECCRedialEvent() {
        this.mOpExt.notifyRttECCRedialEvent(this.mMtkListener, this.mServiceImpl);
    }

    public void resume() {
        this.mAospImsCallSessionProxy.resume(null);
    }

    public void callTerminated() {
        this.mAospImsCallSessionProxy.callTerminated();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyCallSessionMergeStarted(IMtkImsCallSession mtkConfSession, ImsCallProfile imsCallProfile) {
        if (this.mMtkListener == null) {
            logWithCallId("notifyCallSessionMergeStarted() : mMtkListener is null", 2);
            return;
        }
        try {
            this.mMtkListener.callSessionMergeStarted(this.mServiceImpl, mtkConfSession, imsCallProfile);
        } catch (RemoteException e) {
            logWithCallId("notifyCallSessionMergeStarted() : RemoteException when MTK session merged started", 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyCallSessionMergeComplete(IMtkImsCallSession mtkConfSession) {
        if (this.mMtkListener == null) {
            logWithCallId("notifyCallSessionMergeComplete() : mMtkListener is null", 2);
            return;
        }
        try {
            this.mMtkListener.callSessionMergeComplete(mtkConfSession);
        } catch (RemoteException e) {
            logWithCallId("notifyCallSessionMergeComplete() : RemoteException when MTK session merged started", 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyRedialEcc() {
        if (this.mMtkListener == null) {
            Rlog.d(LOG_TAG, "notifyRedialEcc() : mMtkListener is null");
            return;
        }
        try {
            this.mMtkListener.callSessionRedialEcc(this.mServiceImpl);
        } catch (RemoteException e) {
            Rlog.e(LOG_TAG, "notifyTransferred() : RemoteException callSessionTransferred()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsCallSessionProxy.ConferenceEventListener getConfEvtListener() {
        if (this.mAospImsCallSessionProxy != null) {
            return this.mAospImsCallSessionProxy.getConfEvtListener();
        }
        logWithCallId("ConferenceEventListener() : mCallSessionImpl is null", 2);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void terminate(int reason) {
        if (this.mAospImsCallSessionProxy != null) {
            this.mAospImsCallSessionProxy.terminate(reason);
        }
    }

    public IMtkImsCallSession getServiceImpl() {
        return this.mServiceImpl;
    }

    public void setServiceImpl(IMtkImsCallSession serviceImpl) {
        this.mServiceImpl = serviceImpl;
    }

    public ImsCallSessionProxy getAospCallSessionProxy() {
        return this.mAospImsCallSessionProxy;
    }

    public void setAospCallSessionProxy(ImsCallSessionProxy callSessionProxy) {
        this.mAospImsCallSessionProxy = callSessionProxy;
    }

    private void logWithCallId(String msg, int lvl) {
        if (this.mAospImsCallSessionProxy == null) {
            Rlog.d(LOG_TAG, "logWithCallId with mAospImsCallSessionProxy = null");
            return;
        }
        String mCallId = this.mAospImsCallSessionProxy.getCallId();
        if (1 == lvl) {
            Rlog.v(LOG_TAG, "[callId = " + mCallId + "] " + msg);
        } else if (2 == lvl) {
            Rlog.d(LOG_TAG, "[callId = " + mCallId + "] " + msg);
        } else if (3 == lvl) {
            Rlog.i(LOG_TAG, "[callId = " + mCallId + "] " + msg);
        } else if (4 == lvl) {
            Rlog.w(LOG_TAG, "[callId = " + mCallId + "] " + msg);
        } else if (5 == lvl) {
            Rlog.e(LOG_TAG, "[callId = " + mCallId + "] " + msg);
        } else {
            Rlog.d(LOG_TAG, "[callId = " + mCallId + "] " + msg);
        }
    }
}
