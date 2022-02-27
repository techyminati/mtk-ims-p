package com.android.ims;

import android.content.Context;
import android.net.Uri;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.aidl.IImsConfig;
import android.telephony.ims.aidl.IImsMmTelFeature;
import android.telephony.ims.aidl.IImsMmTelListener;
import android.telephony.ims.aidl.IImsRegistration;
import android.telephony.ims.aidl.IImsRegistrationCallback;
import android.telephony.ims.aidl.IImsSmsListener;
import android.telephony.ims.feature.CapabilityChangeRequest;
import android.telephony.ims.feature.ImsFeature;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import android.util.Log;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsServiceFeatureCallback;
import com.android.ims.internal.IImsUt;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class MmTelFeatureConnection {
    protected static final String TAG = "MmTelFeatureConnection";
    protected IBinder mBinder;
    private IImsConfig mConfigBinder;
    private Context mContext;
    private IImsRegistration mRegistrationBinder;
    protected final int mSlotId;
    private IFeatureUpdate mStatusCallback;
    private volatile boolean mIsAvailable = false;
    private Integer mFeatureStateCached = null;
    private final Object mLock = new Object();
    private boolean mSupportsEmergencyCalling = false;
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.android.ims.-$$Lambda$MmTelFeatureConnection$ij8S4RNRiQPHfppwkejp36BG78I
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MmTelFeatureConnection.lambda$new$0(MmTelFeatureConnection.this);
        }
    };
    private ImsRegistrationCallbackAdapter mRegistrationCallbackManager = new ImsRegistrationCallbackAdapter();
    private final CapabilityCallbackManager mCapabilityCallbackManager = new CapabilityCallbackManager();
    private final IImsServiceFeatureCallback mListenerBinder = new IImsServiceFeatureCallback.Stub() { // from class: com.android.ims.MmTelFeatureConnection.1
        public void imsFeatureCreated(int slotId, int feature) throws RemoteException {
            synchronized (MmTelFeatureConnection.this.mLock) {
                if (MmTelFeatureConnection.this.mSlotId == slotId) {
                    switch (feature) {
                        case 0:
                            MmTelFeatureConnection.this.mSupportsEmergencyCalling = true;
                            Log.i(MmTelFeatureConnection.TAG, "Emergency calling enabled on slotId: " + slotId);
                            break;
                        case 1:
                            if (!MmTelFeatureConnection.this.mIsAvailable) {
                                Log.i(MmTelFeatureConnection.TAG, "MmTel enabled on slotId: " + slotId);
                                MmTelFeatureConnection.this.mIsAvailable = true;
                                break;
                            }
                            break;
                    }
                }
            }
        }

        public void imsFeatureRemoved(int slotId, int feature) throws RemoteException {
            synchronized (MmTelFeatureConnection.this.mLock) {
                if (MmTelFeatureConnection.this.mSlotId == slotId) {
                    switch (feature) {
                        case 0:
                            MmTelFeatureConnection.this.mSupportsEmergencyCalling = false;
                            Log.i(MmTelFeatureConnection.TAG, "Emergency calling disabled on slotId: " + slotId);
                            break;
                        case 1:
                            Log.i(MmTelFeatureConnection.TAG, "MmTel removed on slotId: " + slotId);
                            MmTelFeatureConnection.this.onRemovedOrDied();
                            break;
                    }
                }
            }
        }

        public void imsStatusChanged(int slotId, int feature, int status) throws RemoteException {
            synchronized (MmTelFeatureConnection.this.mLock) {
                Log.i(MmTelFeatureConnection.TAG, "imsStatusChanged: slot: " + slotId + " feature: " + feature + " status: " + status);
                if (MmTelFeatureConnection.this.mSlotId == slotId && feature == 1) {
                    MmTelFeatureConnection.this.mFeatureStateCached = Integer.valueOf(status);
                    if (MmTelFeatureConnection.this.mStatusCallback != null) {
                        MmTelFeatureConnection.this.mStatusCallback.notifyStateChanged();
                    }
                }
            }
        }
    };

    /* loaded from: classes.dex */
    public interface IFeatureUpdate {
        void notifyStateChanged();

        void notifyUnavailable();
    }

    public static /* synthetic */ void lambda$new$0(MmTelFeatureConnection mmTelFeatureConnection) {
        Log.w(TAG, "DeathRecipient triggered, binder died.");
        mmTelFeatureConnection.onRemovedOrDied();
    }

    /* loaded from: classes.dex */
    private abstract class CallbackAdapterManager<T> {
        private static final String TAG = "CallbackAdapterManager";
        private boolean mHasConnected;
        protected final Set<T> mLocalCallbacks;

        abstract boolean createConnection() throws RemoteException;

        abstract void removeConnection();

        private CallbackAdapterManager() {
            this.mLocalCallbacks = Collections.newSetFromMap(new ConcurrentHashMap());
            this.mHasConnected = false;
        }

        public void addCallback(T localCallback) throws RemoteException {
            synchronized (MmTelFeatureConnection.this.mLock) {
                if (!this.mHasConnected) {
                    if (createConnection()) {
                        this.mHasConnected = true;
                    } else {
                        throw new RemoteException("Can not create connection!");
                    }
                }
            }
            Log.i(TAG, "Local callback added: " + localCallback);
            this.mLocalCallbacks.add(localCallback);
        }

        public void removeCallback(T localCallback) {
            Log.i(TAG, "Local callback removed: " + localCallback);
            this.mLocalCallbacks.remove(localCallback);
            synchronized (MmTelFeatureConnection.this.mLock) {
                if (this.mHasConnected && this.mLocalCallbacks.isEmpty()) {
                    removeConnection();
                    this.mHasConnected = false;
                }
            }
        }

        public void close() {
            synchronized (MmTelFeatureConnection.this.mLock) {
                if (this.mHasConnected) {
                    removeConnection();
                    this.mHasConnected = false;
                }
            }
            Log.i(TAG, "Closing connection and clearing callbacks");
            this.mLocalCallbacks.clear();
        }
    }

    /* loaded from: classes.dex */
    private class ImsRegistrationCallbackAdapter extends CallbackAdapterManager<ImsRegistrationImplBase.Callback> {
        private final RegistrationCallbackAdapter mRegistrationCallbackAdapter;

        private ImsRegistrationCallbackAdapter() {
            super();
            this.mRegistrationCallbackAdapter = new RegistrationCallbackAdapter();
        }

        /* loaded from: classes.dex */
        private class RegistrationCallbackAdapter extends IImsRegistrationCallback.Stub {
            private RegistrationCallbackAdapter() {
            }

            public void onRegistered(final int imsRadioTech) {
                Log.i(MmTelFeatureConnection.TAG, "onRegistered ::");
                ImsRegistrationCallbackAdapter.this.mLocalCallbacks.forEach(new Consumer() { // from class: com.android.ims.-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$K3hccJ541Q6pLDm26Z8TPlTWIJY
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ImsRegistrationImplBase.Callback) obj).onRegistered(imsRadioTech);
                    }
                });
            }

            public void onRegistering(final int imsRadioTech) {
                Log.i(MmTelFeatureConnection.TAG, "onRegistering ::");
                ImsRegistrationCallbackAdapter.this.mLocalCallbacks.forEach(new Consumer() { // from class: com.android.ims.-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$u4ZBOw30LePcwafim6pu64v4hNM
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ImsRegistrationImplBase.Callback) obj).onRegistering(imsRadioTech);
                    }
                });
            }

            public void onDeregistered(final ImsReasonInfo imsReasonInfo) {
                Log.i(MmTelFeatureConnection.TAG, "onDeregistered ::");
                ImsRegistrationCallbackAdapter.this.mLocalCallbacks.forEach(new Consumer() { // from class: com.android.ims.-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$vxFS2t25rwEiTAgHUI462y3Hz90
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ImsRegistrationImplBase.Callback) obj).onDeregistered(imsReasonInfo);
                    }
                });
            }

            public void onTechnologyChangeFailed(final int targetRadioTech, final ImsReasonInfo imsReasonInfo) {
                Log.i(MmTelFeatureConnection.TAG, "onTechnologyChangeFailed :: targetAccessTech=" + targetRadioTech + ", imsReasonInfo=" + imsReasonInfo);
                ImsRegistrationCallbackAdapter.this.mLocalCallbacks.forEach(new Consumer() { // from class: com.android.ims.-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$MXrzNMmn7kmMT_nTAM0W7J2nTFU
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ImsRegistrationImplBase.Callback) obj).onTechnologyChangeFailed(targetRadioTech, imsReasonInfo);
                    }
                });
            }

            public void onSubscriberAssociatedUriChanged(final Uri[] uris) {
                Log.i(MmTelFeatureConnection.TAG, "onSubscriberAssociatedUriChanged");
                ImsRegistrationCallbackAdapter.this.mLocalCallbacks.forEach(new Consumer() { // from class: com.android.ims.-$$Lambda$MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter$0vZ6D8L8NEmVenYChls3pkTpxsQ
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ImsRegistrationImplBase.Callback) obj).onSubscriberAssociatedUriChanged(uris);
                    }
                });
            }
        }

        @Override // com.android.ims.MmTelFeatureConnection.CallbackAdapterManager
        boolean createConnection() throws RemoteException {
            IImsRegistration imsRegistration = MmTelFeatureConnection.this.getRegistration();
            if (imsRegistration != null) {
                MmTelFeatureConnection.this.getRegistration().addRegistrationCallback(this.mRegistrationCallbackAdapter);
                return true;
            }
            Log.e(MmTelFeatureConnection.TAG, "ImsRegistration is null");
            return false;
        }

        @Override // com.android.ims.MmTelFeatureConnection.CallbackAdapterManager
        void removeConnection() {
            IImsRegistration imsRegistration = MmTelFeatureConnection.this.getRegistration();
            if (imsRegistration != null) {
                try {
                    MmTelFeatureConnection.this.getRegistration().removeRegistrationCallback(this.mRegistrationCallbackAdapter);
                } catch (RemoteException e) {
                    Log.w(MmTelFeatureConnection.TAG, "removeConnection: couldn't remove registration callback");
                }
            } else {
                Log.e(MmTelFeatureConnection.TAG, "ImsRegistration is null");
            }
        }
    }

    /* loaded from: classes.dex */
    private class CapabilityCallbackManager extends CallbackAdapterManager<ImsFeature.CapabilityCallback> {
        private final CapabilityCallbackAdapter mCallbackAdapter;

        private CapabilityCallbackManager() {
            super();
            this.mCallbackAdapter = new CapabilityCallbackAdapter();
        }

        /* loaded from: classes.dex */
        private class CapabilityCallbackAdapter extends ImsFeature.CapabilityCallback {
            private CapabilityCallbackAdapter() {
            }

            public void onCapabilitiesStatusChanged(final ImsFeature.Capabilities config) {
                CapabilityCallbackManager.this.mLocalCallbacks.forEach(new Consumer() { // from class: com.android.ims.-$$Lambda$MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter$Fu_TJxPrz_icRRAcE-hESmVfVRI
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ImsFeature.CapabilityCallback) obj).onCapabilitiesStatusChanged(config);
                    }
                });
            }
        }

        @Override // com.android.ims.MmTelFeatureConnection.CallbackAdapterManager
        boolean createConnection() throws RemoteException {
            IImsMmTelFeature binder;
            synchronized (MmTelFeatureConnection.this.mLock) {
                MmTelFeatureConnection.this.checkServiceIsReady();
                binder = MmTelFeatureConnection.this.getServiceInterface(MmTelFeatureConnection.this.mBinder);
            }
            if (binder != null) {
                binder.addCapabilityCallback(this.mCallbackAdapter);
                return true;
            }
            Log.w(MmTelFeatureConnection.TAG, "create: Couldn't get IImsMmTelFeature binder");
            return false;
        }

        @Override // com.android.ims.MmTelFeatureConnection.CallbackAdapterManager
        void removeConnection() {
            IImsMmTelFeature binder = null;
            synchronized (MmTelFeatureConnection.this.mLock) {
                try {
                    MmTelFeatureConnection.this.checkServiceIsReady();
                    binder = MmTelFeatureConnection.this.getServiceInterface(MmTelFeatureConnection.this.mBinder);
                } catch (RemoteException e) {
                }
            }
            if (binder != null) {
                try {
                    binder.removeCapabilityCallback(this.mCallbackAdapter);
                } catch (RemoteException e2) {
                    Log.w(MmTelFeatureConnection.TAG, "remove: IImsMmTelFeature binder is dead");
                }
            } else {
                Log.w(MmTelFeatureConnection.TAG, "remove: Couldn't get IImsMmTelFeature binder");
            }
        }
    }

    public static MmTelFeatureConnection create(Context context, int slotId) {
        MmTelFeatureConnection serviceProxy = new MmTelFeatureConnection(context, slotId);
        TelephonyManager tm = getTelephonyManager(context);
        if (tm == null) {
            Rlog.w(TAG, "create: TelephonyManager is null!");
            return serviceProxy;
        }
        IImsMmTelFeature binder = tm.getImsMmTelFeatureAndListen(slotId, serviceProxy.getListener());
        if (binder != null) {
            serviceProxy.setBinder(binder.asBinder());
            serviceProxy.getFeatureState();
        } else {
            Rlog.w(TAG, "create: binder is null! Slot Id: " + slotId);
        }
        return serviceProxy;
    }

    public static TelephonyManager getTelephonyManager(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    public MmTelFeatureConnection(Context context, int slotId) {
        this.mSlotId = slotId;
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemovedOrDied() {
        synchronized (this.mLock) {
            if (this.mIsAvailable) {
                this.mIsAvailable = false;
                this.mRegistrationBinder = null;
                this.mConfigBinder = null;
                if (this.mBinder != null) {
                    this.mBinder.unlinkToDeath(this.mDeathRecipient, 0);
                }
                if (this.mStatusCallback != null) {
                    this.mStatusCallback.notifyUnavailable();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IImsRegistration getRegistration() {
        synchronized (this.mLock) {
            if (this.mRegistrationBinder != null) {
                return this.mRegistrationBinder;
            }
            TelephonyManager tm = getTelephonyManager(this.mContext);
            IImsRegistration regBinder = tm != null ? tm.getImsRegistration(this.mSlotId, 1) : null;
            synchronized (this.mLock) {
                if (this.mRegistrationBinder == null) {
                    this.mRegistrationBinder = regBinder;
                }
            }
            return this.mRegistrationBinder;
        }
    }

    private IImsConfig getConfig() {
        synchronized (this.mLock) {
            if (this.mConfigBinder != null) {
                return this.mConfigBinder;
            }
            TelephonyManager tm = getTelephonyManager(this.mContext);
            IImsConfig configBinder = tm != null ? tm.getImsConfig(this.mSlotId, 1) : null;
            synchronized (this.mLock) {
                if (this.mConfigBinder == null) {
                    this.mConfigBinder = configBinder;
                }
            }
            return this.mConfigBinder;
        }
    }

    public boolean isEmergencyMmTelAvailable() {
        return this.mSupportsEmergencyCalling;
    }

    public IImsServiceFeatureCallback getListener() {
        return this.mListenerBinder;
    }

    public void setBinder(IBinder binder) {
        synchronized (this.mLock) {
            this.mBinder = binder;
            try {
                if (this.mBinder != null) {
                    this.mBinder.linkToDeath(this.mDeathRecipient, 0);
                }
            } catch (RemoteException e) {
            }
        }
    }

    public void openConnection(MmTelFeature.Listener listener) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).setListener(listener);
        }
    }

    public void closeConnection() {
        this.mRegistrationCallbackManager.close();
        this.mCapabilityCallbackManager.close();
        try {
            synchronized (this.mLock) {
                if (isBinderAlive()) {
                    getServiceInterface(this.mBinder).setListener((IImsMmTelListener) null);
                }
            }
        } catch (RemoteException e) {
            Log.w(TAG, "closeConnection: couldn't remove listener!");
        }
    }

    public void addRegistrationCallback(ImsRegistrationImplBase.Callback callback) throws RemoteException {
        this.mRegistrationCallbackManager.addCallback(callback);
    }

    public void removeRegistrationCallback(ImsRegistrationImplBase.Callback callback) throws RemoteException {
        this.mRegistrationCallbackManager.removeCallback(callback);
    }

    public void addCapabilityCallback(ImsFeature.CapabilityCallback callback) throws RemoteException {
        this.mCapabilityCallbackManager.addCallback(callback);
    }

    public void removeCapabilityCallback(ImsFeature.CapabilityCallback callback) throws RemoteException {
        this.mCapabilityCallbackManager.removeCallback(callback);
    }

    public void changeEnabledCapabilities(CapabilityChangeRequest request, ImsFeature.CapabilityCallback callback) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).changeCapabilitiesConfiguration(request, callback);
        }
    }

    public void queryEnabledCapabilities(int capability, int radioTech, ImsFeature.CapabilityCallback callback) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).queryCapabilityConfiguration(capability, radioTech, callback);
        }
    }

    public MmTelFeature.MmTelCapabilities queryCapabilityStatus() throws RemoteException {
        MmTelFeature.MmTelCapabilities mmTelCapabilities;
        synchronized (this.mLock) {
            checkServiceIsReady();
            mmTelCapabilities = new MmTelFeature.MmTelCapabilities(getServiceInterface(this.mBinder).queryCapabilityStatus());
        }
        return mmTelCapabilities;
    }

    public ImsCallProfile createCallProfile(int callServiceType, int callType) throws RemoteException {
        ImsCallProfile createCallProfile;
        synchronized (this.mLock) {
            checkServiceIsReady();
            createCallProfile = getServiceInterface(this.mBinder).createCallProfile(callServiceType, callType);
        }
        return createCallProfile;
    }

    public IImsCallSession createCallSession(ImsCallProfile profile) throws RemoteException {
        IImsCallSession createCallSession;
        synchronized (this.mLock) {
            checkServiceIsReady();
            createCallSession = getServiceInterface(this.mBinder).createCallSession(profile);
        }
        return createCallSession;
    }

    public IImsUt getUtInterface() throws RemoteException {
        IImsUt utInterface;
        synchronized (this.mLock) {
            checkServiceIsReady();
            utInterface = getServiceInterface(this.mBinder).getUtInterface();
        }
        return utInterface;
    }

    public IImsConfig getConfigInterface() throws RemoteException {
        return getConfig();
    }

    public int getRegistrationTech() throws RemoteException {
        IImsRegistration registration = getRegistration();
        if (registration != null) {
            return registration.getRegistrationTechnology();
        }
        return -1;
    }

    public IImsEcbm getEcbmInterface() throws RemoteException {
        IImsEcbm ecbmInterface;
        synchronized (this.mLock) {
            checkServiceIsReady();
            ecbmInterface = getServiceInterface(this.mBinder).getEcbmInterface();
        }
        return ecbmInterface;
    }

    public void setUiTTYMode(int uiTtyMode, Message onComplete) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).setUiTtyMode(uiTtyMode, onComplete);
        }
    }

    public IImsMultiEndpoint getMultiEndpointInterface() throws RemoteException {
        IImsMultiEndpoint multiEndpointInterface;
        synchronized (this.mLock) {
            checkServiceIsReady();
            multiEndpointInterface = getServiceInterface(this.mBinder).getMultiEndpointInterface();
        }
        return multiEndpointInterface;
    }

    public void sendSms(int token, int messageRef, String format, String smsc, boolean isRetry, byte[] pdu) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).sendSms(token, messageRef, format, smsc, isRetry, pdu);
        }
    }

    public void acknowledgeSms(int token, int messageRef, int result) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).acknowledgeSms(token, messageRef, result);
        }
    }

    public void acknowledgeSmsReport(int token, int messageRef, int result) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).acknowledgeSmsReport(token, messageRef, result);
        }
    }

    public String getSmsFormat() throws RemoteException {
        String smsFormat;
        synchronized (this.mLock) {
            checkServiceIsReady();
            smsFormat = getServiceInterface(this.mBinder).getSmsFormat();
        }
        return smsFormat;
    }

    public void onSmsReady() throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).onSmsReady();
        }
    }

    public void setSmsListener(IImsSmsListener listener) throws RemoteException {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).setSmsListener(listener);
        }
    }

    public int shouldProcessCall(boolean isEmergency, String[] numbers) throws RemoteException {
        int shouldProcessCall;
        if (!isEmergency || isEmergencyMmTelAvailable()) {
            synchronized (this.mLock) {
                checkServiceIsReady();
                shouldProcessCall = getServiceInterface(this.mBinder).shouldProcessCall(numbers);
            }
            return shouldProcessCall;
        }
        Log.i(TAG, "MmTel does not support emergency over IMS, fallback to CS.");
        return 1;
    }

    public int getFeatureState() {
        synchronized (this.mLock) {
            if (!isBinderAlive() || this.mFeatureStateCached == null) {
                Integer status = retrieveFeatureState();
                synchronized (this.mLock) {
                    try {
                        if (status == null) {
                            return 0;
                        }
                        this.mFeatureStateCached = status;
                        Log.i(TAG, "getFeatureState - returning " + status);
                        return status.intValue();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else {
                return this.mFeatureStateCached.intValue();
            }
        }
    }

    private Integer retrieveFeatureState() {
        if (this.mBinder == null) {
            return null;
        }
        try {
            return Integer.valueOf(getServiceInterface(this.mBinder).getFeatureState());
        } catch (RemoteException e) {
            return null;
        }
    }

    public void setStatusCallback(IFeatureUpdate c) {
        this.mStatusCallback = c;
    }

    public boolean isBinderReady() {
        return isBinderAlive() && getFeatureState() == 2;
    }

    public boolean isBinderAlive() {
        return this.mIsAvailable && this.mBinder != null && this.mBinder.isBinderAlive();
    }

    protected void checkServiceIsReady() throws RemoteException {
        if (!isBinderReady()) {
            throw new RemoteException("ImsServiceProxy is not ready to accept commands.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IImsMmTelFeature getServiceInterface(IBinder b) {
        return IImsMmTelFeature.Stub.asInterface(b);
    }

    protected void checkBinderConnection() throws RemoteException {
        if (!isBinderAlive()) {
            throw new RemoteException("ImsServiceProxy is not available for that feature.");
        }
    }
}
