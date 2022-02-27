package com.mediatek.ims;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.AsyncResult;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.SmsMessage;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.aidl.IImsCallSessionListener;
import android.telephony.ims.aidl.IImsSmsListener;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import android.telephony.ims.stub.ImsEcbmImplBase;
import android.telephony.ims.stub.ImsMultiEndpointImplBase;
import android.telephony.ims.stub.ImsUtImplBase;
import android.util.SparseArray;
import com.android.ims.ImsConfigListener;
import com.android.ims.ImsManager;
import com.android.ims.ImsServiceBase;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsEcbmListener;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsUt;
import com.android.internal.telephony.CommandException;
import com.mediatek.gba.NafSessionKey;
import com.mediatek.ims.OperatorUtils;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.config.internal.ImsConfigUtils;
import com.mediatek.ims.ext.DigitsUtil;
import com.mediatek.ims.ext.IImsServiceExt;
import com.mediatek.ims.ext.OpImsServiceCustomizationUtils;
import com.mediatek.ims.feature.MtkImsUtImplBase;
import com.mediatek.ims.internal.IMtkImsCallSession;
import com.mediatek.ims.internal.IMtkImsUt;
import com.mediatek.ims.internal.ImsDataTracker;
import com.mediatek.ims.internal.ImsMultiEndpointProxy;
import com.mediatek.ims.internal.ImsXuiManager;
import com.mediatek.ims.internal.op.OpImsService;
import com.mediatek.ims.internal.op.OpImsServiceFactoryBase;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ImsManagerOemPlugin;
import com.mediatek.ims.plugin.ImsRegistrationOemPlugin;
import com.mediatek.ims.plugin.LegacyComponentFactory;
import com.mediatek.ims.plugin.OemPluginFactory;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.ims.ril.ImsRILAdapter;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.MtkTelephonyProperties;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import com.mediatek.wfo.IMwiService;
import com.mediatek.wfo.IWifiOffloadService;
import com.mediatek.wfo.MwisConstants;
import com.mediatek.wfo.WifiOffloadManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class ImsService extends ImsServiceBase {
    private static final String CONFIG_EXTRA_PHONE_ID = "phone_id";
    private static final boolean DBG = true;
    protected static final int EVENT_CALL_INFO_INDICATION = 8;
    protected static final int EVENT_IMS_DEREG_DONE = 16;
    protected static final int EVENT_IMS_DEREG_URC = 17;
    protected static final int EVENT_IMS_DISABLED_URC = 5;
    protected static final int EVENT_IMS_DISABLING_URC = 12;
    protected static final int EVENT_IMS_ENABLED_URC = 11;
    protected static final int EVENT_IMS_ENABLING_URC = 10;
    private static final int EVENT_IMS_REGISTRATION_INFO = 1;
    protected static final int EVENT_IMS_RTP_INFO_URC = 20;
    protected static final int EVENT_IMS_SMS_NEW_CDMA_SMS = 32;
    protected static final int EVENT_IMS_SMS_NEW_SMS = 31;
    protected static final int EVENT_IMS_SMS_STATUS_REPORT = 30;
    protected static final int EVENT_IMS_SUPPORT_ECC_URC = 25;
    protected static final int EVENT_IMS_VOLTE_SETTING_URC = 22;
    protected static final int EVENT_INCOMING_CALL_INDICATION = 7;
    protected static final int EVENT_INIT_CALL_SESSION_PROXY = 27;
    protected static final int EVENT_ON_NETWORK_INIT_USSI = 15;
    protected static final int EVENT_RADIO_NOT_AVAILABLE = 2;
    protected static final int EVENT_RADIO_OFF = 18;
    protected static final int EVENT_RADIO_ON = 19;
    protected static final int EVENT_RUN_GBA = 23;
    protected static final int EVENT_SELF_IDENTIFY_UPDATE = 24;
    protected static final int EVENT_SEND_SMS_DONE = 28;
    protected static final int EVENT_SET_IMS_DISABLE_DONE = 4;
    protected static final int EVENT_SET_IMS_ENABLED_DONE = 3;
    protected static final int EVENT_SET_IMS_REGISTRATION_REPORT_DONE = 21;
    protected static final int EVENT_SIP_CODE_INDICATION = 13;
    protected static final int EVENT_SIP_CODE_INDICATION_DEREG = 14;
    protected static final int EVENT_START_GBA_SERVICE = 26;
    protected static final int EVENT_UT_CAPABILITY_CHANGE = 29;
    private static final int EVENT_VIRTUAL_SIM_ON = 6;
    private static final int IMS_ALLOW_INCOMING_CALL_INDICATION = 0;
    private static final int IMS_DISALLOW_INCOMING_CALL_INDICATION = 1;
    private static final int IMS_MAX_FEATURE_SUPPORT_SIZE = 6;
    private static final int IMS_RCS_OVER_LTE = 2;
    private static final int IMS_REG_SIP_URI_TYPE_IMSI = 1;
    private static final int IMS_REG_SIP_URI_TYPE_MSISDN = 0;
    private static final String IMS_SERVICE = "ims";
    private static final int IMS_SMS_OVER_LTE = 4;
    private static final int IMS_SS_CMD_ERROR = 3;
    private static final int IMS_SS_CMD_SUCCESS = 4;
    private static final int IMS_SS_INTERRUPT_ERROR = 2;
    private static final int IMS_SS_TIMEOUT_ERROR = 1;
    private static final int IMS_VIDEO_OVER_LTE = 8;
    private static final int IMS_VOICE_OVER_LTE = 1;
    private static final int IMS_VOICE_OVER_WIFI = 16;
    private static final String LOG_TAG = "ImsService";
    private static final String PROPERTY_IMSCONFIG_FORCE_NOTIFY = "vendor.ril.imsconfig.force.notify";
    private static final String PROPERTY_IMS_REG_EXTINFO = "ril.ims.extinfo";
    private static final boolean VDBG = false;
    private Context mContext;
    private int[] mExpectedImsState;
    private final Handler[] mHandler;
    private ImsAdapter mImsAdapter;
    private ImsCallProfile mImsCallProfile;
    private ImsConfigManager mImsConfigManager;
    private ImsDataTracker mImsDataTracker;
    private ImsEcbmProxy[] mImsEcbm;
    private ImsEventPackageAdapter[] mImsEvtPkgAdapter;
    private int[] mImsExtInfo;
    private ImsCommandsInterface[] mImsRILAdapters;
    private int[] mImsRegInfo;
    private int[] mImsState;
    private int[] mIsImsEccSupported;
    private int mNumOfPhones;
    private OpImsService mOpExt;
    private String mPendingMTCallId;
    private int[] mRAN;
    private int[] mRegErrorCode;
    private int[] mServiceId;
    private boolean[] mVolteEnable;
    private boolean[] mWaitSubInfoChange;
    private static final boolean ENGLOAD = "eng".equals(Build.TYPE);
    private static IWifiOffloadService sWifiOffloadService = null;
    private static HashMap<Integer, MtkImsRegistrationImpl> sMtkImsRegImpl = new HashMap<>();
    private static HashMap<Integer, MtkSuppServExt> sMtkSSExt = new HashMap<>();
    private static ImsService sInstance = null;
    protected static final Object mLock = new Object();
    private static Map<Object, Object> mPendingMtkImsCallSessionProxy = new HashMap();
    private ImsCallSessionProxy mPendingMT = null;
    private MtkImsCallSessionProxy mMtkPendingMT = null;
    private Object mLockObj = new Object();
    private Object mLockUri = new Object();
    private IWifiOffloadServiceDeathRecipient mDeathRecipient = new IWifiOffloadServiceDeathRecipient();
    private IWifiOffloadListenerProxy mProxy = null;
    private ArrayList<HashSet<IImsRegistrationListener>> mListener = new ArrayList<>();
    private ImsManagerOemPlugin mImsManagerOemPlugin = null;
    private boolean mIsPendingMTTerminated = false;
    private Map<Integer, ImsMultiEndpointProxy> mMultiEndpointMap = new HashMap();
    private ArrayList<HashSet<IImsSmsListener>> mImsSmsListener = new ArrayList<>();
    private boolean mRegisterSubInfoChange = false;
    private int mWaitFeatureChange = 0;
    private boolean mImsRegistry = false;
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.ImsService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ImsService imsService = ImsService.this;
            imsService.log("[onReceive] action=" + intent.getAction());
            if ("ACTION_IMS_SIMULATE".equals(intent.getAction())) {
                ImsService.this.mImsRegistry = intent.getBooleanExtra("registry", false);
                ImsService imsService2 = ImsService.this;
                imsService2.logw("Simulate IMS Registration: " + ImsService.this.mImsRegistry);
                int phoneId = ImsCommonUtil.getMainCapabilityPhoneId();
                int[] result = {ImsService.this.mImsRegistry ? 1 : 0, 15, phoneId};
                AsyncResult ar = new AsyncResult((Object) null, result, (Throwable) null);
                ImsService.this.mHandler[phoneId].sendMessage(ImsService.this.mHandler[phoneId].obtainMessage(1, ar));
            } else if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                if (!ImsCommonUtil.supportMdAutoSetupIms()) {
                    ImsService.this.bindAndRegisterWifiOffloadService();
                } else {
                    ImsService.this.bindAndRegisterMWIService();
                }
                for (int i = 0; i < ImsService.this.mNumOfPhones; i++) {
                    if (ImsService.this.mImsState[i] == 1) {
                        Intent newIntent = new Intent(ImsManager.ACTION_IMS_SERVICE_UP);
                        newIntent.putExtra(ImsManager.EXTRA_PHONE_ID, i);
                        ImsService.this.mContext.sendBroadcast(newIntent);
                        ImsService imsService3 = ImsService.this;
                        imsService3.log("broadcast IMS_SERVICE_UP for phone=" + i);
                    }
                }
            } else if (ImsConstants.SELF_IDENTIFY_UPDATE.equals(intent.getAction())) {
                int extraPhoneId = intent.getIntExtra(ImsManager.EXTRA_PHONE_ID, -1);
                ImsService imsService4 = ImsService.this;
                imsService4.log("SELF_IDENTIFY_UPDATE: extraPhoneId=" + extraPhoneId);
                if (extraPhoneId != -1) {
                    ImsService.this.mHandler[extraPhoneId].sendMessage(ImsService.this.mHandler[extraPhoneId].obtainMessage(24));
                }
            } else if ("android.intent.action.SIM_STATE_CHANGED".equals(intent.getAction())) {
                String simStatus = intent.getStringExtra("ss");
                if ("ABSENT".equals(simStatus)) {
                    int phoneId2 = intent.getIntExtra("phone", -1);
                    if (SubscriptionManager.isValidPhoneId(phoneId2)) {
                        ImsService.this.resetXuiAndNotify(phoneId2);
                    }
                }
            }
            ImsService imsService5 = ImsService.this;
            imsService5.log("[onReceive] finished action=" + intent.getAction());
        }
    };
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.mediatek.ims.ImsService.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            ImsService.this.log("WfoService onServiceConnected");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            ImsService.this.log("WfoService onServiceFailed");
        }
    };
    private ServiceConnection mGbaConnection = new ServiceConnection() { // from class: com.mediatek.ims.ImsService.3
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            ImsService.this.log("GbaService onServiceConnected");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            ImsService.this.log("GbaService onServiceFailed");
        }
    };
    private final SparseArray<IMtkMmTelFeatureCallback> mMmTelFeatureCallback = new SparseArray<>();
    private final BroadcastReceiver mSubInfoReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.ImsService.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ImsService.this.log("volte_setting mSubInfoReceiver action: " + intent.getAction());
            if ("android.intent.action.ACTION_SUBINFO_RECORD_UPDATED".equals(intent.getAction())) {
                boolean needDereg = true;
                for (int phoneId = 0; phoneId < ImsService.this.mNumOfPhones; phoneId++) {
                    if (ImsService.this.mWaitSubInfoChange[phoneId] && ImsService.this.getSubIdUsingPhoneId(phoneId) > -1) {
                        ImsService.this.setEnhanced4gLteModeSetting(phoneId, ImsService.this.mVolteEnable[phoneId]);
                        ImsService.this.mWaitSubInfoChange[phoneId] = false;
                    }
                    if (ImsService.this.mWaitSubInfoChange[phoneId]) {
                        needDereg = false;
                    }
                }
                if (needDereg) {
                    ImsService.this.mContext.unregisterReceiver(ImsService.this.mSubInfoReceiver);
                    ImsService.this.mRegisterSubInfoChange = false;
                }
            }
            ImsService.this.log("volte_setting mSubInfoReceiver finished");
        }
    };
    private BroadcastReceiver mFeatureValueReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.ImsService.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int feature = intent.getIntExtra(ImsConfigContract.EXTRA_CHANGED_ITEM, -1);
            int phoneId = intent.getIntExtra("phone_id", -1);
            ImsService imsService = ImsService.this;
            imsService.log("volte_setting mFeatureValueReceiver action: " + intent.getAction() + ", phoneId: " + phoneId + ", feature: " + feature + ", mWaitFeatureChange" + ImsService.this.mWaitFeatureChange);
            if (feature == 0) {
                if ((ImsService.this.mWaitFeatureChange & (1 << phoneId)) != 0) {
                    ImsService.this.mWaitFeatureChange = (~(1 << phoneId)) & ImsService.this.mWaitFeatureChange;
                }
                if (ImsService.this.mWaitFeatureChange == 0) {
                    ImsService.this.mContext.unregisterReceiver(ImsService.this.mFeatureValueReceiver);
                    SystemProperties.set(ImsService.PROPERTY_IMSCONFIG_FORCE_NOTIFY, "0");
                }
                ImsService imsService2 = ImsService.this;
                imsService2.log("volte_setting mFeatureValueReceiver finished mWaitFeatureChange:" + ImsService.this.mWaitFeatureChange);
            }
        }
    };

    /* loaded from: classes.dex */
    public interface IMtkMmTelFeatureCallback {
        void newImsSmsInd(byte[] bArr, String str);

        void newStatusReportInd(byte[] bArr, String str);

        void notifyCapabilitiesChanged(MmTelFeature.MmTelCapabilities mmTelCapabilities);

        void notifyContextChanged(Context context);

        void notifyIncomingCall(ImsCallSessionImplBase imsCallSessionImplBase, Bundle bundle);

        void notifyIncomingCallSession(IImsCallSession iImsCallSession, Bundle bundle);

        void sendSmsRsp(int i, int i2, int i3, int i4);
    }

    /* loaded from: classes.dex */
    private class NafSessionKeyResult {
        int cmdResult;
        Object lockObj;
        NafSessionKey nafSessionKey;

        private NafSessionKeyResult() {
            this.nafSessionKey = null;
            this.cmdResult = 1;
            this.lockObj = new Object();
        }
    }

    public static ImsService getInstance(Context context) {
        ImsService imsService;
        synchronized (mLock) {
            if (sInstance == null && context != null) {
                sInstance = new ImsService(context);
                sInstance.log("ImsService is created!");
            }
            imsService = sInstance;
        }
        return imsService;
    }

    public ImsService(Context context) {
        this.mImsAdapter = null;
        this.mImsRILAdapters = null;
        this.mNumOfPhones = 0;
        this.mImsConfigManager = null;
        this.mOpExt = null;
        log("init");
        this.mContext = context;
        this.mNumOfPhones = TelephonyManager.getDefault().getPhoneCount();
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mImsAdapter = new ImsAdapter(context);
        }
        this.mHandler = new MyHandler[this.mNumOfPhones];
        this.mImsRILAdapters = new ImsCommandsInterface[this.mNumOfPhones];
        for (int i = 0; i < this.mNumOfPhones; i++) {
            this.mHandler[i] = new MyHandler(i);
            ImsRILAdapter ril = new ImsRILAdapter(context, i);
            ril.registerForNotAvailable(this.mHandler[i], 2, null);
            ril.registerForOff(this.mHandler[i], 18, null);
            ril.registerForOn(this.mHandler[i], 19, null);
            ril.registerForImsRegistrationInfo(this.mHandler[i], 1, null);
            ril.registerForImsEnableStart(this.mHandler[i], 10, null);
            ril.registerForImsEnableComplete(this.mHandler[i], 11, null);
            ril.registerForImsDisableStart(this.mHandler[i], 12, null);
            ril.registerForImsDisableComplete(this.mHandler[i], 5, null);
            ril.setOnIncomingCallIndication(this.mHandler[i], 7, null);
            ril.registerForCallProgressIndicator(this.mHandler[i], 13, null);
            ril.registerForImsDeregisterComplete(this.mHandler[i], 17, null);
            ril.registerForImsEccSupport(this.mHandler[i], 25, null);
            ril.setOnNetworkInitUSSI(this.mHandler[i], 15, null);
            ril.registerForImsRTPInfo(this.mHandler[i], 20, null);
            ril.registerForVolteSettingChanged(this.mHandler[i], 22, null);
            if (ImsCommonUtil.supportMdAutoSetupIms()) {
                ril.registerForXuiInfo(this.mHandler[i], 24, null);
            }
            ril.setOnSmsStatus(this.mHandler[i], 30, null);
            ril.setOnNewSms(this.mHandler[i], 31, null);
            ril.setOnNewCdmaSms(this.mHandler[i], 32, null);
            this.mImsRILAdapters[i] = ril;
        }
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            log("Initializing");
            this.mImsDataTracker = new ImsDataTracker(context, this.mImsRILAdapters);
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("ACTION_IMS_SIMULATE");
        filter.addAction("android.intent.action.BOOT_COMPLETED");
        filter.addAction(ImsConstants.SELF_IDENTIFY_UPDATE);
        filter.addAction("android.intent.action.SIM_STATE_CHANGED");
        context.registerReceiver(this.mBroadcastReceiver, filter);
        this.mImsRegInfo = new int[this.mNumOfPhones];
        this.mImsExtInfo = new int[this.mNumOfPhones];
        this.mServiceId = new int[this.mNumOfPhones];
        this.mImsState = new int[this.mNumOfPhones];
        this.mExpectedImsState = new int[this.mNumOfPhones];
        this.mRegErrorCode = new int[this.mNumOfPhones];
        this.mRAN = new int[this.mNumOfPhones];
        this.mImsEcbm = new ImsEcbmProxy[this.mNumOfPhones];
        this.mImsEvtPkgAdapter = new ImsEventPackageAdapter[this.mNumOfPhones];
        this.mImsConfigManager = new ImsConfigManager(context, this.mImsRILAdapters);
        this.mIsImsEccSupported = new int[this.mNumOfPhones];
        this.mWaitSubInfoChange = new boolean[this.mNumOfPhones];
        this.mVolteEnable = new boolean[this.mNumOfPhones];
        HandlerThread ssHandlerThread = new HandlerThread("MtkSSExt");
        ssHandlerThread.start();
        Looper sslooper = ssHandlerThread.getLooper();
        for (int i2 = 0; i2 < this.mNumOfPhones; i2++) {
            this.mListener.add(new HashSet<>());
            this.mImsRegInfo[i2] = 3;
            this.mImsExtInfo[i2] = 0;
            this.mServiceId[i2] = i2 + 1;
            this.mImsState[i2] = 0;
            this.mExpectedImsState[i2] = 0;
            this.mRegErrorCode[i2] = 0;
            this.mRAN[i2] = 1;
            this.mImsEcbm[i2] = new ImsEcbmProxy(this.mContext, this.mImsRILAdapters[i2], i2);
            this.mImsConfigManager.init(i2);
            this.mIsImsEccSupported[i2] = 0;
            if (ImsCommonUtil.supportMdAutoSetupIms()) {
                sMtkSSExt.put(Integer.valueOf(i2), new MtkSuppServExt(this.mContext, i2, this, sslooper));
            }
            this.mImsEvtPkgAdapter[i2] = new ImsEventPackageAdapter(this.mContext, this.mHandler[i2], this.mImsRILAdapters[i2], i2);
            this.mWaitSubInfoChange[i2] = false;
            this.mVolteEnable[i2] = false;
        }
        if (!ImsCommonUtil.supportMims()) {
            int mainPhoneId = ImsCommonUtil.getMainCapabilityPhoneId();
            log("getMainCapabilityPhoneId: mainPhoneId = " + mainPhoneId);
            this.mImsRILAdapters[mainPhoneId].setImsRegistrationReport(this.mHandler[mainPhoneId].obtainMessage(21));
            if (!ImsCommonUtil.supportMdAutoSetupIms() && SubscriptionManager.isValidPhoneId(mainPhoneId)) {
                initImsAvailability(mainPhoneId, 0, 3, 4);
            }
        } else {
            for (int i3 = 0; i3 < TelephonyManager.getDefault().getPhoneCount(); i3++) {
                log("bibibib");
                this.mImsRILAdapters[i3].setImsRegistrationReport(this.mHandler[i3].obtainMessage(21));
                if (!ImsCommonUtil.supportMdAutoSetupIms()) {
                    initImsAvailability(i3, i3, 3, 4);
                }
            }
        }
        this.mOpExt = OpImsServiceFactoryBase.getInstance().makeOpImsService();
        ExtensionFactory.makeOemPluginFactory();
        ExtensionFactory.makeExtensionPluginFactory();
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            startGbaService();
        }
        startWfoService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IImsServiceExt getOpImsService() {
        return OpImsServiceCustomizationUtils.getOpFactory(this.mContext).makeImsServiceExt(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableImsAdapter(int phoneId) {
        this.mImsAdapter.enableImsAdapter(phoneId);
    }

    private void disableImsAdapter(int phoneId, boolean isNormalDisable) {
        this.mImsAdapter.disableImsAdapter(phoneId, isNormalDisable);
    }

    private void startWfoService() {
        Intent wfoIntent = new Intent("com.mediatek.START_WFO");
        wfoIntent.setPackage("com.mediatek.wfo.impl");
        this.mContext.bindService(wfoIntent, this.mConnection, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startGbaService() {
        log("start gba service");
        Intent gbaIntent = new Intent("com.mediatek.START_GBA");
        gbaIntent.setPackage("com.mediatek.gba");
        if (!this.mContext.bindService(gbaIntent, this.mGbaConnection, 1)) {
            this.mHandler[0].sendMessageDelayed(this.mHandler[0].obtainMessage(26), 5000L);
        }
    }

    @Override // com.android.ims.ImsServiceBase
    protected int onOpen(int phoneId, int serviceClass, PendingIntent incomingCallIntent, IImsRegistrationListener listener) {
        log("onOpen: phoneId=" + phoneId + " serviceClass=" + serviceClass + " listener=" + listener);
        int serviceId = mapPhoneIdToServiceId(phoneId);
        StringBuilder sb = new StringBuilder();
        sb.append("onOpen: serviceId=");
        sb.append(serviceId);
        englog(sb.toString());
        return serviceId;
    }

    @Override // com.android.ims.ImsServiceBase
    protected void onClose(int serviceId) {
        synchronized (this.mLockObj) {
            try {
                if (this.mImsEcbm[serviceId] != null) {
                    this.mImsEcbm[serviceId].getImsEcbm().setListener((IImsEcbmListener) null);
                }
            } catch (RemoteException e) {
            }
        }
    }

    @Override // com.android.ims.ImsServiceBase
    protected boolean onIsConnected(int serviceId, int serviceType, int callType) {
        log("onIsConnected: serviceId=" + serviceId + ", serviceType=" + serviceType + ", callType=" + callType);
        if (this.mImsRegInfo[serviceId] == 0) {
            return DBG;
        }
        return false;
    }

    @Override // com.android.ims.ImsServiceBase
    protected boolean onIsOpened(int serviceId) {
        log("onIsOpened: serviceId=" + serviceId);
        HashSet<IImsRegistrationListener> listeners = this.mListener.get(serviceId);
        if (listeners.size() > 0) {
            return DBG;
        }
        return false;
    }

    @Override // com.android.ims.ImsServiceBase
    protected void onSetRegistrationListener(int serviceId, IImsRegistrationListener listener) {
        log("onSetRegistrationListener: serviceId=" + serviceId + ", listener=" + listener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.ims.ImsServiceBase
    public void onAddRegistrationListener(int phoneId, int serviceType, IImsRegistrationListener listener) {
        log("onAddRegistrationListener: phoneId=" + phoneId + " serviceType=" + serviceType + " listener=" + listener);
        HashSet<IImsRegistrationListener> listeners = this.mListener.get(phoneId);
        synchronized (listeners) {
            if (listeners.contains(listener)) {
                log("listener already exist");
            } else {
                listeners.add(listener);
                log("listener set size=" + listeners.size());
            }
        }
        if (this.mImsRegInfo[phoneId] != 3) {
            notifyRegistrationStateChange(phoneId, this.mImsRegInfo[phoneId], DBG);
        }
        if (this.mImsRegInfo[phoneId] == 0) {
            notifyRegistrationCapabilityChange(phoneId, this.mImsExtInfo[phoneId], DBG);
            ImsXuiManager xuiManager = ImsXuiManager.getInstance();
            notifyRegistrationAssociatedUriChange(xuiManager, phoneId);
        }
    }

    @Override // com.android.ims.ImsServiceBase
    public ImsCallProfile onCreateCallProfile(int serviceId, int serviceType, int callType) {
        return new ImsCallProfile(serviceType, callType);
    }

    public IImsCallSession onCreateCallSession(int serviceId, ImsCallProfile profile, IImsCallSessionListener listener) {
        return onCreateCallSessionProxy(serviceId, profile, listener).getServiceImpl();
    }

    public ImsCallSessionProxy onCreateCallSessionProxy(int serviceId, ImsCallProfile profile, IImsCallSessionListener listener) {
        log("onCreateCallSessionProxy: serviceId =" + serviceId + " profile =" + profile + " listener =" + listener);
        ImsCallSessionListener sessionListener = null;
        if (listener != null) {
            sessionListener = new ImsCallSessionListener(listener);
        }
        ImsCallSessionProxy cs = new ImsCallSessionProxy(this.mContext, profile, sessionListener, this, this.mHandler[serviceId], this.mImsRILAdapters[serviceId], serviceId);
        MtkImsCallSessionProxy mtk_cs = new MtkImsCallSessionProxy(this.mContext, profile, sessionListener, this, this.mHandler[serviceId], this.mImsRILAdapters[serviceId], serviceId);
        mtk_cs.setAospCallSessionProxy(cs);
        cs.setMtkCallSessionProxy(mtk_cs);
        log("onCreateCallSessionProxy: cs.getServiceImpl() = " + cs.getServiceImpl());
        mPendingMtkImsCallSessionProxy.put(cs.getServiceImpl(), mtk_cs);
        return cs;
    }

    public IMtkImsCallSession onCreateMtkCallSession(int phoneId, ImsCallProfile profile, IImsCallSessionListener listener, IImsCallSession aospCallSessionImpl) {
        return onCreateMtkCallSessionProxy(phoneId, profile, listener, aospCallSessionImpl).getServiceImpl();
    }

    public MtkImsCallSessionProxy onCreateMtkCallSessionProxy(int phoneId, ImsCallProfile profile, IImsCallSessionListener listener, IImsCallSession aospCallSessionImpl) {
        log("onCreateMtkCallSessionProxy: aospCallSessionImpl = " + aospCallSessionImpl);
        log("onCreateMtkCallSessionProxy: containsKey = " + mPendingMtkImsCallSessionProxy.containsKey(aospCallSessionImpl));
        if (!mPendingMtkImsCallSessionProxy.containsKey(aospCallSessionImpl)) {
            return null;
        }
        MtkImsCallSessionProxy mtk_cs = (MtkImsCallSessionProxy) mPendingMtkImsCallSessionProxy.get(aospCallSessionImpl);
        mPendingMtkImsCallSessionProxy.remove(aospCallSessionImpl);
        return mtk_cs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NafSessionKey onRunGbaAuthentication(String nafFqdn, byte[] nafSecureProtocolId, boolean forceRun, int netId, int phoneId) {
        NafSessionKeyResult result = new NafSessionKeyResult();
        Message msg = this.mHandler[phoneId].obtainMessage(23, result);
        synchronized (result.lockObj) {
            this.mImsRILAdapters[phoneId].runGbaAuthentication(nafFqdn, ImsCommonUtil.bytesToHex(nafSecureProtocolId), forceRun, netId, msg);
            try {
                result.lockObj.wait(10000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
                result.cmdResult = 2;
            }
        }
        log("onRunGbaAuthentication complete, nafSessionKey:" + result.nafSessionKey + ", cmdResult:" + result.cmdResult);
        return result.nafSessionKey;
    }

    @Override // com.android.ims.ImsServiceBase
    protected IImsCallSession onGetPendingCallSession(int serviceId, String callId) {
        log("onGetPendingCallSession() : serviceId = " + serviceId + ", callId = " + callId);
        if (this.mPendingMT == null) {
            return null;
        }
        IImsCallSession pendingMTsession = this.mPendingMT.getServiceImpl();
        try {
            if (pendingMTsession.getCallId().equals(callId)) {
                this.mPendingMT = null;
                return pendingMTsession;
            }
        } catch (RemoteException e) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.ims.ImsServiceBase
    public IImsUt onGetUtInterface(int phoneId) {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            IImsUt inst = ImsUtImpl.getInstance(this.mContext, phoneId, this).getInterface();
            return inst;
        }
        LegacyComponentFactory factory = ExtensionFactory.makeLegacyComponentFactory();
        ImsUtImplBase utImpl = factory.makeImsUt(this.mContext, phoneId, this);
        if (utImpl == null) {
            return null;
        }
        IImsUt inst2 = utImpl.getInterface();
        return inst2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IMtkImsUt onGetMtkUtInterface(int phoneId) {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            IMtkImsUt inst = MtkImsUtImpl.getInstance(this.mContext, phoneId, this).getInterface();
            return inst;
        }
        LegacyComponentFactory factory = ExtensionFactory.makeLegacyComponentFactory();
        MtkImsUtImplBase utImpl = factory.makeMtkImsUt(this.mContext, phoneId, this);
        if (utImpl == null) {
            return null;
        }
        IMtkImsUt inst2 = utImpl.getInterface();
        return inst2;
    }

    @Override // com.android.ims.ImsServiceBase
    public IImsConfig onGetConfigInterface(int phoneId) {
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            bindAndRegisterWifiOffloadService();
        } else {
            bindAndRegisterMWIService();
        }
        log("onGetConfigInterface, use phoneId: " + phoneId);
        return this.mImsConfigManager.get(phoneId);
    }

    public void enableIms(int phoneId) {
        log("turnOnIms phoneId = " + phoneId);
        onTurnOnIms(phoneId);
    }

    @Override // com.android.ims.ImsServiceBase
    protected void onTurnOnIms(int phoneId) {
        log("turnOnIms phoneId = " + phoneId);
    }

    public void disableIms(int phoneId) {
        log("turnOffIms, phoneId = " + phoneId);
        onTurnOffIms(phoneId);
    }

    @Override // com.android.ims.ImsServiceBase
    protected void onTurnOffIms(int phoneId) {
        log("turnOffIms, phoneId = " + phoneId);
    }

    @Override // com.android.ims.ImsServiceBase
    protected IImsEcbm onGetEcbmInterface(int serviceId) {
        if (this.mImsEcbm[serviceId] == null) {
            this.mImsEcbm[serviceId] = new ImsEcbmProxy(this.mContext, this.mImsRILAdapters[serviceId], serviceId);
        }
        return this.mImsEcbm[serviceId].getImsEcbm();
    }

    public ImsEcbmImplBase onGetEcbmProxy(int serviceId) {
        if (this.mImsEcbm[serviceId] == null) {
            this.mImsEcbm[serviceId] = new ImsEcbmProxy(this.mContext, this.mImsRILAdapters[serviceId], serviceId);
        }
        return this.mImsEcbm[serviceId];
    }

    @Override // com.android.ims.ImsServiceBase
    protected void onSetUiTTYMode(int serviceId, int uiTtyMode, Message onComplete) {
        log("onSetUiTTYMode: " + uiTtyMode);
    }

    @Override // com.android.ims.ImsServiceBase
    protected IImsMultiEndpoint onGetMultiEndpointInterface(int serviceId) {
        Rlog.d(LOG_TAG, "onGetMultiEndpointInterface serviceId is " + serviceId);
        if (this.mMultiEndpointMap.containsKey(Integer.valueOf(serviceId))) {
            return this.mMultiEndpointMap.get(Integer.valueOf(serviceId)).getIImsMultiEndpoint();
        }
        ImsMultiEndpointProxy instance = new ImsMultiEndpointProxy(this.mContext);
        Rlog.d(LOG_TAG, "onGetMultiEndpointInterface instance is " + instance);
        this.mMultiEndpointMap.put(Integer.valueOf(serviceId), instance);
        return instance.getIImsMultiEndpoint();
    }

    public ImsMultiEndpointImplBase onGetMultiEndpointProxy(int serviceId) {
        Rlog.d(LOG_TAG, "onGetMultiEndpointProxy serviceId is " + serviceId);
        if (this.mMultiEndpointMap.containsKey(Integer.valueOf(serviceId))) {
            return this.mMultiEndpointMap.get(Integer.valueOf(serviceId));
        }
        ImsMultiEndpointProxy instance = new ImsMultiEndpointProxy(this.mContext);
        Rlog.d(LOG_TAG, "onGetMultiEndpointProxy instance is " + instance);
        this.mMultiEndpointMap.put(Integer.valueOf(serviceId), instance);
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getImsState(int phoneId) {
        return this.mImsState[phoneId];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getImsRegUriType(int phoneId) {
        int uri_type = 1;
        String key = PROPERTY_IMS_REG_EXTINFO + phoneId;
        if (this.mImsRegInfo[phoneId] == 0) {
            uri_type = SystemProperties.getInt(key, 1);
        }
        log("getImsRegUriType, phoneId = " + phoneId + "uri_type =" + uri_type);
        return uri_type;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHangupAllCall(int phoneId) {
        this.mImsRILAdapters[phoneId].hangupAllCall(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void deregisterIms(int phoneId) {
        log("deregisterIms, phoneId = " + phoneId);
        if (!ImsCommonUtil.supportMims()) {
            phoneId = ImsCommonUtil.getMainCapabilityPhoneId();
            log("deregisterIms, MainCapabilityPhoneId = " + phoneId);
        }
        this.mImsRILAdapters[phoneId].deregisterIms(this.mHandler[phoneId].obtainMessage(16));
    }

    public void deregisterImsWithCause(int phoneId, int cause) {
        log("deregisterImsWithCause, phoneId = " + phoneId + " cause = " + cause);
        if (!ImsCommonUtil.supportMims()) {
            phoneId = ImsCommonUtil.getMainCapabilityPhoneId();
            log("deregisterImsWithCause, MainCapabilityPhoneId = " + phoneId);
        }
        this.mImsRILAdapters[phoneId].deregisterImsWithCause(cause, this.mHandler[phoneId].obtainMessage(16));
    }

    public void updateRadioState(int radioState, int phoneId) {
        log("updateRadioState, phoneId = " + phoneId + " radioState = " + radioState);
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            bindAndRegisterWifiOffloadService();
            if (sWifiOffloadService != null) {
                try {
                    sWifiOffloadService.updateRadioState(phoneId, radioState);
                } catch (RemoteException e) {
                    loge("can't update radio state");
                }
            } else {
                loge("can't get WifiOffloadService");
            }
        } else if (ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE.ordinal() != radioState) {
            if (this.mImsManagerOemPlugin == null) {
                this.mImsManagerOemPlugin = ExtensionFactory.makeOemPluginFactory().makeImsManagerPlugin(this.mContext);
            }
            this.mImsManagerOemPlugin.updateImsServiceConfig(this.mContext, phoneId, DBG);
        }
    }

    public int mapPhoneIdToServiceId(int phoneId) {
        return phoneId + 1;
    }

    public int getImsServiceState(int phoneId) {
        if (!ImsCommonUtil.supportMims()) {
            phoneId = ImsCommonUtil.getMainCapabilityPhoneId();
        }
        return this.mImsRegInfo[phoneId];
    }

    public int getModemMultiImsCount() {
        log("getModemMultiImsCount");
        int mdMultiImsCount = SystemProperties.getInt(ImsConstants.PROPERTY_MD_MULTI_IMS_SUPPORT, -1);
        log("mdMultiImsCount=" + mdMultiImsCount);
        if (mdMultiImsCount == -1) {
            logw("MD Multi IMS Count not initialized");
        }
        return mdMultiImsCount;
    }

    private IWifiOffloadListenerProxy createWifiOffloadListenerProxy() {
        if (this.mProxy == null) {
            log("create WifiOffloadListenerProxy");
            this.mProxy = new IWifiOffloadListenerProxy();
        }
        return this.mProxy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int mapToWfcRegErrorCause(int sipErrorCode, int sipMethod, String sipReasonText) {
        int wfcRegErrorCode = WfcReasonInfo.CODE_UNSPECIFIED;
        if (sipErrorCode == 403) {
            wfcRegErrorCode = (sipMethod != 9 || !sipReasonText.equals("SHOW_WIFI_REG09")) ? (sipMethod != 0 || !sipReasonText.equals("WiFi Calling Not Allowed from this Region")) ? sipMethod == 0 ? 1600 : 1603 : 1606 : WfcReasonInfo.CODE_WFC_911_MISSING;
        } else if (sipErrorCode == 500) {
            wfcRegErrorCode = WfcReasonInfo.CODE_WFC_INTERNAL_SERVER_ERROR;
        } else if (sipErrorCode != 503) {
            if (sipErrorCode != 606) {
                switch (sipErrorCode) {
                    case 40301:
                        wfcRegErrorCode = 1601;
                        break;
                    case 40302:
                        wfcRegErrorCode = 1602;
                        break;
                    case 40303:
                        wfcRegErrorCode = 1603;
                        break;
                    case 40304:
                        wfcRegErrorCode = 1604;
                        break;
                    case 40305:
                        wfcRegErrorCode = 1605;
                        break;
                }
            } else if (sipMethod == 0 && sipReasonText.equals("Not Acceptable")) {
                wfcRegErrorCode = WfcReasonInfo.CODE_WFC_606_WIFI_CALLING_IP_NOT_ACCEPTABLE;
            }
        } else if (sipMethod == 0 && sipReasonText.equals("Emergency Calls over Wi-Fi is not allowed in this location")) {
            wfcRegErrorCode = WfcReasonInfo.CODE_WFC_503_ECC_OVER_WIFI_NOT_ALLOWED;
        }
        log("mapToWfcRegErrorCause(), sipErrorCode:" + sipErrorCode + " sipMethod:" + sipMethod + " sipReasonText: " + sipReasonText + " wfcRegErrorCode:" + wfcRegErrorCode);
        return wfcRegErrorCode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class IWifiOffloadListenerProxy extends WifiOffloadManager.Listener {
        private IWifiOffloadListenerProxy() {
        }

        @Override // com.mediatek.wfo.WifiOffloadManager.Listener, com.mediatek.wfo.IWifiOffloadListener
        public void onHandover(int simIdx, int stage, int ratType) {
            ImsService imsService = ImsService.this;
            imsService.log("onHandover simIdx=" + simIdx + ", stage=" + stage + ", ratType=" + ratType);
            if (stage == 1 && ImsService.this.mImsRegInfo[simIdx] == 0) {
                ImsService.this.mRAN[simIdx] = ratType;
                ImsService.this.notifyRegistrationStateChange(simIdx, ImsService.this.mImsRegInfo[simIdx], false);
                ImsService.this.notifyRegistrationCapabilityChange(simIdx, ImsService.this.mImsExtInfo[simIdx], false);
            }
        }

        @Override // com.mediatek.wfo.WifiOffloadManager.Listener, com.mediatek.wfo.IWifiOffloadListener
        public void onRequestImsSwitch(int simIdx, boolean isImsOn) {
            if (!ImsCommonUtil.supportMdAutoSetupIms()) {
                int mainCapabilityPhoneId = ImsCommonUtil.getMainCapabilityPhoneId();
                ImsService imsService = ImsService.this;
                imsService.log("onRequestImsSwitch simIdx=" + simIdx + " isImsOn=" + isImsOn + " mainCapabilityPhoneId=" + mainCapabilityPhoneId);
                if (simIdx >= ImsService.this.mNumOfPhones) {
                    ImsService.this.loge("onRequestImsSwitch can't enable/disable ims due to wrong sim id");
                }
                if (!ImsCommonUtil.supportMims() && simIdx != mainCapabilityPhoneId) {
                    ImsService.this.logw("onRequestImsSwitch, ignore not MainCapabilityPhoneId request");
                } else if (isImsOn) {
                    if (ImsService.this.mImsState[simIdx] != 1 || ImsService.this.mExpectedImsState[simIdx] == 0) {
                        ImsService.this.mImsRILAdapters[simIdx].turnOnIms(ImsService.this.mHandler[simIdx].obtainMessage(3));
                        ImsService.this.mExpectedImsState[simIdx] = 1;
                        ImsService.this.mImsState[simIdx] = 2;
                        return;
                    }
                    ImsService.this.log("Ims already enable and ignore to send AT command.");
                } else if (ImsService.this.mImsState[simIdx] != 0 || ImsService.this.mExpectedImsState[simIdx] == 1) {
                    ImsService.this.mImsRILAdapters[simIdx].turnOffIms(ImsService.this.mHandler[simIdx].obtainMessage(4));
                    ImsService.this.mExpectedImsState[simIdx] = 0;
                    ImsService.this.mImsState[simIdx] = 3;
                } else {
                    ImsService.this.log("Ims already disabled and ignore to send AT command.");
                }
            }
        }

        @Override // com.mediatek.wfo.WifiOffloadManager.Listener, com.mediatek.wfo.IWifiOffloadListener
        public void onWifiPdnOOSStateChanged(int simId, int oosState) {
            ImsService imsService = ImsService.this;
            imsService.log("onWifiPdnOOSStateChanged simIdx=" + simId + ", oosState=" + oosState);
            ImsService.this.notifyRegistrationOOSStateChanged(simId, oosState);
        }
    }

    public ImsCommandsInterface getImsRILAdapter(int phoneId) {
        if (this.mImsRILAdapters[phoneId] == null) {
            logw("getImsRILAdapter phoneId=" + phoneId + ", mImsRILAdapter is null ");
        }
        return this.mImsRILAdapters[phoneId];
    }

    public ImsConfigManager getImsConfigManager() {
        return this.mImsConfigManager;
    }

    private void checkAndBindWifiOffloadService() {
        IBinder b = ServiceManager.getService(WifiOffloadManager.WFO_SERVICE);
        if (b != null) {
            try {
                b.linkToDeath(this.mDeathRecipient, 0);
            } catch (RemoteException e) {
            }
            sWifiOffloadService = IWifiOffloadService.Stub.asInterface(b);
        } else {
            loge("can't get WifiOffloadService");
            IBinder b2 = ServiceManager.getService(MwisConstants.MWI_SERVICE);
            try {
                if (b2 != null) {
                    b2.linkToDeath(this.mDeathRecipient, 0);
                    sWifiOffloadService = IMwiService.Stub.asInterface(b2).getWfcHandlerInterface();
                } else {
                    log("No MwiService exist");
                }
            } catch (RemoteException e2) {
                Rlog.e(LOG_TAG, "can't get MwiService", e2);
            }
        }
        log("checkAndBindWifiOffloadService: sWifiOffloadService = " + sWifiOffloadService);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class IWifiOffloadServiceDeathRecipient implements IBinder.DeathRecipient {
        private IWifiOffloadServiceDeathRecipient() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            IWifiOffloadService unused = ImsService.sWifiOffloadService = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindAndRegisterWifiOffloadService() {
        if (sWifiOffloadService == null) {
            checkAndBindWifiOffloadService();
            if (sWifiOffloadService != null) {
                try {
                    sWifiOffloadService.registerForHandoverEvent(createWifiOffloadListenerProxy());
                } catch (RemoteException e) {
                    loge("can't register handover event");
                }
            } else if (SystemProperties.getInt("persist.vendor.mtk_wfc_support", 0) == 1) {
                loge("can't get WifiOffloadService");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindAndRegisterMWIService() {
        bindAndRegisterWifiOffloadService();
    }

    private int getRadioTech(int phoneId) throws RemoteException {
        int radioTech;
        log("getRadioTech mRAN = " + this.mRAN[phoneId]);
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            bindAndRegisterWifiOffloadService();
            if (sWifiOffloadService != null) {
                this.mRAN[phoneId] = sWifiOffloadService.getRatType(phoneId);
            }
        } else {
            bindAndRegisterMWIService();
        }
        if (this.mRAN[phoneId] != 2) {
            radioTech = 14;
        } else {
            radioTech = 18;
        }
        log("getRadioTech mRAN=" + this.mRAN[phoneId] + ", radioTech=" + radioTech);
        return radioTech;
    }

    private ImsReasonInfo createImsReasonInfo(int phoneId) {
        ImsReasonInfo imsReasonInfo = new ImsReasonInfo(1000, this.mRegErrorCode[phoneId], Integer.toString(this.mRegErrorCode[phoneId]));
        return imsReasonInfo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onUpdateImsSate(int phoneId) {
        log("request onUpdateImsSate for ImsManager add local registrant");
        if (this.mImsRegInfo[phoneId] != 3) {
            notifyRegistrationStateChange(phoneId, this.mImsRegInfo[phoneId], false);
        }
        if (this.mImsRegInfo[phoneId] == 0) {
            ImsXuiManager xuiManager = ImsXuiManager.getInstance();
            notifyRegistrationCapabilityChange(phoneId, this.mImsExtInfo[phoneId], false);
            notifyRegistrationAssociatedUriChange(xuiManager, phoneId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRegistrationAssociatedUriChange(ImsXuiManager xuiManager, int phoneId) {
        final Uri[] uris = xuiManager.getSelfIdentifyUri(phoneId);
        log("notifyRegistrationAssociatedUriChange phoneId=" + phoneId);
        englog("uris=" + uris);
        HashSet<IImsRegistrationListener> listeners = this.mListener.get(phoneId);
        if (!(listeners == null || uris == null)) {
            synchronized (listeners) {
                listeners.forEach(new Consumer() { // from class: com.mediatek.ims.-$$Lambda$ImsService$GZ0ahyx7HZsBpKxFCTrTHOwrNgo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ImsService.lambda$notifyRegistrationAssociatedUriChange$0(ImsService.this, uris, (IImsRegistrationListener) obj);
                    }
                });
            }
        }
        updateAssociatedUriChanged(phoneId, uris);
    }

    public static /* synthetic */ void lambda$notifyRegistrationAssociatedUriChange$0(ImsService imsService, Uri[] uris, IImsRegistrationListener l) {
        try {
            l.registrationAssociatedUriChanged(uris);
        } catch (RemoteException e) {
            imsService.loge("handle self identify update failed!!");
        }
    }

    private void updateAssociatedUriChanged(int slotId, Uri[] uris) {
        synchronized (this.mLockUri) {
            MtkImsRegistrationImpl imsReg = sMtkImsRegImpl.get(Integer.valueOf(slotId));
            if (imsReg != null) {
                log("[" + slotId + "] updateAssociatedUriChanged");
                StringBuilder sb = new StringBuilder();
                sb.append("uris=");
                sb.append(uris);
                englog(sb.toString());
                imsReg.onSubscriberAssociatedUriChanged(uris);
            } else {
                loge("There is not ImsRegistrationImpl for slot " + slotId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRegistrationStateChange(int phoneId, int imsRegInfo, boolean staticReg) {
        synchronized (this.mLockObj) {
            log("notifyRegistrationStateChange imsRegInfo= " + imsRegInfo + ", phoneId=" + phoneId + ", staticReg=" + staticReg + ", mRAN[phoneId]=" + this.mRAN[phoneId]);
            HashSet<IImsRegistrationListener> listeners = this.mListener.get(phoneId);
            if (imsRegInfo == 0) {
                try {
                    final int radioTech = getRadioTech(phoneId);
                    if (!staticReg) {
                        updateImsRegstration(phoneId, 2, convertImsRegistrationTech(radioTech), null);
                    }
                    if (listeners != null) {
                        synchronized (listeners) {
                            listeners.forEach(new Consumer() { // from class: com.mediatek.ims.-$$Lambda$ImsService$ovv8aqkEpIO_ROFE-YcE9X_HzDI
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    ImsService.lambda$notifyRegistrationStateChange$1(ImsService.this, radioTech, (IImsRegistrationListener) obj);
                                }
                            });
                        }
                    }
                    IImsServiceExt opImsService = getOpImsService();
                    if (opImsService != null) {
                        opImsService.notifyRegistrationStateChange(this.mRAN[phoneId], this.mHandler[phoneId], this.mImsRILAdapters[phoneId]);
                    }
                    this.mRegErrorCode[phoneId] = 0;
                } catch (RemoteException e) {
                    loge("IMS: notifyStateChange fail on access WifiOffloadService");
                }
            } else {
                final ImsReasonInfo imsReasonInfo = createImsReasonInfo(phoneId);
                updateImsRegstration(phoneId, 3, -1, imsReasonInfo);
                if (listeners != null) {
                    synchronized (listeners) {
                        listeners.forEach(new Consumer() { // from class: com.mediatek.ims.-$$Lambda$ImsService$1Q4WNSe95uxmtIgl2mDBkt0WleE
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                ((IImsRegistrationListener) obj).registrationDisconnected(imsReasonInfo);
                            }
                        });
                    }
                }
            }
        }
    }

    public static /* synthetic */ void lambda$notifyRegistrationStateChange$1(ImsService imsService, int radioTech, IImsRegistrationListener l) {
        try {
            l.registrationConnectedWithRadioTech(imsService.convertImsRegistrationTech(radioTech));
        } catch (RemoteException e) {
            imsService.loge("IMS: l.registrationConnectedWithRadioTech failed");
        }
    }

    private void updateCapabilityChange(int phoneId, int imsExtInfo, int[] enabledFeatures, int[] disabledFeatures) {
        for (int i = 0; i < 6; i++) {
            enabledFeatures[i] = -1;
            disabledFeatures[i] = -1;
        }
        if (this.mRAN[phoneId] == 2 || (imsExtInfo & 1) != 1) {
            disabledFeatures[0] = 0;
            disabledFeatures[4] = 4;
        } else {
            enabledFeatures[0] = 0;
            enabledFeatures[4] = 4;
        }
        if (this.mRAN[phoneId] == 2 || (imsExtInfo & 8) != 8) {
            disabledFeatures[1] = 1;
        } else {
            enabledFeatures[1] = 1;
        }
        if (this.mRAN[phoneId] == 2 && (imsExtInfo & 1) == 1) {
            enabledFeatures[2] = 2;
            enabledFeatures[5] = 5;
            log("[WFC]IMS_VOICE_OVER_WIFI");
        } else {
            disabledFeatures[2] = 2;
            disabledFeatures[5] = 5;
        }
        if (this.mRAN[phoneId] == 2 && (imsExtInfo & 8) == 8) {
            enabledFeatures[3] = 3;
            log("[WFC]IMS_VIDEO_OVER_WIFI");
            return;
        }
        disabledFeatures[3] = 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRegistrationCapabilityChange(int phoneId, int imsExtInfo, boolean staticReg) {
        log("notifyRegistrationCapabilityChange imsExtInfo= " + imsExtInfo + ", phoneId=" + phoneId + ", staticReg=" + staticReg);
        final int[] enabledFeatures = new int[6];
        final int[] disabledFeatures = new int[6];
        updateCapabilityChange(phoneId, imsExtInfo, enabledFeatures, disabledFeatures);
        updateUtCapabilityChange(phoneId, enabledFeatures, disabledFeatures);
        MmTelFeature.MmTelCapabilities capabilities = convertCapabilities(enabledFeatures);
        if ((imsExtInfo & 4) == 4) {
            capabilities.addCapabilities(8);
        }
        if (!staticReg) {
            notifyCapabilityChanged(phoneId, capabilities);
        }
        HashSet<IImsRegistrationListener> listeners = this.mListener.get(phoneId);
        if (listeners != null) {
            synchronized (listeners) {
                listeners.forEach(new Consumer() { // from class: com.mediatek.ims.-$$Lambda$ImsService$sGyuO-fMTVKW5uTQaanmVvFXSWU
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IImsRegistrationListener) obj).registrationFeatureCapabilityChanged(1, enabledFeatures, disabledFeatures);
                    }
                });
            }
        }
    }

    public void notifyUtCapabilityChange(int phoneId) {
        log("notifyUtCapabilityChange, phoneId = " + phoneId);
        this.mHandler[phoneId].sendMessage(this.mHandler[phoneId].obtainMessage(29, phoneId, 0));
    }

    private void updateUtCapabilityChange(int phoneId, int[] enabledFeatures, int[] disabledFeatures) {
        if (sMtkSSExt.containsKey(Integer.valueOf(phoneId))) {
            int utCap = sMtkSSExt.get(Integer.valueOf(phoneId)).getUtCapabilityFromSettings();
            log("updateUtCapabilityChange, add Ut capability, utCap = " + utCap + ", phoneId = " + phoneId);
            if (utCap == 1) {
                enabledFeatures[4] = 4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String eventToString(int eventId) {
        switch (eventId) {
            case 1:
                return "EVENT_IMS_REGISTRATION_INFO";
            case 2:
                return "EVENT_RADIO_NOT_AVAILABLE";
            case 3:
                return "EVENT_SET_IMS_ENABLED_DONE";
            case 4:
                return "EVENT_SET_IMS_DISABLE_DONE";
            case 5:
                return "EVENT_IMS_DISABLED_URC";
            case 6:
                return "EVENT_VIRTUAL_SIM_ON";
            case 7:
                return "EVENT_INCOMING_CALL_INDICATION";
            case 8:
                return "EVENT_CALL_INFO_INDICATION";
            case 9:
            case 29:
            default:
                return "UNKNOWN EVENT: " + eventId;
            case 10:
                return "EVENT_IMS_ENABLING_URC";
            case 11:
                return "EVENT_IMS_ENABLED_URC";
            case 12:
                return "EVENT_IMS_DISABLING_URC";
            case 13:
                return "EVENT_SIP_CODE_INDICATION";
            case 14:
                return "EVENT_SIP_CODE_INDICATION_DEREG";
            case 15:
                return "EVENT_ON_NETWORK_INIT_USSI";
            case 16:
                return "EVENT_IMS_DEREG_DONE";
            case 17:
                return "EVENT_IMS_DEREG_URC";
            case 18:
                return "EVENT_RADIO_OFF";
            case 19:
                return "EVENT_RADIO_ON";
            case 20:
                return "EVENT_IMS_RTP_INFO_URC";
            case 21:
                return "EVENT_SET_IMS_REGISTRATION_REPORT_DONE";
            case 22:
                return "EVENT_IMS_VOLTE_SETTING_URC";
            case 23:
                return "EVENT_RUN_GBA";
            case 24:
                return "EVENT_SELF_IDENTIFY_UPDATE";
            case 25:
                return "EVENT_IMS_SUPPORT_ECC_URC";
            case 26:
                return "EVENT_START_GBA_SERVICE";
            case 27:
                return "EVENT_INIT_CALL_SESSION_PROXY";
            case 28:
                return "EVENT_SEND_SMS_DONE";
            case 30:
                return "EVENT_IMS_SMS_STATUS_REPORT";
            case 31:
                return "EVENT_IMS_SMS_NEW_SMS";
            case 32:
                return "EVENT_IMS_SMS_NEW_CDMA_SMS";
        }
    }

    /* loaded from: classes.dex */
    private class MyHandler extends Handler {
        int mSocketId;

        public MyHandler(int socketId) {
            super((Handler.Callback) null, false);
            this.mSocketId = socketId;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int newImsRegInfo;
            int resultEvent;
            ImsService.this.log("handleMessage() : receive " + ImsService.this.eventToString(msg.what) + ", mSocketId=" + this.mSocketId);
            ImsRegistrationOemPlugin imsRegOemPlugin = null;
            switch (msg.what) {
                case 1:
                case 14:
                    if (hasMessages(14)) {
                        removeMessages(14);
                    }
                    AsyncResult ar = (AsyncResult) msg.obj;
                    if (((int[]) ar.result)[0] == 1) {
                        newImsRegInfo = 0;
                    } else {
                        newImsRegInfo = 1;
                    }
                    if (SystemProperties.getInt("persist.vendor.ims.simulate", 0) == 1) {
                        newImsRegInfo = ImsService.this.mImsRegistry ? 0 : 1;
                        ImsService.this.log("handleMessage() : Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo=" + newImsRegInfo);
                    }
                    int newImsExtInfo = ((int[]) ar.result)[1];
                    if (ImsCommonUtil.supportMdAutoSetupIms()) {
                        if ((newImsExtInfo & 16) == 16) {
                            ImsService.this.mRAN[this.mSocketId] = 2;
                        } else {
                            ImsService.this.mRAN[this.mSocketId] = 1;
                        }
                    }
                    ImsService.this.log("handleMessage() : newReg:" + newImsRegInfo + " oldReg:" + ImsService.this.mImsRegInfo[this.mSocketId]);
                    ImsService.this.mImsRegInfo[this.mSocketId] = newImsRegInfo;
                    ImsService.this.notifyRegistrationStateChange(this.mSocketId, ImsService.this.mImsRegInfo[this.mSocketId], false);
                    ImsService.this.log("handleMessage() : newRegExt:" + newImsExtInfo + "oldRegExt:" + ImsService.this.mImsExtInfo[this.mSocketId]);
                    if (ImsService.this.mImsRegInfo[this.mSocketId] == 0) {
                        ImsService.this.mImsExtInfo[this.mSocketId] = newImsExtInfo;
                    } else {
                        ImsService.this.mImsExtInfo[this.mSocketId] = 0;
                    }
                    ImsService.this.notifyRegistrationCapabilityChange(this.mSocketId, ImsService.this.mImsExtInfo[this.mSocketId], false);
                    boolean isVoWiFi = false;
                    if (ImsService.this.mRAN[this.mSocketId] == 2 && (ImsService.this.mImsExtInfo[this.mSocketId] & 1) == 1) {
                        isVoWiFi = ImsService.DBG;
                    }
                    OemPluginFactory oemPlugin = ExtensionFactory.makeOemPluginFactory();
                    if (oemPlugin != null) {
                        imsRegOemPlugin = oemPlugin.makeImsRegistrationPlugin(ImsService.this.mContext);
                    }
                    if (imsRegOemPlugin != null) {
                        imsRegOemPlugin.broadcastImsRegistration(this.mSocketId, ImsService.this.mImsRegInfo[this.mSocketId], isVoWiFi);
                        break;
                    }
                    break;
                case 2:
                    ImsService.this.disableIms(this.mSocketId, false);
                    break;
                case 3:
                    if (((AsyncResult) msg.obj).exception != null) {
                        ImsService.this.logw("handleMessage() : turnOnIms failed, return to disabled state!");
                        ImsService.this.disableIms(this.mSocketId, false);
                        break;
                    }
                    break;
                case 5:
                    ImsService.this.log("handleMessage() : [Info]EVENT_IMS_DISABLED_URC: socketId = " + this.mSocketId + " ExpImsState = " + ImsService.this.mExpectedImsState[this.mSocketId] + " mImsState = " + ImsService.this.mImsState[this.mSocketId]);
                    ImsService.this.disableIms(this.mSocketId, ImsService.DBG);
                    break;
                case 7:
                    ImsService.this.sendIncomingCallIndication(this.mSocketId, (AsyncResult) msg.obj);
                    ImsService.this.mOpExt.setRttModeForIncomingCall(ImsService.this.mImsRILAdapters[this.mSocketId]);
                    break;
                case 8:
                    String[] callInfo = (String[]) ((AsyncResult) msg.obj).result;
                    int msgType = Integer.parseInt(callInfo[1]);
                    if (msgType == 133 && ImsService.this.mPendingMTCallId != null && ImsService.this.mPendingMTCallId.equals(callInfo[0])) {
                        ImsService.this.mIsPendingMTTerminated = ImsService.DBG;
                        break;
                    }
                    break;
                case 10:
                    ImsService.this.log("handleMessage() : [Info]receive EVENT_IMS_ENABLING_URC, socketId = " + this.mSocketId + " ExpImsState = " + ImsService.this.mExpectedImsState[this.mSocketId] + " mImsState = " + ImsService.this.mImsState[this.mSocketId]);
                    if (ImsService.this.mImsState[this.mSocketId] != 1) {
                        Intent intent = new Intent(ImsManager.ACTION_IMS_SERVICE_UP);
                        intent.putExtra(ImsManager.EXTRA_PHONE_ID, this.mSocketId);
                        ImsService.this.mContext.sendBroadcast(intent);
                        ImsService.this.log("handleMessage() : broadcast IMS_SERVICE_UP");
                    }
                    if (!ImsCommonUtil.supportMdAutoSetupIms()) {
                        ImsService.this.enableImsAdapter(this.mSocketId);
                    }
                    ImsService.this.mImsState[this.mSocketId] = 1;
                    break;
                case 13:
                    String[] sipMessage = (String[]) ((AsyncResult) msg.obj).result;
                    if (sipMessage != null) {
                        ImsService.this.log("handleMessage() : Method =" + sipMessage[3] + " response_code =" + sipMessage[4] + " reason_text =" + sipMessage[5]);
                        int sipMethod = Integer.parseInt(sipMessage[3]);
                        int sipResponseCode = Integer.parseInt(sipMessage[4]);
                        String sipReasonText = sipMessage[5];
                        if (sipMethod == 0 || sipMethod == 9) {
                            IImsServiceExt opImsService = ImsService.this.getOpImsService();
                            if (ImsService.this.mRAN[this.mSocketId] != 2 && (opImsService == null || !opImsService.isWfcRegErrorCauseSupported())) {
                                ImsService.this.mRegErrorCode[this.mSocketId] = sipResponseCode;
                                break;
                            } else {
                                ImsService.this.mRegErrorCode[this.mSocketId] = ImsService.this.mapToWfcRegErrorCause(sipResponseCode, sipMethod, sipReasonText);
                                if (ImsService.this.mRegErrorCode[this.mSocketId] == 1600 && sipMethod == 0) {
                                    ImsService.this.log("handleMessage() : L-ePDG-5025 8-13. Received SIP REG 403 response, perform ImsDiscommect flow.");
                                    AsyncResult arCip = new AsyncResult((Object) null, new int[]{0, 16}, (Throwable) null);
                                    sendMessageDelayed(obtainMessage(14, arCip), 1000L);
                                    break;
                                }
                            }
                        }
                    }
                    break;
                case 15:
                    String[] eiusd = (String[]) ((AsyncResult) msg.obj).result;
                    ImsCallProfile imsCallProfile = ImsService.this.onCreateCallProfile(1, 1, 2);
                    imsCallProfile.setCallExtraInt("dialstring", 2);
                    imsCallProfile.setCallExtra("m", eiusd[0]);
                    imsCallProfile.setCallExtra("n", eiusd[1]);
                    imsCallProfile.setCallExtra("str", eiusd[2]);
                    ImsService.this.mPendingMT = new ImsCallSessionProxy(ImsService.this.mContext, imsCallProfile, null, ImsService.this, ImsService.this.mHandler[this.mSocketId], ImsService.this.mImsRILAdapters[this.mSocketId], RadioCapabilitySwitchUtil.IMSI_READY, this.mSocketId);
                    Intent intent2 = new Intent(ImsManager.ACTION_IMS_INCOMING_CALL);
                    intent2.putExtra(ImsManager.EXTRA_USSD, ImsService.DBG);
                    intent2.putExtra(ImsManager.EXTRA_CALL_ID, RadioCapabilitySwitchUtil.IMSI_READY);
                    intent2.putExtra(ImsManager.EXTRA_SERVICE_ID, ImsService.this.mapPhoneIdToServiceId(this.mSocketId));
                    ImsService.this.mContext.sendBroadcast(intent2);
                    break;
                case 17:
                    Intent intent3 = new Intent(MtkImsConstants.ACTION_IMS_SERVICE_DEREGISTERED);
                    intent3.putExtra(ImsManager.EXTRA_PHONE_ID, this.mSocketId);
                    ImsService.this.mContext.sendBroadcast(intent3);
                    break;
                case 18:
                    ImsService.this.updateRadioState(ImsCommandsInterface.RadioState.RADIO_OFF.ordinal(), this.mSocketId);
                    break;
                case 19:
                    ImsService.this.updateRadioState(ImsCommandsInterface.RadioState.RADIO_ON.ordinal(), this.mSocketId);
                    break;
                case 22:
                    boolean enable = ((int[]) ((AsyncResult) msg.obj).result)[0] == 1;
                    int simState = SubscriptionManager.getSimStateForSlotIndex(this.mSocketId);
                    if (simState == 1 || ImsService.this.getSubIdUsingPhoneId(this.mSocketId) <= -1) {
                        if (!ImsService.this.mRegisterSubInfoChange) {
                            IntentFilter filter = new IntentFilter();
                            filter.addAction("android.intent.action.ACTION_SUBINFO_RECORD_UPDATED");
                            ImsService.this.mContext.registerReceiver(ImsService.this.mSubInfoReceiver, filter);
                            ImsService.this.mRegisterSubInfoChange = ImsService.DBG;
                        }
                        ImsService.this.mWaitSubInfoChange[this.mSocketId] = ImsService.DBG;
                    } else {
                        ImsService.this.mWaitSubInfoChange[this.mSocketId] = false;
                    }
                    ImsService.this.mVolteEnable[this.mSocketId] = enable;
                    if (ImsService.this.mWaitFeatureChange == 0) {
                        SystemProperties.set(ImsService.PROPERTY_IMSCONFIG_FORCE_NOTIFY, RadioCapabilitySwitchUtil.IMSI_READY);
                        IntentFilter filter2 = new IntentFilter();
                        filter2.addAction(ImsConfigContract.ACTION_IMS_FEATURE_CHANGED);
                        ImsService.this.mContext.registerReceiver(ImsService.this.mFeatureValueReceiver, filter2);
                    }
                    ImsService.this.mWaitFeatureChange |= 1 << this.mSocketId;
                    ImsService.this.setEnhanced4gLteModeSetting(this.mSocketId, enable);
                    ImsService.this.log("handleMessage() : Volte_Setting_Enable=" + enable + ", register:" + ImsService.this.mWaitSubInfoChange[this.mSocketId] + ", mWaitFeatureChange:" + ImsService.this.mWaitFeatureChange);
                    break;
                case 23:
                    ImsService.this.log("handleMessage() : receive EVENT_RUN_GBA: Enter messege");
                    AsyncResult ar2 = (AsyncResult) msg.obj;
                    String[] nafInfoTemp = (String[]) ar2.result;
                    NafSessionKeyResult result = (NafSessionKeyResult) ar2.userObj;
                    synchronized (result.lockObj) {
                        if (ar2.exception != null) {
                            result.cmdResult = 3;
                            ImsService.this.log("handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_ERROR");
                        } else {
                            ImsService.this.log("handleMessage() : receive EVENT_RUN_GBA: hexkey:" + nafInfoTemp[0] + ", btid:" + nafInfoTemp[2] + ", keylifetime:" + nafInfoTemp[3]);
                            NafSessionKey nafKey = new NafSessionKey(nafInfoTemp[2], ImsCommonUtil.hexToBytes(nafInfoTemp[0]), nafInfoTemp[3]);
                            result.nafSessionKey = nafKey;
                            result.cmdResult = 4;
                            ImsService.this.log("handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_SUCCESS");
                        }
                        result.lockObj.notify();
                        ImsService.this.log("handleMessage() : receive EVENT_RUN_GBA: notify result");
                    }
                    break;
                case 24:
                    ImsXuiManager xuiManager = ImsXuiManager.getInstance();
                    if (ImsCommonUtil.supportMdAutoSetupIms()) {
                        String[] exui = (String[]) ((AsyncResult) msg.obj).result;
                        ImsService.this.log("handleMessage() : XUI_INFO=" + exui[2]);
                        xuiManager.setXui(this.mSocketId, exui[2]);
                    }
                    ImsService.this.notifyRegistrationAssociatedUriChange(xuiManager, this.mSocketId);
                    break;
                case 25:
                    int eccSupport = ((int[]) ((AsyncResult) msg.obj).result)[0];
                    ImsService.this.log("receive EVENT_IMS_SUPPORT_ECC_URC, enable = " + eccSupport + " phoneId = " + this.mSocketId);
                    if (eccSupport == 0) {
                        int[] iArr = ImsService.this.mIsImsEccSupported;
                        int i = this.mSocketId;
                        iArr[i] = iArr[i] & (-2);
                    } else if (eccSupport == 1) {
                        int[] iArr2 = ImsService.this.mIsImsEccSupported;
                        int i2 = this.mSocketId;
                        iArr2[i2] = iArr2[i2] | 1;
                    } else if (eccSupport == 2) {
                        int[] iArr3 = ImsService.this.mIsImsEccSupported;
                        int i3 = this.mSocketId;
                        iArr3[i3] = iArr3[i3] & (-17);
                    } else if (eccSupport == 3) {
                        int[] iArr4 = ImsService.this.mIsImsEccSupported;
                        int i4 = this.mSocketId;
                        iArr4[i4] = 16 | iArr4[i4];
                    }
                    HashSet<IImsRegistrationListener> ecclisteners = (HashSet) ImsService.this.mListener.get(this.mSocketId);
                    if (ecclisteners != null) {
                        if (ImsService.this.mIsImsEccSupported[this.mSocketId] > 0) {
                            resultEvent = 2;
                        } else {
                            resultEvent = 4;
                        }
                        synchronized (ecclisteners) {
                            try {
                                Iterator<IImsRegistrationListener> it = ecclisteners.iterator();
                                while (it.hasNext()) {
                                    IImsRegistrationListener l = it.next();
                                    l.registrationServiceCapabilityChanged(1, resultEvent);
                                }
                            } catch (RemoteException e) {
                            }
                        }
                        break;
                    }
                    break;
                case 26:
                    ImsService.this.startGbaService();
                    break;
                case 27:
                    ImsService.this.log("handleMessage() : Start init call session proxy");
                    Bundle b = msg.getData();
                    String callId = b.getString("callId");
                    int phoneId = b.getInt("phoneId");
                    int seqNum = b.getInt("seqNum");
                    ImsService.this.mMtkPendingMT = new MtkImsCallSessionProxy(ImsService.this.mContext, ImsService.this.mImsCallProfile, null, ImsService.this, ImsService.this.mHandler[phoneId], ImsService.this.mImsRILAdapters[phoneId], callId, phoneId);
                    ImsCallSessionProxy imsCallSessionProxy = new ImsCallSessionProxy(ImsService.this.mContext, ImsService.this.mImsCallProfile, null, ImsService.this, ImsService.this.mHandler[phoneId], ImsService.this.mImsRILAdapters[phoneId], callId, phoneId);
                    ImsService.this.mMtkPendingMT.setAospCallSessionProxy(imsCallSessionProxy);
                    imsCallSessionProxy.setMtkCallSessionProxy(ImsService.this.mMtkPendingMT);
                    ImsService.this.mImsRILAdapters[phoneId].unregisterForCallInfo(ImsService.this.mHandler[phoneId]);
                    ImsService.this.mImsRILAdapters[phoneId].setCallIndication(0, Integer.parseInt(callId), seqNum);
                    if (ImsService.this.mIsPendingMTTerminated) {
                        ImsService.this.log("handleMessage() : Start deal with pending 133");
                        ImsService.this.mMtkPendingMT.callTerminated();
                        ImsService.this.mMtkPendingMT.setServiceImpl(null);
                        ImsService.this.mMtkPendingMT.setServiceImpl(null);
                        ImsService.this.mMtkPendingMT = null;
                        ImsService.this.mIsPendingMTTerminated = false;
                        break;
                    }
                    break;
                case 28:
                    int phone_id = msg.arg1;
                    int token = msg.arg2;
                    int messageRef = 0;
                    AsyncResult ar3 = (AsyncResult) msg.obj;
                    if (ar3.result != null) {
                        messageRef = ((MtkSmsResponse) ar3.result).mMessageRef;
                    } else {
                        ImsService.this.log("handleMessage() : MtkSmsResponse was null");
                    }
                    if (ar3.exception != null) {
                        ImsService.this.log("handleMessage() : SMS send failed");
                        int status = 2;
                        if (ar3.exception.getCommandError() == CommandException.Error.SMS_FAIL_RETRY) {
                            status = 4;
                        }
                        ((IMtkMmTelFeatureCallback) ImsService.this.mMmTelFeatureCallback.get(phone_id)).sendSmsRsp(token, messageRef, status, 1);
                        break;
                    } else {
                        ImsService.this.log("handleMessage() : SMS send complete, messageRef: " + messageRef);
                        ((IMtkMmTelFeatureCallback) ImsService.this.mMmTelFeatureCallback.get(phone_id)).sendSmsRsp(token, messageRef, 1, 0);
                        break;
                    }
                case 29:
                    ImsService.this.log("receive EVENT_UT_CAPABILITY_CHANGE, phoneId = " + msg.arg1);
                    ImsService.this.notifyRegistrationCapabilityChange(msg.arg1, ImsService.this.mImsExtInfo[msg.arg1], false);
                    break;
                case 30:
                    AsyncResult ar4 = (AsyncResult) msg.obj;
                    if (ar4 != null) {
                        byte[] pdu = (byte[]) ar4.result;
                        ImsService.this.log("EVENT_IMS_SMS_STATUS_REPORT, mSocketId = " + this.mSocketId);
                        ((IMtkMmTelFeatureCallback) ImsService.this.mMmTelFeatureCallback.get(this.mSocketId)).newStatusReportInd(pdu, "3gpp");
                        break;
                    }
                    break;
                case 31:
                    AsyncResult ar5 = (AsyncResult) msg.obj;
                    if (ar5 != null) {
                        byte[] pdu2 = (byte[]) ar5.result;
                        ImsService.this.log("EVENT_IMS_SMS_NEW_SMS, mSocketId = " + this.mSocketId);
                        ((IMtkMmTelFeatureCallback) ImsService.this.mMmTelFeatureCallback.get(this.mSocketId)).newImsSmsInd(pdu2, "3gpp");
                        break;
                    }
                    break;
                case 32:
                    if (!ImsService.this.handleNewCdmaSms((AsyncResult) msg.obj, this.mSocketId)) {
                        ImsService.this.acknowledgeLastIncomingCdmaSms(this.mSocketId, false, 2);
                        break;
                    }
                    break;
            }
            IImsServiceExt opImsService2 = ImsService.this.getOpImsService();
            if (opImsService2 != null) {
                opImsService2.notifyImsServiceEvent(this.mSocketId, ImsService.this.mContext, msg);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableIms(int phoneId, boolean isNormalDisable) {
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            disableImsAdapter(phoneId, isNormalDisable);
        }
        this.mImsState[phoneId] = 0;
    }

    private void initImsAvailability(int phoneId, int capabilityOffset, int enableMessageId, int disableMessageId) {
        int volteCapability = SystemProperties.getInt(ImsConfigUtils.PROPERTY_VOLTE_ENALBE, 0);
        int wfcCapability = SystemProperties.getInt(ImsConfigUtils.PROPERTY_WFC_ENALBE, 0);
        if (((1 << capabilityOffset) & volteCapability) > 0 || ((1 << capabilityOffset) & wfcCapability) > 0) {
            log("initImsAvailability turnOnIms : " + phoneId);
            this.mImsRILAdapters[phoneId].turnOnIms(this.mHandler[phoneId].obtainMessage(enableMessageId));
            this.mImsState[phoneId] = 2;
        } else {
            log("initImsAvailability turnOffIms : " + phoneId);
            this.mImsRILAdapters[phoneId].turnOffIms(this.mHandler[phoneId].obtainMessage(disableMessageId));
            this.mImsState[phoneId] = 3;
        }
        updateRadioState(ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE.ordinal(), phoneId);
    }

    public int getRatType(int phoneId) {
        return this.mRAN[phoneId];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String s) {
        Rlog.i(LOG_TAG, s);
    }

    private void englog(String s) {
        if (ENGLOAD) {
            log(s);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logw(String s) {
        Rlog.w(LOG_TAG, s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String s) {
        Rlog.e(LOG_TAG, s);
    }

    private void logi(String s) {
        Rlog.i(LOG_TAG, s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onSetCallIndication(int phoneId, String callId, String callNum, int seqNum, String toNumber, boolean isAllow) {
        if (isAllow) {
            this.mImsCallProfile = new ImsCallProfile();
            if (callNum != null && !callNum.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                loge("setCallIndication new call profile: " + callNum);
                this.mImsCallProfile.setCallExtra("oi", callNum);
                this.mImsCallProfile.setCallExtraInt("oir", 2);
            }
            DigitsUtil digitsUtil = OpImsServiceCustomizationUtils.getOpFactory(this.mContext).makeDigitsUtil();
            digitsUtil.putMtToNumber(toNumber, this.mImsCallProfile);
            Message msg = this.mHandler[phoneId].obtainMessage(27);
            Bundle b = new Bundle();
            b.putString("callId", callId);
            b.putInt("phoneId", phoneId);
            b.putInt("seqNum", seqNum);
            msg.setData(b);
            this.mHandler[phoneId].sendMessage(msg);
            return;
        }
        this.mImsRILAdapters[phoneId].setCallIndication(1, Integer.parseInt(callId), seqNum);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IMtkImsCallSession onGetPendingMtkCallSession(String callId) {
        if (this.mMtkPendingMT == null) {
            return null;
        }
        IMtkImsCallSession pendingMTsession = this.mMtkPendingMT.getServiceImpl();
        try {
            if (pendingMTsession.getCallId().equals(callId)) {
                this.mMtkPendingMT = null;
                return pendingMTsession;
            }
        } catch (RemoteException e) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendIncomingCallIndication(int phoneId, AsyncResult ar) {
        this.mIsPendingMTTerminated = false;
        this.mImsRILAdapters[phoneId].registerForCallInfo(this.mHandler[phoneId], 8, null);
        String callId = ((String[]) ar.result)[0];
        this.mPendingMTCallId = callId;
        String dialString = ((String[]) ar.result)[1];
        String callMode = ((String[]) ar.result)[3];
        String seqNum = ((String[]) ar.result)[4];
        String toLineNum = ((String[]) ar.result)[6];
        log("sendIncomingCallIndication() : call_id = " + callId + " dialString = " + dialString + " seqNum = " + seqNum + " phoneId = " + phoneId);
        ImsServiceCallTracker imsCallTracker = ImsServiceCallTracker.getInstance(phoneId);
        boolean isAllow = DBG;
        String callWaitingSetting = TelephonyManager.getTelephonyProperty(phoneId, MtkTelephonyProperties.PROPERTY_TBCW_MODE, MtkTelephonyProperties.TBCW_DISABLED);
        if (callWaitingSetting.equals(MtkTelephonyProperties.TBCW_OFF) && imsCallTracker.isInCall()) {
            log("sendIncomingCallIndication() : PROPERTY_TBCW_MODE = TBCW_OFF. Reject the call as UDUB ");
            isAllow = false;
        }
        if (imsCallTracker.isEccExist()) {
            log("sendIncomingCallIndication() : there is an ECC call, dis-allow this incoming call!");
            isAllow = false;
        }
        if (OperatorUtils.isMatched(OperatorUtils.OPID.OP01, phoneId)) {
            log("sendIncomingCallIndication() : OP01 case");
            if (imsCallTracker.isVideoCallExist()) {
                log("sendIncomingCallIndication() : there is video calls, dis-allow this incoming call!");
                isAllow = false;
            } else if (imsCallTracker.isVideoCall(Integer.parseInt(callMode)) && imsCallTracker.isInCall()) {
                log("sendIncomingCallIndication() : MT is video calls during call, dis-allow this incoming call!");
                isAllow = false;
            }
        }
        onSetCallIndication(phoneId, callId, dialString, Integer.parseInt(seqNum), toLineNum, isAllow);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentCallCount(int phoneId) {
        if (phoneId >= 0 && phoneId <= this.mNumOfPhones - 1) {
            return ImsServiceCallTracker.getInstance(phoneId).getCurrentCallCount();
        }
        log("IMS: getCurrentCallCount() phoneId: " + phoneId);
        return 0;
    }

    public boolean isImsEccSupported(int phoneId) {
        if (this.mIsImsEccSupported[phoneId] > 0) {
            return DBG;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetXuiAndNotify(int phoneId) {
        log("resetXuiAndNotify() phoneId: " + phoneId);
        ImsXuiManager.getInstance().setXui(phoneId, null);
        final Uri[] uris = {Uri.parse(MtkPhoneConstants.MVNO_TYPE_NONE)};
        HashSet<IImsRegistrationListener> listeners = this.mListener.get(phoneId);
        if (listeners != null) {
            synchronized (listeners) {
                listeners.forEach(new Consumer() { // from class: com.mediatek.ims.-$$Lambda$ImsService$FjfXO7_7sxN84aO5RoWE5NZ54GI
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ImsService.lambda$resetXuiAndNotify$4(ImsService.this, uris, (IImsRegistrationListener) obj);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void lambda$resetXuiAndNotify$4(ImsService imsService, Uri[] uris, IImsRegistrationListener l) {
        try {
            l.registrationAssociatedUriChanged(uris);
        } catch (RemoteException e) {
            imsService.loge("clear self identify failed!!");
        }
    }

    public int[] getImsNetworkState(int capability) {
        return this.mImsDataTracker.getImsNetworkState(capability);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAddImsSmsListener(int phoneId, IImsSmsListener listener) {
        log("onAddImsSmsListener: phoneId=" + phoneId + " listener=" + listener);
        HashSet<IImsSmsListener> listeners = this.mImsSmsListener.get(phoneId);
        synchronized (listeners) {
            if (!listeners.isEmpty()) {
                listeners.clear();
            }
            listeners.add(listener);
            log("IMS SMS listener set size=" + listeners.size());
        }
    }

    public void sendSms(int phoneId, int token, int messageRef, String format, String smsc, boolean isRetry, byte[] pdu) {
        log("sendSms, token " + token + ", messageRef " + messageRef);
        Message response = this.mHandler[phoneId].obtainMessage(28, phoneId, token);
        this.mImsRILAdapters[phoneId].sendSms(token, messageRef, format, smsc, isRetry, pdu, response);
    }

    public void acknowledgeLastIncomingGsmSms(int phoneId, boolean success, int cause) {
        log("acknowledgeLastIncomingGsmSms, success " + success + ", cause " + cause);
        this.mImsRILAdapters[phoneId].acknowledgeLastIncomingGsmSms(success, cause, null);
    }

    public void acknowledgeLastIncomingCdmaSms(int phoneId, boolean success, int cause) {
        log("acknowledgeLastIncomingCdmaSms, success " + success + ", cause " + cause);
        this.mImsRILAdapters[phoneId].acknowledgeLastIncomingCdmaSmsEx(success, cause, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleNewCdmaSms(AsyncResult ar, int socketId) {
        if (ar.exception != null) {
            loge("Exception processing incoming SMS: " + ar.exception);
            return false;
        }
        SmsMessage sms = (SmsMessage) ar.result;
        if (sms == null) {
            loge("SmsMessage is null");
            return false;
        }
        com.android.internal.telephony.cdma.SmsMessage smsMessage = sms.mWrappedSmsMessage;
        if (smsMessage == null) {
            loge("SmsMessageBase is null");
            return false;
        } else if (this.mMmTelFeatureCallback == null) {
            loge("mMmTelFeatureCallback is null");
            return false;
        } else {
            boolean statusReport = false;
            com.android.internal.telephony.cdma.SmsMessage cdmaSms = smsMessage;
            if (cdmaSms.getMessageType() == 0) {
                try {
                    cdmaSms.parseSms();
                    if (cdmaSms.isStatusReportMessage()) {
                        statusReport = true;
                    }
                } catch (RuntimeException ex) {
                    loge("Exception dispatching message: " + ex);
                    return false;
                }
            }
            if (statusReport) {
                log("EVENT_IMS_SMS_STATUS_REPORT, socketId = " + socketId);
                this.mMmTelFeatureCallback.get(socketId).newStatusReportInd(smsMessage.getPdu(), "3gpp2");
                return DBG;
            }
            log("EVENT_IMS_SMS_NEW_SMS, socketId = " + socketId);
            this.mMmTelFeatureCallback.get(socketId).newImsSmsInd(smsMessage.getPdu(), "3gpp2");
            return DBG;
        }
    }

    public void explicitCallTransfer(int phoneId, Message result, Messenger target) {
        log("explicitCallTransfer: phoneId " + phoneId);
        ImsServiceCallTracker imsCallTracker = ImsServiceCallTracker.getInstance(phoneId);
        ImsCallSessionProxy fgCallSession = imsCallTracker.getFgCall();
        if (fgCallSession != null) {
            fgCallSession.explicitCallTransferWithCallback(result, target);
            return;
        }
        result.arg1 = 0;
        try {
            target.send(result);
        } catch (RemoteException e) {
            log(e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRegistrationOOSStateChanged(int simId, int oosState) {
        HashSet<IImsRegistrationListener> listeners = this.mListener.get(simId);
        if (listeners == null) {
            log("notifyRegistrationOOSStateChanged: listeners is null");
            return;
        }
        synchronized (listeners) {
            int resultEvent = 5;
            switch (oosState) {
                case 0:
                    resultEvent = 6;
                    break;
                case 1:
                    resultEvent = 5;
                    break;
                case 2:
                    resultEvent = 7;
                    break;
            }
            try {
                log("notifyRegistrationOOSStateChanged listener size: " + listeners.size());
                Iterator<IImsRegistrationListener> it = listeners.iterator();
                while (it.hasNext()) {
                    IImsRegistrationListener l = it.next();
                    log("call registrationServiceCapabilityChanged with event: " + resultEvent);
                    l.registrationServiceCapabilityChanged(1, resultEvent);
                }
            } catch (RemoteException e) {
                log(e.toString());
            }
        }
    }

    public void setMmTelFeatureCallback(int phoneId, IMtkMmTelFeatureCallback c) {
        this.mMmTelFeatureCallback.delete(phoneId);
        if (c != null && SubscriptionManager.isValidPhoneId(phoneId)) {
            this.mMmTelFeatureCallback.put(phoneId, c);
            c.notifyContextChanged(this.mContext);
        }
    }

    private MmTelFeature.MmTelCapabilities convertCapabilities(int[] enabledFeatures) {
        boolean[] featuresEnabled = new boolean[enabledFeatures.length];
        for (int i = 0; i <= 5 && i < enabledFeatures.length; i++) {
            if (enabledFeatures[i] == i) {
                featuresEnabled[i] = DBG;
            } else if (enabledFeatures[i] == -1) {
                featuresEnabled[i] = false;
            }
        }
        MmTelFeature.MmTelCapabilities capabilities = new MmTelFeature.MmTelCapabilities();
        if (featuresEnabled[0] || featuresEnabled[2]) {
            capabilities.addCapabilities(1);
        }
        if (featuresEnabled[1] || featuresEnabled[3]) {
            capabilities.addCapabilities(2);
        }
        if (featuresEnabled[4] || featuresEnabled[5]) {
            capabilities.addCapabilities(4);
        }
        log("convertCapabilities - capabilities: " + capabilities);
        return capabilities;
    }

    private void notifyCapabilityChanged(int phoneId, MmTelFeature.MmTelCapabilities c) {
        if (this.mMmTelFeatureCallback.get(phoneId) != null) {
            this.mMmTelFeatureCallback.get(phoneId).notifyCapabilitiesChanged(c);
        }
    }

    private void notifyIncomingCall(int phoneId, ImsCallSessionImplBase c, Bundle extras) {
        if (this.mMmTelFeatureCallback.get(phoneId) != null) {
            this.mMmTelFeatureCallback.get(phoneId).notifyIncomingCall(c, extras);
        }
    }

    public void notifyIncomingCallSession(int phoneId, IImsCallSession c, Bundle extras) {
        if (this.mMmTelFeatureCallback.get(phoneId) != null) {
            try {
                this.mMmTelFeatureCallback.get(phoneId).notifyIncomingCallSession(c, extras);
            } catch (RuntimeException e) {
                loge("Fail to notifyIncomingCallSession " + e);
            }
        }
    }

    public void setImsRegistration(int slotId, MtkImsRegistrationImpl imsRegImpl) {
        sMtkImsRegImpl.remove(Integer.valueOf(slotId));
        if (imsRegImpl != null) {
            sMtkImsRegImpl.put(Integer.valueOf(slotId), imsRegImpl);
            if (this.mImsRegInfo[slotId] == 3) {
                return;
            }
            if (this.mImsRegInfo[slotId] == 0) {
                try {
                    int radioTech = getRadioTech(slotId);
                    updateImsRegstration(slotId, 2, convertImsRegistrationTech(radioTech), null);
                } catch (RemoteException e) {
                    loge("Fail to get radio tech " + e);
                }
            } else if (this.mImsRegInfo[slotId] == 1) {
                ImsReasonInfo imsReasonInfo = createImsReasonInfo(slotId);
                updateImsRegstration(slotId, 3, -1, imsReasonInfo);
            }
        }
    }

    private void updateImsRegstration(int slotId, int state, int imsRadioTech, ImsReasonInfo reason) {
        MtkImsRegistrationImpl imsReg = sMtkImsRegImpl.get(Integer.valueOf(slotId));
        if (imsReg != null) {
            logi("[" + slotId + "] state " + state + " updateImsRegstration, tech " + imsRadioTech + ", reason " + reason);
            switch (state) {
                case 1:
                    imsReg.onRegistering(imsRadioTech);
                    return;
                case 2:
                    imsReg.onRegistered(imsRadioTech);
                    return;
                case 3:
                    imsReg.onDeregistered(reason);
                    return;
                default:
                    return;
            }
        } else {
            loge("There is not ImsRegistrationImpl for slot " + slotId);
        }
    }

    private int convertImsRegistrationTech(int tech) {
        if (tech == 14) {
            return 0;
        }
        if (tech != 18) {
            return -1;
        }
        return 1;
    }

    public int getSubIdUsingPhoneId(int phoneId) {
        int[] subIds = SubscriptionManager.getSubId(phoneId);
        int subId = -1;
        if (subIds != null && subIds.length >= 1) {
            subId = subIds[0];
        }
        log("[getSubIdUsingPhoneId] volte_setting subId: " + subId);
        return subId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEnhanced4gLteModeSetting(int phoneId, boolean enabled) {
        ImsManager imsMgr = ImsManager.getInstance(this.mContext, phoneId);
        if (imsMgr != null) {
            imsMgr.setEnhanced4gLteModeSetting(enabled);
            if (!imsMgr.isServiceReady()) {
                try {
                    this.mImsConfigManager.get(phoneId).setFeatureValue(0, 13, enabled ? 1 : 0, (ImsConfigListener) null);
                    log("volte_setting setEnhanced4gLteModeSetting with service not ready yet.");
                } catch (RemoteException e) {
                    log("volte_setting setEnhanced4gLteModeSetting with exception.");
                }
            }
        } else {
            loge("[" + phoneId + "] Fail to setEnhanced4gLteModeSetting because imsMgr is null");
        }
    }

    public boolean isSupportCFT(int phoneId) {
        boolean isSupport;
        synchronized (sMtkSSExt) {
            isSupport = false;
            if (sMtkSSExt.containsKey(Integer.valueOf(phoneId))) {
                isSupport = sMtkSSExt.get(Integer.valueOf(phoneId)).isSupportCFT();
            }
            log("isSupportCFT: " + isSupport);
        }
        return isSupport;
    }
}
