package com.mediatek.ims;

import android.content.Context;
import android.content.Intent;
import android.hardware.radio.V1_0.LastCallFailCause;
import android.hardware.radio.V1_0.RadioError;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncResult;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.CarrierConfigManager;
import android.telephony.PhoneNumberUtils;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import android.telephony.ims.ImsConferenceState;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsStreamMediaProfile;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import android.text.TextUtils;
import com.android.ims.ImsManager;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsVideoCallProvider;
import com.android.internal.telephony.CommandException;
import com.mediatek.common.regionalphone.RegionalPhone;
import com.mediatek.ims.DefaultConferenceHandler;
import com.mediatek.ims.ImsCallInfo;
import com.mediatek.ims.OperatorUtils;
import com.mediatek.ims.common.ImsCarrierConfigConstants;
import com.mediatek.ims.ext.DigitsUtil;
import com.mediatek.ims.ext.OpImsServiceCustomizationUtils;
import com.mediatek.ims.internal.ConferenceCallMessageHandler;
import com.mediatek.ims.internal.ImsVTProvider;
import com.mediatek.ims.internal.ImsVTProviderUtil;
import com.mediatek.ims.internal.op.OpImsCallSessionProxy;
import com.mediatek.ims.internal.op.OpImsServiceFactoryBase;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ExtensionPluginFactory;
import com.mediatek.ims.plugin.impl.ImsCallPluginBase;
import com.mediatek.ims.plugin.impl.ImsSelfActivatorBase;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkCallFailCause;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import com.mediatek.wfo.DisconnectCause;
import com.mediatek.wfo.IMwiService;
import com.mediatek.wfo.IWifiOffloadService;
import com.mediatek.wfo.MwisConstants;
import com.mediatek.wfo.WifiOffloadManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ImsCallSessionProxy extends ImsCallSessionImplBase {
    private static final int AMR_NB = 6;
    private static final int AMR_WB = 7;
    public static final int CALL_INFO_MSG_TYPE_ACTIVE = 132;
    public static final int CALL_INFO_MSG_TYPE_ALERT = 2;
    public static final int CALL_INFO_MSG_TYPE_CONNECTED = 6;
    public static final int CALL_INFO_MSG_TYPE_DISCONNECTED = 133;
    public static final int CALL_INFO_MSG_TYPE_HELD = 131;
    public static final int CALL_INFO_MSG_TYPE_MO_CALL_ID_ASSIGN = 130;
    public static final int CALL_INFO_MSG_TYPE_REMOTE_HOLD = 135;
    public static final int CALL_INFO_MSG_TYPE_REMOTE_RESUME = 136;
    public static final int CALL_INFO_MSG_TYPE_SETUP = 0;
    private static final boolean DBG = true;
    private static final int EVENT_ACCEPT_RESULT = 202;
    private static final int EVENT_ADD_CONFERENCE_RESULT = 206;
    private static final int EVENT_CALL_INFO_INDICATION = 102;
    private static final int EVENT_CALL_MODE_CHANGE_INDICATION = 106;
    private static final int EVENT_CANCEL_USSI_COMPLETE = 214;
    private static final int EVENT_DEVICE_SWITCH_REPONSE = 222;
    private static final int EVENT_DIAL_CONFERENCE_RESULT = 209;
    private static final int EVENT_DIAL_FROM_RESULT = 221;
    private static final int EVENT_DIAL_RESULT = 201;
    private static final int EVENT_DTMF_DONE = 212;
    private static final int EVENT_ECONF_RESULT_INDICATION = 104;
    private static final int EVENT_ECT_RESULT = 215;
    private static final int EVENT_ECT_RESULT_INDICATION = 109;
    private static final int EVENT_GET_LAST_CALL_FAIL_CAUSE = 105;
    private static final int EVENT_GTT_CAPABILITY_INDICATION = 110;
    private static final int EVENT_HOLD_RESULT = 203;
    private static final int EVENT_IMS_CONFERENCE_INDICATION = 111;
    private static final int EVENT_MERGE_RESULT = 205;
    private static final int EVENT_ON_USSI = 108;
    private static final int EVENT_POLL_CALLS_RESULT = 101;
    private static final int EVENT_PULL_CALL_RESULT = 216;
    private static final int EVENT_RADIO_NOT_AVAILABLE = 217;
    private static final int EVENT_REDIAL_ECC_INDICATION = 224;
    private static final int EVENT_REMOVE_CONFERENCE_RESULT = 207;
    private static final int EVENT_RESUME_RESULT = 204;
    private static final int EVENT_RETRIEVE_MERGE_FAIL_RESULT = 211;
    private static final int EVENT_RTT_MODIFY_REQUEST_RECEIVE = 220;
    private static final int EVENT_RTT_MODIFY_RESPONSE = 219;
    private static final int EVENT_RTT_TEXT_RECEIVE_INDICATION = 218;
    private static final int EVENT_SEND_USSI_COMPLETE = 213;
    private static final int EVENT_SIP_CODE_INDICATION = 208;
    private static final int EVENT_SPEECH_CODEC_INFO = 223;
    private static final int EVENT_SWAP_BEFORE_MERGE_RESULT = 210;
    private static final int EVENT_VIDEO_CAPABILITY_INDICATION = 107;
    private static final int EVRC = 2;
    private static final int EVRC_B = 3;
    private static final int EVRC_NW = 5;
    private static final int EVRC_WB = 4;
    private static final int EVS_AWB = 33;
    private static final int EVS_FB = 32;
    private static final int EVS_NB = 23;
    private static final int EVS_SW = 25;
    private static final int EVS_WB = 24;
    public static final String EXTRA_CALL_INFO_MESSAGE_TYPE = "mediatek:callInfoMessageType";
    public static final String EXTRA_CALL_TYPE = "mediatek:callType";
    public static final String EXTRA_EMERGENCY_CALL = "mediatek:emergencyCall";
    public static final String EXTRA_INCOMING_CALL = "mediatek:incomingCall";
    public static final String EXTRA_RAT_TYPE = "mediatek:ratType";
    private static final int GSM_EFR = 8;
    private static final int GSM_FR = 9;
    private static final int GSM_HR = 10;
    private static final int IMS_CALL_TYPE_LTE = 1;
    private static final int IMS_CALL_TYPE_WIFI = 2;
    private static final int IMS_VIDEO_CALL = 21;
    private static final int IMS_VIDEO_CONF = 23;
    private static final int IMS_VIDEO_CONF_PARTS = 25;
    private static final int IMS_VOICE_CALL = 20;
    private static final int IMS_VOICE_CONF = 22;
    private static final int IMS_VOICE_CONF_PARTS = 24;
    private static final int INVALID_CALL_MODE = 255;
    private static final String LOG_TAG = "ImsCallSessionProxy";
    private static final String NA_PRIOR_CLIR_PREFIX = "*82";
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final int QCELP13K = 1;
    private static final boolean SENLOG = TextUtils.equals(Build.TYPE, "user");
    private static final boolean TELDBG;
    private static final String USER_ENTITY = "user-entity";
    private static final int USSI_REQUEST = 1;
    private static final int USSI_RESPONSE = 2;
    private static final boolean VDBG = false;
    private static final int VIDEO_STATE_PAUSE = 0;
    private static final int VIDEO_STATE_RECV_ONLY = 2;
    private static final int VIDEO_STATE_SEND_ONLY = 1;
    private static final int VIDEO_STATE_SEND_RECV = 3;
    private static final String VT_PROVIDER_ID = "video_provider_id";
    private static final int WFC_GET_CAUSE_FAILED = -1;
    private int mBadRssiThreshould;
    private CallErrorState mCallErrorState;
    private String mCallId;
    private String mCallNumber;
    private ImsCallProfile mCallProfile;
    private ConferenceEventListener mConfEvtListener;
    private ImsCallSessionProxy mConfSessionProxy;
    private Context mContext;
    private DigitsUtil mDigitsUtil;
    private Message mDtmfMsg;
    private Messenger mDtmfTarget;
    private int mEconfCount;
    private Message mEctMsg;
    private Messenger mEctTarget;
    private final Handler mHandler;
    private int mHangupCount;
    private boolean mHasPendingDisconnect;
    private boolean mHasPendingMo;
    private boolean mHasTriedSelfActivation;
    private boolean mHaveUpdateConferenceWithMember;
    private ImsCommandsInterface mImsRILAdapter;
    private ImsReasonInfo mImsReasonInfo;
    private ImsService mImsService;
    private ImsServiceCallTracker mImsServiceCT;
    private boolean mIsAddRemoveParticipantsCommandOK;
    private boolean mIsEmergencyCall;
    private boolean mIsHideHoldDuringECT;
    private boolean mIsHideHoldEventDuringMerging;
    private boolean mIsIncomingCall;
    private boolean mIsMerging;
    private boolean mIsOnTerminated;
    private boolean mIsOneKeyConf;
    private String mLastSIPReasonHeader;
    private int mLastSipCode;
    private int mLastSipMethod;
    private ImsCallSessionListener mListener;
    private ImsCallProfile mLocalCallProfile;
    private String mMergeCallId;
    private ImsCallInfo.State mMergeCallStatus;
    private String mMergedCallId;
    private ImsCallInfo.State mMergedCallStatus;
    private MtkImsCallSessionProxy mMtkConfSessionProxy;
    public MtkImsCallSessionProxy mMtkImsCallSessionProxy;
    private boolean mNormalCallsMerge;
    private String[] mOneKeyparticipants;
    private OpImsCallSessionProxy mOpExt;
    private com.mediatek.ims.ext.OpImsCallSessionProxy mOpImsCallSession;
    private HashMap<String, Bundle> mParticipants;
    private int mPendingDisconnectReason;
    private String[] mPendingParticipantInfo;
    private int mPendingParticipantInfoIndex;
    private int mPendingParticipantStatistics;
    private int mPhoneId;
    private boolean mRadioUnavailable;
    private int mRatType;
    private ImsCallProfile mRemoteCallProfile;
    protected ImsSelfActivatorBase mSelfActivateHelper;
    private ArrayList<String> mSelfAddressList;
    private final Handler mServiceHandler;
    private boolean mShouldUpdateAddressByPau;
    private boolean mSipSessionProgress;
    private int mState;
    private int mTerminateReason;
    private boolean mThreeWayMergeSucceeded;
    private ImsVTProvider mVTProvider;
    private ImsVTProviderUtil mVTProviderUtil;
    private int mVideoState;
    private VtProviderListener mVtProviderListener;
    private IWifiOffloadService mWfoService;
    IWifiOffloadListenerProxy mWosListener;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum CallErrorState {
        IDLE,
        DIAL,
        DISCONNECT
    }

    /* loaded from: classes.dex */
    public static class User {
        public String mDisplayText;
        public String mEndPoint;
        public String mEntity;
        public String mStatus = ConferenceCallMessageHandler.STATUS_DISCONNECTED;
        public String mUserAddr;
    }

    static /* synthetic */ int access$5708(ImsCallSessionProxy x0) {
        int i = x0.mPendingParticipantInfoIndex;
        x0.mPendingParticipantInfoIndex = i + 1;
        return i;
    }

    static /* synthetic */ int access$7308(ImsCallSessionProxy x0) {
        int i = x0.mEconfCount;
        x0.mEconfCount = i + 1;
        return i;
    }

    static {
        boolean z = false;
        if (SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1) {
            z = true;
        }
        TELDBG = z;
    }

    /* loaded from: classes.dex */
    private class ImsCallProfileEx {
        public static final String EXTRA_INCOMING_MPTY = "incoming_mpty";
        public static final String EXTRA_MPTY = "mpty";

        private ImsCallProfileEx() {
        }
    }

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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class VtProviderListener implements ImsVTProvider.VideoProviderStateListener {
        private VtProviderListener() {
        }

        @Override // com.mediatek.ims.internal.ImsVTProvider.VideoProviderStateListener
        public void onReceivePauseState(boolean isPause) {
            if (ImsCallSessionProxy.this.mCallProfile != null) {
                ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
                imsCallSessionProxy.logWithCallId("onReceivePauseState() : " + isPause, 2);
                if (isPause) {
                    ImsCallSessionProxy.this.mCallProfile.mMediaProfile.mVideoDirection = 0;
                } else {
                    ImsCallSessionProxy.this.mCallProfile.mMediaProfile.mVideoDirection = 3;
                }
                ImsCallSessionProxy.this.notifyCallSessionUpdated();
            }
        }

        @Override // com.mediatek.ims.internal.ImsVTProvider.VideoProviderStateListener
        public void onReceiveWiFiUsage(long usage) {
        }
    }

    ImsCallSessionProxy(Context context, ImsCallProfile profile, ImsCallSessionListener listener, ImsService imsService, Handler handler, ImsCommandsInterface imsRILAdapter, String callId, int phoneId, MtkImsCallSessionProxy mtkImsCallSessionProxy) {
        this(context, profile, listener, imsService, handler, imsRILAdapter, callId, phoneId);
        this.mMtkImsCallSessionProxy = mtkImsCallSessionProxy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsCallSessionProxy(Context context, ImsCallProfile profile, ImsCallSessionListener listener, ImsService imsService, Handler handler, ImsCommandsInterface imsRILAdapter, String callId, int phoneId) {
        this.mState = 0;
        this.mHasPendingMo = false;
        this.mIsMerging = false;
        this.mIsOnTerminated = false;
        this.mIsAddRemoveParticipantsCommandOK = false;
        this.mPendingParticipantInfoIndex = 0;
        this.mPendingParticipantStatistics = 0;
        this.mIsHideHoldEventDuringMerging = false;
        this.mMergeCallId = MtkPhoneConstants.MVNO_TYPE_NONE;
        this.mMergeCallStatus = ImsCallInfo.State.INVALID;
        this.mMergedCallId = MtkPhoneConstants.MVNO_TYPE_NONE;
        this.mMergedCallStatus = ImsCallInfo.State.INVALID;
        this.mNormalCallsMerge = false;
        this.mThreeWayMergeSucceeded = false;
        this.mEconfCount = 0;
        this.mHaveUpdateConferenceWithMember = false;
        this.mRadioUnavailable = false;
        this.mRatType = 1;
        this.mVTProviderUtil = ImsVTProviderUtil.getInstance();
        this.mTerminateReason = -1;
        this.mHangupCount = 0;
        this.mIsOneKeyConf = false;
        this.mOneKeyparticipants = null;
        this.mCallErrorState = CallErrorState.IDLE;
        this.mDtmfMsg = null;
        this.mDtmfTarget = null;
        this.mIsHideHoldDuringECT = false;
        this.mEctMsg = null;
        this.mEctTarget = null;
        this.mImsReasonInfo = null;
        this.mShouldUpdateAddressByPau = DBG;
        this.mOpExt = null;
        this.mDigitsUtil = null;
        this.mOpImsCallSession = null;
        this.mBadRssiThreshould = -90;
        this.mVideoState = 3;
        this.mHasTriedSelfActivation = false;
        this.mSipSessionProgress = false;
        this.mIsIncomingCall = DBG;
        this.mIsEmergencyCall = false;
        this.mParticipants = new HashMap<>();
        this.mVtProviderListener = new VtProviderListener();
        this.mPhoneId = phoneId;
        this.mImsServiceCT = ImsServiceCallTracker.getInstance(this.mPhoneId);
        this.mServiceHandler = handler;
        this.mHandler = new MyHandler(handler.getLooper());
        this.mContext = context;
        this.mCallProfile = profile;
        this.mLocalCallProfile = new ImsCallProfile(profile.mServiceType, profile.mCallType);
        this.mRemoteCallProfile = new ImsCallProfile(profile.mServiceType, profile.mCallType);
        this.mListener = listener;
        this.mImsService = imsService;
        this.mImsRILAdapter = imsRILAdapter;
        this.mCallId = callId;
        logWithCallId("ImsCallSessionProxy() : RILAdapter:" + imsRILAdapter + "imsService:" + imsService + " callID:" + callId + " phoneId: " + phoneId, 2);
        this.mOpExt = OpImsServiceFactoryBase.getInstance().makeOpImsCallSessionProxy();
        this.mDigitsUtil = OpImsServiceCustomizationUtils.getOpFactory(context).makeDigitsUtil();
        this.mOpImsCallSession = OpImsServiceCustomizationUtils.getOpFactory(context).makeOpImsCallSessionProxy();
        this.mImsRILAdapter.registerForCallInfo(this.mHandler, 102, null);
        this.mImsRILAdapter.registerForEconfResult(this.mHandler, 104, null);
        this.mImsRILAdapter.registerForCallProgressIndicator(this.mHandler, EVENT_SIP_CODE_INDICATION, null);
        this.mImsRILAdapter.registerForCallModeChangeIndicator(this.mHandler, EVENT_CALL_MODE_CHANGE_INDICATION, null);
        this.mImsRILAdapter.registerForVideoCapabilityIndicator(this.mHandler, EVENT_VIDEO_CAPABILITY_INDICATION, null);
        this.mImsRILAdapter.registerForEctResult(this.mHandler, EVENT_ECT_RESULT_INDICATION, null);
        this.mImsRILAdapter.registerForImsConfInfoUpdate(this.mHandler, 111, null);
        this.mImsRILAdapter.registerForNotAvailable(this.mHandler, EVENT_RADIO_NOT_AVAILABLE, null);
        this.mImsRILAdapter.registerForSpeechCodecInfo(this.mHandler, EVENT_SPEECH_CODEC_INFO, null);
        this.mImsRILAdapter.registerForImsRedialEccInd(this.mHandler, EVENT_REDIAL_ECC_INDICATION, null);
        this.mSelfActivateHelper = getImsExtSelfActivator(context, handler, this, imsRILAdapter, imsService, phoneId);
        this.mImsRILAdapter.getOpCommandsInterface().registerForGttCapabilityIndicator(this.mHandler, EVENT_GTT_CAPABILITY_INDICATION, null);
        this.mImsRILAdapter.getOpCommandsInterface().registerForRttModifyRequestReceive(this.mHandler, EVENT_RTT_MODIFY_REQUEST_RECEIVE, null);
        this.mImsRILAdapter.getOpCommandsInterface().registerForRttTextReceive(this.mHandler, EVENT_RTT_TEXT_RECEIVE_INDICATION, null);
        this.mImsRILAdapter.getOpCommandsInterface().registerForRttModifyResponse(this.mHandler, EVENT_RTT_MODIFY_RESPONSE, null);
        if (SystemProperties.get("persist.vendor.vilte_support").equals(RadioCapabilitySwitchUtil.IMSI_READY)) {
            logWithCallId("ImsCallSessionProxy() : start new VTProvider", 2);
            if (this.mCallId != null) {
                this.mVTProvider = OpImsServiceCustomizationUtils.getOpFactory(this.mContext).makeImsVtProvider();
                this.mVTProviderUtil.bind(this.mVTProvider, Integer.parseInt(this.mCallId), this.mPhoneId);
            } else {
                this.mVTProvider = OpImsServiceCustomizationUtils.getOpFactory(this.mContext).makeImsVtProvider();
            }
            this.mVTProvider.addVideoProviderStateListener(this.mVtProviderListener);
            logWithCallId("ImsCallSessionProxy() : end new VTProvider", 2);
        }
        if (this.mCallId == null) {
            this.mIsIncomingCall = false;
        }
        this.mImsRILAdapter.setOnUSSI(this.mHandler, EVENT_ON_USSI, null);
        IBinder b = ServiceManager.getService(WifiOffloadManager.WFO_SERVICE);
        if (b != null) {
            this.mWfoService = IWifiOffloadService.Stub.asInterface(b);
        } else {
            IBinder b2 = ServiceManager.getService(MwisConstants.MWI_SERVICE);
            try {
                if (b2 != null) {
                    this.mWfoService = IMwiService.Stub.asInterface(b2).getWfcHandlerInterface();
                } else {
                    logWithCallId("ImsCallSessionProxy() : No MwiService exist", 5);
                }
            } catch (RemoteException e) {
                logWithCallId("ImsCallSessionProxy() : can't get MwiService" + e, 5);
            }
        }
        if (this.mWfoService != null) {
            try {
                if (this.mWosListener == null) {
                    this.mWosListener = new IWifiOffloadListenerProxy();
                }
                this.mWfoService.registerForHandoverEvent(this.mWosListener);
                if (callId != null) {
                    updateCallStateForWifiOffload(3);
                }
            } catch (RemoteException e2) {
                logWithCallId("ImsCallSessionProxy() : RemoteException ImsCallSessionProxy()", 5);
            }
        }
        updateRat(this.mImsService.getRatType(this.mPhoneId));
        logWithCallId("ImsCallSessionProxy() : [WFC]mRatType is " + this.mRatType, 2);
        this.mConfSessionProxy = null;
        this.mMtkConfSessionProxy = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsCallSessionProxy(Context context, ImsCallProfile profile, ImsCallSessionListener listener, ImsService imsService, Handler handler, ImsCommandsInterface imsRILAdapter, int phoneId) {
        this(context, profile, listener, imsService, handler, imsRILAdapter, null, phoneId);
        logWithCallId("ImsCallSessionProxy() : ImsCallSessionProxy MO constructor", 2);
        this.mIsIncomingCall = false;
    }

    public void close() {
        logWithCallId("close() : ImsCallSessionProxy is closed!!! ", 2);
        if (this.mState == -1) {
            logWithCallId("close() : ImsCallSessionProxy already closed", 2);
            return;
        }
        this.mState = -1;
        this.mImsServiceCT.removeCallConnection(this.mCallId);
        this.mImsRILAdapter.unregisterForCallInfo(this.mHandler);
        this.mImsRILAdapter.unregisterForEconfResult(this.mHandler);
        this.mImsRILAdapter.unregisterForCallProgressIndicator(this.mHandler);
        this.mImsRILAdapter.unregisterForCallModeChangeIndicator(this.mHandler);
        this.mImsRILAdapter.unregisterForVideoCapabilityIndicator(this.mHandler);
        this.mImsRILAdapter.unregisterForEctResult(this.mHandler);
        this.mImsRILAdapter.unregisterForNotAvailable(this.mHandler);
        this.mImsRILAdapter.unregisterForSpeechCodecInfo(this.mHandler);
        this.mImsRILAdapter.unregisterForImsRedialEccInd(this.mHandler);
        this.mImsRILAdapter.getOpCommandsInterface().unregisterForGttCapabilityIndicator(this.mHandler);
        this.mImsRILAdapter.getOpCommandsInterface().unregisterForRttModifyResponse(this.mHandler);
        this.mImsRILAdapter.getOpCommandsInterface().unregisterForRttTextReceive(this.mHandler);
        this.mImsRILAdapter.getOpCommandsInterface().unregisterForRttModifyRequestReceive(this.mHandler);
        this.mImsRILAdapter.unSetOnUSSI(this.mHandler);
        this.mImsRILAdapter.unregisterForImsConfInfoUpdate(this.mHandler);
        this.mParticipants.clear();
        IImsVideoCallProvider vtProvider = getVideoCallProvider();
        if (vtProvider != null) {
            logWithCallId("close() : Start VtProvider setUIMode", 2);
            this.mVTProviderUtil.setUIMode(this.mVTProvider, 65536);
            this.mVTProvider.removeVideoProviderStateListener(this.mVtProviderListener);
            this.mVTProvider = null;
        }
        ImsConferenceHandler.getInstance().closeConference(this.mCallId);
        this.mConfEvtListener = null;
        this.mOneKeyparticipants = null;
        if (!(this.mWfoService == null || this.mWosListener == null)) {
            try {
                this.mWfoService.unregisterForHandoverEvent(this.mWosListener);
            } catch (RemoteException e) {
                logWithCallId("close() : RemoteException when unregisterForHandoverEvent", 5);
            }
        }
        if (this.mSelfActivateHelper != null) {
            this.mSelfActivateHelper.close();
            this.mSelfActivateHelper = null;
        }
        this.mCallId = null;
        this.mListener = null;
    }

    public String getCallId() {
        return this.mCallId;
    }

    public ImsCallProfile getCallProfile() {
        return this.mCallProfile;
    }

    public ImsCallProfile getLocalCallProfile() {
        return this.mLocalCallProfile;
    }

    public ImsCallProfile getRemoteCallProfile() {
        return this.mRemoteCallProfile;
    }

    public String getProperty(String name) {
        return this.mCallProfile.getCallExtra(name);
    }

    public int getState() {
        return this.mState;
    }

    public boolean isInCall() {
        return false;
    }

    public void setListener(ImsCallSessionListener listener) {
        this.mListener = listener;
    }

    public void setMute(boolean muted) {
        this.mImsRILAdapter.setMute(muted, null);
    }

    public void start(String callee, ImsCallProfile profile) {
        if (isCallPull(profile)) {
            pullCall(callee, profile);
            return;
        }
        int clirMode = profile.getCallExtraInt("oir", 0);
        boolean isEmergencyNumber = profile.mServiceType == 2;
        int subId = this.mImsService.getSubIdUsingPhoneId(this.mPhoneId);
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            boolean isNAPriorityClirSupported = getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_CARRIER_NOURTH_AMERICA_HIGH_PRIORITY_CLIR_PREFIX_SUPPORTED);
            if ((isNAPriorityClirSupported && clirMode == 1 && callee.startsWith(NA_PRIOR_CLIR_PREFIX)) || isEmergencyNumber || getImsExtCallUtil().isSpecialEmergencyNumber(subId, callee)) {
                logWithCallId("start() : Prior CLIR supported, *82 or ECC is higher priority than CLIR invocation.", 2);
                clirMode = 0;
            }
        }
        if (isEmergencyNumber || getImsExtCallUtil().isSpecialEmergencyNumber(subId, callee)) {
            if (!this.mImsService.isImsEccSupported(this.mPhoneId)) {
                logWithCallId("start() : Hangup all if IMS Ecc not supported", 2);
                this.mImsRILAdapter.hangupAllCall(null);
            }
            this.mIsEmergencyCall = DBG;
        }
        if (isVideoCall(profile)) {
            if (!this.mOpImsCallSession.isValidVtDialString(callee)) {
                rejectDial();
                return;
            }
            callee = this.mOpImsCallSession.normalizeVtDialString(callee);
        }
        if (this.mSelfActivateHelper != null && !this.mHasTriedSelfActivation && this.mSelfActivateHelper.shouldProcessSelfActivation(this.mPhoneId)) {
            this.mSelfActivateHelper.doSelfActivationDial(callee, profile, isEmergencyNumber);
            this.mHasTriedSelfActivation = DBG;
        } else if (profile.getCallExtraInt("dialstring", 0) == 2) {
            Message msg = this.mHandler.obtainMessage(EVENT_SEND_USSI_COMPLETE, 1, 0);
            this.mCallProfile = profile;
            if (this.mDigitsUtil.hasDialFrom(profile)) {
                this.mDigitsUtil.sendUssiFrom(this.mImsRILAdapter, profile, 1, callee, msg);
            } else {
                this.mImsRILAdapter.sendUSSI(1, callee, msg);
            }
        } else {
            tryTurnOnVolteForE911(isEmergencyNumber);
            this.mOpExt.setRttModeForDial(this.mCallId, this.mImsRILAdapter, profile.mMediaProfile.isRttCall());
            if (this.mDigitsUtil.hasDialFrom(profile)) {
                Message response = this.mHandler.obtainMessage(EVENT_DIAL_FROM_RESULT);
                this.mDigitsUtil.startFrom(callee, profile, clirMode, isVideoCall(profile), this.mImsRILAdapter, response);
            } else {
                Message response2 = this.mHandler.obtainMessage(201);
                this.mImsRILAdapter.start(callee, clirMode, isEmergencyNumber, isVideoCall(profile), this.mPhoneId, response2);
            }
            this.mHasPendingMo = DBG;
            this.mCallNumber = callee;
            updateShouldUpdateAddressByPau();
        }
    }

    public void startConference(String[] participants, ImsCallProfile profile) {
        int clirMode = profile.getCallExtraInt("oir", 0);
        Message result = this.mHandler.obtainMessage(EVENT_DIAL_CONFERENCE_RESULT);
        this.mImsRILAdapter.startConference(participants, clirMode, isVideoCall(profile), this.mPhoneId, result);
        this.mHasPendingMo = DBG;
        this.mIsOneKeyConf = DBG;
        this.mOneKeyparticipants = participants;
        updateShouldUpdateAddressByPau();
    }

    public void accept(int callType, ImsStreamMediaProfile profile) {
        logWithCallId("accept() : original call Type:" + this.mCallProfile.mCallType + "accept as:" + callType, 2);
        int videoMode = 0;
        if (this.mCallProfile.getCallExtraInt("dialstring", 0) == 2) {
            String m = this.mCallProfile.getCallExtra("m");
            String n = this.mCallProfile.getCallExtra("n");
            String str = this.mCallProfile.getCallExtra("str");
            logWithCallId("accept() : " + m + "," + n + "," + str, 2);
            if (this.mListener != null) {
                this.mListener.callSessionUssdMessageReceived(Integer.parseInt(n), str);
            }
        } else if (this.mCallProfile.mCallType == 2) {
            this.mImsRILAdapter.accept();
        } else {
            if (callType != 2) {
                switch (callType) {
                    case 4:
                        videoMode = 0;
                        break;
                    case 5:
                        videoMode = 3;
                        break;
                    case 6:
                        videoMode = 2;
                        break;
                }
            } else {
                videoMode = 1;
            }
            this.mImsRILAdapter.acceptVideoCall(videoMode, Integer.parseInt(this.mCallId));
        }
    }

    public void reject(int reason) {
        if (this.mCallId != null) {
            this.mImsRILAdapter.reject(Integer.parseInt(this.mCallId));
        } else {
            logWithCallId("reject() : Reject Call fail since there is no call ID. Abnormal Case", 5);
        }
    }

    public void terminate(int reason) {
        if (!this.mOpImsCallSession.handleHangup()) {
            if (this.mCallProfile.getCallExtraInt("dialstring", 0) == 2) {
                Message msg = this.mHandler.obtainMessage(EVENT_CANCEL_USSI_COMPLETE);
                if (this.mDigitsUtil.hasDialFrom(this.mCallProfile)) {
                    this.mDigitsUtil.cancelUssiFrom(this.mImsRILAdapter, this.mCallProfile, msg);
                } else {
                    this.mImsRILAdapter.cancelPendingUssi(msg);
                }
            } else if (this.mCallId != null) {
                if (this.mHangupCount > 0) {
                    this.mImsRILAdapter.forceHangup(Integer.parseInt(this.mCallId));
                } else {
                    this.mImsRILAdapter.terminate(Integer.parseInt(this.mCallId));
                    if (this.mIsMerging) {
                        terminateConferenceSession();
                    }
                }
                this.mTerminateReason = reason;
                this.mHangupCount++;
                this.mState = 7;
            } else {
                logWithCallId("terminate() : Terminate Call fail since there is no call ID. Abnormal Case", 5);
                if (this.mHasPendingMo) {
                    logWithCallId("terminate() : Pending M0, wait for assign call id", 5);
                    this.mHasPendingDisconnect = DBG;
                    this.mPendingDisconnectReason = reason;
                }
            }
        }
    }

    public void hold(ImsStreamMediaProfile profile) {
        Message result = this.mHandler.obtainMessage(EVENT_HOLD_RESULT);
        this.mImsRILAdapter.hold(Integer.parseInt(this.mCallId), result);
    }

    public void resume(ImsStreamMediaProfile profile) {
        Message result = this.mHandler.obtainMessage(EVENT_RESUME_RESULT);
        this.mImsRILAdapter.resume(Integer.parseInt(this.mCallId), result);
    }

    public void merge() {
        logWithCallId("merge()", 2);
        ImsCallInfo myCallInfo = this.mImsServiceCT.getCallInfo(this.mCallId);
        ImsCallInfo beMergedCallInfo = null;
        boolean needSwapConfToFg = getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_CARRIER_SWAP_CONFERENCE_TO_FOREGROUND_BEFORE_MERGE);
        boolean needSwapVtConfToFg = getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_CARRIER_SWAP_VT_CONFERENCE_TO_FOREGROUND_BEFORE_MERGE);
        if (myCallInfo == null) {
            logWithCallId("merge() : can't find this call callInfo", 5);
            mergeFailed();
            return;
        }
        if (myCallInfo.mState == ImsCallInfo.State.ACTIVE) {
            beMergedCallInfo = this.mImsServiceCT.getCallInfo(ImsCallInfo.State.HOLDING);
        } else if (myCallInfo.mState == ImsCallInfo.State.HOLDING) {
            beMergedCallInfo = this.mImsServiceCT.getCallInfo(ImsCallInfo.State.ACTIVE);
        }
        if (beMergedCallInfo == null) {
            logWithCallId("merge() : can't find another call's callInfo", 5);
            mergeFailed();
            return;
        }
        if (this.mCallProfile != null && this.mCallProfile.isVideoCall()) {
            needSwapConfToFg = needSwapVtConfToFg;
        }
        logWithCallId("merge() : merge command- my call: conference type=" + myCallInfo.mIsConference + " call status=" + myCallInfo.mState + " beMergedCall: conference type=" + beMergedCallInfo.mIsConference + " call status=" + beMergedCallInfo.mState + " needSwapConfToFg=" + needSwapConfToFg, 2);
        this.mMergeCallId = myCallInfo.mCallId;
        this.mMergeCallStatus = myCallInfo.mState;
        this.mMergedCallId = beMergedCallInfo.mCallId;
        this.mMergedCallStatus = beMergedCallInfo.mState;
        this.mIsMerging = DBG;
        DefaultConferenceHandler confHdler = ImsConferenceHandler.getInstance();
        if (!myCallInfo.mIsConference && !beMergedCallInfo.mIsConference) {
            Message result = this.mHandler.obtainMessage(EVENT_MERGE_RESULT);
            this.mImsRILAdapter.merge(result);
            this.mIsHideHoldEventDuringMerging = DBG;
            this.mNormalCallsMerge = DBG;
            confHdler.firstMerge(myCallInfo.mCallNum, beMergedCallInfo.mCallNum);
        } else if (myCallInfo.mIsConference && beMergedCallInfo.mIsConference) {
            logWithCallId("merge() : conference call merge conference call", 2);
            Message result2 = this.mHandler.obtainMessage(EVENT_ADD_CONFERENCE_RESULT);
            this.mImsRILAdapter.inviteParticipantsByCallId(Integer.parseInt(this.mCallId), beMergedCallInfo.mCallId, result2);
        } else {
            confHdler.tryAddParticipant(myCallInfo.mIsConference ? beMergedCallInfo.mCallNum : myCallInfo.mCallNum);
            if (!needSwapConfToFg) {
                if (myCallInfo.mIsConference) {
                    logWithCallId("merge() : active conference call merge background normal call", 2);
                    Message result3 = this.mHandler.obtainMessage(EVENT_ADD_CONFERENCE_RESULT);
                    this.mImsRILAdapter.inviteParticipantsByCallId(Integer.parseInt(this.mCallId), beMergedCallInfo.mCallId, result3);
                    return;
                }
                logWithCallId("merge() : active normal call merge background conference call", 2);
                Message result4 = this.mHandler.obtainMessage(EVENT_ADD_CONFERENCE_RESULT);
                this.mImsRILAdapter.inviteParticipantsByCallId(Integer.parseInt(beMergedCallInfo.mCallId), myCallInfo.mCallId, result4);
            } else if (myCallInfo.mIsConference && myCallInfo.mState == ImsCallInfo.State.ACTIVE) {
                logWithCallId("merge() : active conference call merge background normal call", 2);
                Message result5 = this.mHandler.obtainMessage(EVENT_ADD_CONFERENCE_RESULT);
                this.mImsRILAdapter.inviteParticipantsByCallId(Integer.parseInt(this.mCallId), beMergedCallInfo.mCallId, result5);
            } else if (!beMergedCallInfo.mIsConference || beMergedCallInfo.mState != ImsCallInfo.State.ACTIVE) {
                logWithCallId("merge() : swapping before merge", 2);
                Message result6 = this.mHandler.obtainMessage(EVENT_SWAP_BEFORE_MERGE_RESULT);
                this.mImsRILAdapter.swap(result6);
            } else {
                logWithCallId("merge() : beMergedCall in foreground merge bg normal call", 2);
                Message result7 = this.mHandler.obtainMessage(EVENT_ADD_CONFERENCE_RESULT);
                this.mImsRILAdapter.inviteParticipantsByCallId(Integer.parseInt(beMergedCallInfo.mCallId), myCallInfo.mCallId, result7);
            }
        }
    }

    public void update(int callType, ImsStreamMediaProfile profile) {
    }

    public void extendToConference(String[] participants) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void explicitCallTransferWithCallback(Message result, Messenger target) {
        this.mEctMsg = result;
        this.mEctTarget = target;
        explicitCallTransfer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void explicitCallTransfer() {
        Message result = this.mHandler.obtainMessage(EVENT_ECT_RESULT);
        this.mImsRILAdapter.explicitCallTransfer(result);
        this.mIsHideHoldDuringECT = DBG;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unattendedCallTransfer(String number, int type) {
        Message result = this.mHandler.obtainMessage(EVENT_ECT_RESULT);
        this.mImsRILAdapter.unattendedCallTransfer(number, type, result);
        this.mIsHideHoldDuringECT = DBG;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deviceSwitch(String number, String deviceId) {
        Message result = this.mHandler.obtainMessage(EVENT_DEVICE_SWITCH_REPONSE);
        this.mOpImsCallSession.deviceSwitch(this.mImsRILAdapter, number, deviceId, result);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancelDeviceSwitch() {
        this.mOpImsCallSession.cancelDeviceSwitch(this.mImsRILAdapter);
    }

    public void inviteParticipants(String[] participants) {
        Message result = this.mHandler.obtainMessage(EVENT_ADD_CONFERENCE_RESULT);
        this.mPendingParticipantInfoIndex = 0;
        this.mPendingParticipantInfo = participants;
        this.mPendingParticipantStatistics = participants.length;
        if (this.mCallId != null || this.mPendingParticipantStatistics == 0) {
            this.mImsRILAdapter.inviteParticipants(Integer.parseInt(this.mCallId), this.mPendingParticipantInfo[this.mPendingParticipantInfoIndex], result);
            return;
        }
        logWithCallId("inviteParticipants() : fail since no call ID or participants is null CallID=" + this.mCallId + " Participant number=" + this.mPendingParticipantStatistics, 5);
        if (this.mListener != null) {
            this.mListener.callSessionInviteParticipantsRequestFailed(new ImsReasonInfo());
        }
    }

    public void removeParticipants(String[] participants) {
        Message result = this.mHandler.obtainMessage(EVENT_REMOVE_CONFERENCE_RESULT);
        this.mPendingParticipantInfoIndex = 0;
        this.mPendingParticipantInfo = participants;
        this.mPendingParticipantStatistics = participants.length;
        if (this.mCallId != null || this.mPendingParticipantStatistics == 0) {
            String addr = this.mPendingParticipantInfo[this.mPendingParticipantInfoIndex];
            String participantUri = getConfParticipantUri(addr);
            this.mImsRILAdapter.removeParticipants(Integer.parseInt(this.mCallId), participantUri, result);
            ImsConferenceHandler.getInstance().tryRemoveParticipant(addr);
            return;
        }
        logWithCallId("removeParticipants() : fail since no call ID or participants is null CallID=" + this.mCallId + " Participant number=" + this.mPendingParticipantStatistics, 5);
        if (this.mListener != null) {
            this.mListener.callSessionRemoveParticipantsRequestFailed(new ImsReasonInfo());
        }
    }

    public void sendDtmf(char c, Message result) {
        this.mImsRILAdapter.sendDtmf(c, result);
    }

    public void startDtmf(char c) {
        this.mImsRILAdapter.startDtmf(c, null);
    }

    public void stopDtmf() {
        this.mImsRILAdapter.stopDtmf(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendDtmfbyTarget(char c, Message result, Messenger target) {
        this.mDtmfMsg = result;
        this.mDtmfTarget = target;
        Message local_result = this.mHandler.obtainMessage(EVENT_DTMF_DONE);
        this.mImsRILAdapter.sendDtmf(c, local_result);
    }

    public void sendUssd(String ussdMessage) {
        Message msg = this.mHandler.obtainMessage(EVENT_SEND_USSI_COMPLETE, 2, 0);
        if (this.mDigitsUtil.hasDialFrom(this.mCallProfile)) {
            this.mDigitsUtil.sendUssiFrom(this.mImsRILAdapter, this.mCallProfile, 1, ussdMessage, msg);
        } else {
            this.mImsRILAdapter.sendUSSI(2, ussdMessage, msg);
        }
    }

    public IImsVideoCallProvider getVideoCallProvider() {
        logWithCallId("getVideoCallProvider() : mVTProvider = " + this.mVTProvider, 2);
        if (this.mVTProvider != null) {
            return this.mVTProvider.getInterface();
        }
        return null;
    }

    public boolean isMultiparty() {
        if (this.mCallProfile.getCallExtraInt(ImsCallProfileEx.EXTRA_MPTY, 0) == 1) {
            return DBG;
        }
        return false;
    }

    public boolean isIncomingCallMultiparty() {
        if (this.mCallProfile.getCallExtraInt(ImsCallProfileEx.EXTRA_INCOMING_MPTY, 0) == 1) {
            return DBG;
        }
        return false;
    }

    public void sendRttMessage(String rttMessage) {
        this.mOpExt.sendRttMessage(this.mCallId, this.mImsRILAdapter, rttMessage);
    }

    public void sendRttModifyRequest(ImsCallProfile to) {
        logWithCallId("sendRttModifyRequest() : to = " + to, 2);
        this.mOpExt.sendRttModifyRequest(this.mCallId, this.mImsRILAdapter, to);
    }

    public void sendRttModifyResponse(boolean response) {
        this.mOpExt.sendRttModifyResponse(this.mCallId, this.mImsRILAdapter, response);
    }

    public void callTerminated() {
        detailLog("callTerminated() : mCallNumber = " + sensitiveEncode(this.mCallNumber));
        if (isMultiparty()) {
            ImsConferenceHandler.getInstance().closeConference(getCallId());
        }
        if (this.mState == -1 || this.mState == 8) {
            logWithCallId("callTerminated() : mState is INVALID, return: " + this.mState, 2);
            return;
        }
        int serviceId = this.mImsService.mapPhoneIdToServiceId(this.mPhoneId);
        this.mOpImsCallSession.broadcastForNotRingingMtIfRequired(this.mSipSessionProgress, this.mState, serviceId, this.mCallNumber, this.mContext);
        this.mIsOnTerminated = DBG;
        this.mState = 8;
        if (this.mHasPendingMo) {
            this.mHasPendingMo = false;
            this.mCallErrorState = CallErrorState.DIAL;
        } else {
            this.mCallErrorState = CallErrorState.DISCONNECT;
        }
        if (this.mImsReasonInfo != null) {
            logWithCallId("callTerminated() : get disconnect cause directly from +ESIPCPI", 2);
            notifyCallSessionTerminated(this.mImsReasonInfo);
        } else {
            logWithCallId("callTerminated() : get disconnect cause from AT+CEER", 2);
            Message result = this.mHandler.obtainMessage(EVENT_GET_LAST_CALL_FAIL_CAUSE);
            this.mImsRILAdapter.getLastCallFailCause(this.mPhoneId, result);
        }
        updateCallStateForWifiOffload(this.mState);
    }

    /* loaded from: classes.dex */
    private class MyHandler extends Handler {
        private static final String PAU_END_FLAG_FIELD = ">";
        private static final String PAU_NAME_FIELD = "<name:";
        private static final String PAU_NUMBER_FIELD = "<tel:";
        private static final String PAU_SIP_NUMBER_FIELD = "<sip:";

        public MyHandler(Looper looper) {
            super(looper, null, ImsCallSessionProxy.DBG);
        }

        private String getDisplayNameFromPau(String pau) {
            String value = MtkPhoneConstants.MVNO_TYPE_NONE;
            if (TextUtils.isEmpty(pau)) {
                ImsCallSessionProxy.this.logWithCallId("getDisplayNameFromPau() : pau is null !", 2);
                return value;
            }
            for (int index = 0; index < pau.length(); index++) {
                char aChar = pau.charAt(index);
                if (aChar != '\"') {
                    if (aChar == '<') {
                        break;
                    }
                    value = value + aChar;
                }
            }
            return value;
        }

        private String getFieldValueFromPau(String pau, String field) {
            if (TextUtils.isEmpty(pau) || TextUtils.isEmpty(field) || !pau.contains(field)) {
                return MtkPhoneConstants.MVNO_TYPE_NONE;
            }
            int startIndex = pau.indexOf(field) + field.length();
            int endIndex = pau.indexOf(PAU_END_FLAG_FIELD, startIndex);
            String value = pau.substring(startIndex, endIndex);
            return value;
        }

        private int imsReasonInfoCodeFromRilReasonCode(int causeCode) {
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("imsReasonInfoCodeFromRilReasonCode() : causeCode = " + causeCode, 2);
            switch (causeCode) {
                case 1:
                case 28:
                    return 337;
                case 3:
                    return 333;
                case 6:
                case 65:
                    return 340;
                case 8:
                    return 339;
                case 17:
                    return 338;
                case 18:
                    return 202;
                case 19:
                    return RadioError.OEM_ERROR_2;
                case 21:
                    return 361;
                case 29:
                case 43:
                case 127:
                    return 354;
                case 31:
                    return RadioError.OEM_ERROR_10;
                case 34:
                case 69:
                case 111:
                    return 351;
                case 38:
                case 42:
                case 47:
                case 63:
                case 88:
                    return 352;
                case 41:
                case 44:
                    return 336;
                case 49:
                    return 340;
                case 55:
                case 57:
                    return 332;
                case 58:
                    if (ImsCallSessionProxy.this.mWfoService != null && ImsCallSessionProxy.this.mRatType == 2) {
                        try {
                            if (!ImsCallSessionProxy.this.mWfoService.isWifiConnected()) {
                                ImsCallSessionProxy.this.logWithCallId("imsReasonInfoCodeFromRilReasonCode() : Rat is Wifi, Wifi is disconnected, ret=SIGNAL_LOST", 2);
                                return 61451;
                            }
                        } catch (RemoteException e) {
                            ImsCallSessionProxy.this.logWithCallId("imsReasonInfoCodeFromRilReasonCode() : RemoteException in isWifiConnected()", 5);
                        }
                    }
                    return 354;
                case 68:
                    return 141;
                case 81:
                    return 342;
                case 102:
                    return 335;
                case LastCallFailCause.CALL_BARRED /* 240 */:
                    return 102;
                case LastCallFailCause.FDN_BLOCKED /* 241 */:
                    return LastCallFailCause.FDN_BLOCKED;
                case MtkCallFailCause.IMS_EMERGENCY_REREG /* 380 */:
                    return 61441;
                default:
                    int wfcReason = getWfcDisconnectCause(causeCode);
                    if (wfcReason != -1) {
                        return wfcReason;
                    }
                    int serviceState = ImsCallSessionProxy.this.mImsService.getImsServiceState(ImsCallSessionProxy.this.mPhoneId);
                    ImsCallSessionProxy imsCallSessionProxy2 = ImsCallSessionProxy.this;
                    imsCallSessionProxy2.logWithCallId("imsReasonInfoCodeFromRilReasonCode() : serviceState = " + serviceState, 2);
                    if (serviceState == 3) {
                        return 111;
                    }
                    if (serviceState == 1 && !PhoneNumberUtils.isEmergencyNumber(ImsCallSessionProxy.this.mCallNumber)) {
                        return ImsCallSessionProxy.EVENT_CALL_MODE_CHANGE_INDICATION;
                    }
                    if (causeCode == 16) {
                        return RadioError.OEM_ERROR_10;
                    }
                    return 0;
            }
        }

        private void updateImsReasonInfo(AsyncResult ar) {
            String[] sipMessage = (String[]) ar.result;
            if (sipMessage != null && sipMessage[3] != null && sipMessage[4] != null && ImsCallSessionProxy.this.mCallId != null && sipMessage[0].equals(ImsCallSessionProxy.this.mCallId)) {
                ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
                imsCallSessionProxy.logWithCallId("updateImsReasonInfo() : receive sip method = " + sipMessage[3] + " cause = " + sipMessage[4] + " reason header = " + sipMessage[5], 2);
                SipMessage msg = new SipMessage(sipMessage);
                ImsReasonInfo opReasonInfo = ImsCallSessionProxy.this.mOpImsCallSession.getImsReasonInfo(msg);
                if (opReasonInfo != null) {
                    ImsCallSessionProxy.this.mImsReasonInfo = opReasonInfo;
                    return;
                }
                int code = msg.getCode();
                if (code != 0) {
                    if (code != 183) {
                        if (code != 200) {
                            if (code != 403) {
                                if (code != 503) {
                                    if (code == 603 && msg.getReasonHeader() != null && msg.getReasonHeader().toLowerCase().equals(SipMessage.CALL_DECLINED_HEADER)) {
                                        ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(1404, 0, msg.getReasonHeader());
                                    }
                                } else if (msg.getMethod() == 1 && msg.getReasonHeader() != null && msg.getReasonHeader().length() != 0) {
                                    ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(61444, 0, msg.getReasonHeader());
                                }
                            } else if (msg.getMethod() == 1 && msg.getReasonHeader() != null && msg.getReasonHeader().length() != 0) {
                                if (msg.getReasonHeader().equals(SipMessage.CALL_MAXIMUM_ALREADY_REACHED)) {
                                    ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(1403, 0, msg.getReasonHeader());
                                    return;
                                }
                                ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(61445, 0, msg.getReasonHeader());
                            }
                        } else if (msg.getReasonHeader() != null && msg.getReasonHeader().toLowerCase().equals(SipMessage.CALL_COMPLETED_ELSEWHERE_HEADER)) {
                            ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(1014, 0, msg.getReasonHeader());
                        }
                    } else if (msg.getDir() == 0 && msg.getType() == 1) {
                        ImsCallSessionProxy.this.mSipSessionProgress = ImsCallSessionProxy.DBG;
                    }
                } else if ((msg.getMethod() == 4 && msg.getReasonHeader() != null && msg.getReasonHeader().equals(SipMessage.REMOTE_DECLINE_HEADER)) || ImsCallSessionProxy.this.mDigitsUtil.isRejectedByOthers(msg)) {
                    ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(1404, 0, msg.getReasonHeader());
                } else if (msg.getMethod() == 4 && msg.getReasonHeader() != null && ImsCallSessionProxy.this.isAnsweredElsewhere(msg.getReasonHeader())) {
                    ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(1014, 0, msg.getReasonHeader());
                } else if (msg.getMethod() == 7 && msg.getReasonHeader() != null && msg.getReasonHeader().equals(SipMessage.PULLED_AWAY_HEADER)) {
                    ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(1016, 0, msg.getReasonHeader());
                } else if (msg.getDir() == 0 && msg.getType() == 0 && msg.getMethod() == 1 && msg.getReasonHeader() != null && (msg.getReasonHeader().equals(SipMessage.VIDEO_CALL_NOT_AVAILABLE_HEADER) || msg.getReasonHeader().equals(SipMessage.VIDEO_CALL_UNAVAILABLE_HEADER))) {
                    Rlog.d(ImsCallSessionProxy.LOG_TAG, msg.getReasonHeader());
                    ImsCallSessionProxy imsCallSessionProxy2 = ImsCallSessionProxy.this;
                    imsCallSessionProxy2.logWithCallId("updateImsReasonInfo() : " + msg.getReasonHeader(), 2);
                    ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(MtkImsReasonInfo.CODE_SIP_NOT_ACCEPTABLE_HERE, 0, msg.getReasonHeader());
                } else if (msg.getMethod() == 7 && msg.getDir() == 0 && msg.getReasonHeader() != null && msg.getReasonHeader().toLowerCase().equals(SipMessage.NO_RTP_TIMEOUT_HEADER) && ImsCallSessionProxy.this.shouldNotifyCallDropByBadWifiQuality()) {
                    if (ImsCallSessionProxy.this.getWifiRssi() < ImsCallSessionProxy.this.mBadRssiThreshould) {
                        ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(61442, 0, msg.getReasonHeader());
                        return;
                    }
                    ImsCallSessionProxy.this.mImsReasonInfo = new ImsReasonInfo(61443, 0, msg.getReasonHeader());
                }
            }
        }

        private int getVideoDirectionFromVideoState(int videoState) {
            switch (videoState) {
                case 0:
                    return 0;
                case 1:
                    return 2;
                case 2:
                    return 1;
                case 3:
                    return 3;
                default:
                    return -1;
            }
        }

        private boolean isCallModeUpdated(int callMode, int videoState) {
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("isCallModeUpdated() : callMode:" + callMode + "videoState:" + videoState, 2);
            boolean isChanged = false;
            int oldCallMode = ImsCallSessionProxy.this.mCallProfile.mCallType;
            if (ImsCallSessionProxy.this.mVideoState != videoState) {
                ImsCallSessionProxy.this.mVideoState = videoState;
                ImsCallSessionProxy.this.mCallProfile.mMediaProfile.mVideoDirection = getVideoDirectionFromVideoState(videoState);
                isChanged = ImsCallSessionProxy.DBG;
            }
            ImsCallSessionProxy.this.updateCallType(callMode, ImsCallSessionProxy.this.mVideoState);
            if (ImsCallSessionProxy.this.mCallProfile.mCallType != oldCallMode) {
                isChanged = ImsCallSessionProxy.DBG;
                ImsCallSessionProxy.this.mVTProvider.onUpdateProfile(ImsCallProfile.getVideoStateFromCallType(ImsCallSessionProxy.this.mCallProfile.mCallType));
            }
            if (callMode == 22 || callMode == 24) {
                ImsCallSessionProxy.this.removeRemoteCallVideoCapability();
            }
            if ((callMode == 20 || callMode == 22 || callMode == 24) && isChanged && ImsCallSessionProxy.this.mVTProvider != null) {
                ImsCallSessionProxy imsCallSessionProxy2 = ImsCallSessionProxy.this;
                imsCallSessionProxy2.logWithCallId("isCallModeUpdated() : Start setUIMode old: " + oldCallMode, 2);
                ImsCallSessionProxy.this.mVTProviderUtil.setUIMode(ImsCallSessionProxy.this.mVTProvider, 4);
                ImsCallSessionProxy imsCallSessionProxy3 = ImsCallSessionProxy.this;
                imsCallSessionProxy3.logWithCallId("isCallModeUpdated() : End setUIMode new: " + ImsCallSessionProxy.this.mCallProfile.mCallType, 2);
            }
            return isChanged;
        }

        private void retrieveMergeFail() {
            ImsCallInfo mergeCallInfo = null;
            ImsCallInfo mergedCallInfo = null;
            boolean isNotifyMergeFail = false;
            ImsConferenceHandler.getInstance().modifyParticipantFailed();
            ImsCallSessionProxy.this.logWithCallId("retrieveMergeFail()", 2);
            if (ImsCallSessionProxy.this.mMergeCallId != null && !ImsCallSessionProxy.this.mMergeCallId.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                mergeCallInfo = ImsCallSessionProxy.this.mImsServiceCT.getCallInfo(ImsCallSessionProxy.this.mMergeCallId);
            }
            if (ImsCallSessionProxy.this.mMergedCallId != null && !ImsCallSessionProxy.this.mMergedCallId.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                mergedCallInfo = ImsCallSessionProxy.this.mImsServiceCT.getCallInfo(ImsCallSessionProxy.this.mMergedCallId);
            }
            if (mergeCallInfo != null && mergedCallInfo != null) {
                ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
                imsCallSessionProxy.logWithCallId("retrieveMergeFail() : MergeCallInfo: callId=" + mergeCallInfo.mCallId + " call status=" + mergeCallInfo.mState + " MergedCallInfo: callId=" + mergedCallInfo.mCallId + " call status=" + mergedCallInfo.mState, 2);
                if (mergeCallInfo.mState == ImsCallInfo.State.ACTIVE && mergedCallInfo.mState == ImsCallInfo.State.HOLDING) {
                    isNotifyMergeFail = ImsCallSessionProxy.DBG;
                } else if (mergeCallInfo.mState == ImsCallInfo.State.ACTIVE && mergedCallInfo.mState == ImsCallInfo.State.ACTIVE) {
                    ImsCallSessionProxy.this.logWithCallId("retrieveMergeFail() : two active call and hold merged call", 2);
                    Message result = ImsCallSessionProxy.this.mHandler.obtainMessage(211);
                    ImsCallSessionProxy.this.mImsRILAdapter.hold(Integer.parseInt(ImsCallSessionProxy.this.mMergedCallId), result);
                } else if (mergeCallInfo.mState == ImsCallInfo.State.HOLDING && mergedCallInfo.mState == ImsCallInfo.State.HOLDING) {
                    ImsCallSessionProxy.this.logWithCallId("retrieveMergeFail() : two hold call and resume merge call", 2);
                    Message result2 = ImsCallSessionProxy.this.mHandler.obtainMessage(211);
                    ImsCallSessionProxy.this.mImsRILAdapter.resume(Integer.parseInt(ImsCallSessionProxy.this.mMergeCallId), result2);
                } else {
                    ImsCallSessionProxy.this.logWithCallId("retrieveMergeFail() : swap two calls", 2);
                    Message result3 = ImsCallSessionProxy.this.mHandler.obtainMessage(211);
                    ImsCallSessionProxy.this.mImsRILAdapter.swap(result3);
                }
            } else if (mergeCallInfo == null || mergedCallInfo == null) {
                if (mergeCallInfo != null) {
                    ImsCallSessionProxy.this.logWithCallId("retrieveMergeFail() : only merge call is left", 2);
                    if (mergeCallInfo.mState != ImsCallInfo.State.ACTIVE) {
                        Message result4 = ImsCallSessionProxy.this.mHandler.obtainMessage(211);
                        ImsCallSessionProxy.this.mImsRILAdapter.resume(Integer.parseInt(ImsCallSessionProxy.this.mMergeCallId), result4);
                    } else {
                        isNotifyMergeFail = ImsCallSessionProxy.DBG;
                    }
                } else if (mergedCallInfo != null) {
                    ImsCallSessionProxy.this.logWithCallId("retrieveMergeFail() : only merged call is left", 2);
                    if (mergedCallInfo.mState != ImsCallInfo.State.HOLDING) {
                        Message result5 = ImsCallSessionProxy.this.mHandler.obtainMessage(211);
                        ImsCallSessionProxy.this.mImsRILAdapter.hold(Integer.parseInt(ImsCallSessionProxy.this.mMergedCallId), result5);
                    } else {
                        isNotifyMergeFail = ImsCallSessionProxy.DBG;
                    }
                } else {
                    isNotifyMergeFail = ImsCallSessionProxy.DBG;
                }
            }
            if (isNotifyMergeFail) {
                ImsCallSessionProxy.this.mergeFailed();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ImsReasonInfo imsReasonInfo;
            int callMode = 255;
            ImsCallSessionProxy.this.detailLog("handleMessage() : receive message = " + ImsCallSessionProxy.this.event2String(msg.what));
            ImsConferenceHandler.getInstance();
            int i = msg.what;
            boolean shouldUpdateExtras = ImsCallSessionProxy.DBG;
            boolean hasHoldCall = false;
            if (i != 102) {
                if (i != 201) {
                    switch (i) {
                        case 104:
                            AsyncResult ar = (AsyncResult) msg.obj;
                            handleEconfIndication((String[]) ar.result);
                            return;
                        case ImsCallSessionProxy.EVENT_GET_LAST_CALL_FAIL_CAUSE /* 105 */:
                            AsyncResult ar2 = (AsyncResult) msg.obj;
                            if (ar2.exception != null) {
                                imsReasonInfo = new ImsReasonInfo();
                            } else if (ImsCallSessionProxy.this.mTerminateReason == 102) {
                                ImsCallSessionProxy.this.logWithCallId("handleMessage() : Terminate conference due to mMergeHost is null", 2);
                                imsReasonInfo = new ImsReasonInfo(ImsCallSessionProxy.this.mTerminateReason, 0);
                                ImsCallSessionProxy.this.mTerminateReason = -1;
                            } else if (ImsCallSessionProxy.this.mImsReasonInfo == null) {
                                ImsCallSessionProxy.this.logWithCallId("handleMessage() : get disconnect cause from +CEER", 2);
                                com.android.internal.telephony.LastCallFailCause failCause = (com.android.internal.telephony.LastCallFailCause) ar2.result;
                                int sipCauseCode = imsReasonInfoCodeFromRilReasonCode(failCause.causeCode);
                                if (sipCauseCode == 61441) {
                                    try {
                                        int cat = Integer.valueOf(failCause.vendorCause).intValue();
                                        ImsCallSessionProxy.this.getImsExtCallUtil().setSpecificEccCategory(cat);
                                    } catch (NumberFormatException e) {
                                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : ECC redirect report is not a number: " + failCause.vendorCause, 5);
                                    }
                                }
                                imsReasonInfo = new ImsReasonInfo(sipCauseCode, 0);
                            } else {
                                ImsCallSessionProxy.this.logWithCallId("handleMessage() : get disconnect cause directly from +ESIPCPI", 2);
                                imsReasonInfo = ImsCallSessionProxy.this.mImsReasonInfo;
                            }
                            ImsCallSessionProxy.this.notifyCallSessionTerminated(imsReasonInfo);
                            return;
                        case ImsCallSessionProxy.EVENT_CALL_MODE_CHANGE_INDICATION /* 106 */:
                            AsyncResult ar3 = (AsyncResult) msg.obj;
                            String[] callModeInfo = (String[]) ar3.result;
                            if (callModeInfo != null && callModeInfo[0].equals(ImsCallSessionProxy.this.mCallId)) {
                                int videoState = 3;
                                if (callModeInfo[1] != null && !callModeInfo[1].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                                    callMode = Integer.parseInt(callModeInfo[1]);
                                }
                                if (callModeInfo[2] != null && !callModeInfo[2].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                                    videoState = Integer.parseInt(callModeInfo[2]);
                                }
                                ImsCallSessionProxy.this.logWithCallId("handleMessage() : mode = " + callMode + ", video state = " + videoState, 2);
                                boolean isCallModeChanged = isCallModeUpdated(callMode, videoState);
                                boolean isCallDisplayUpdated = callModeInfo.length >= 5 && handlePauUpdate(callModeInfo[4]);
                                if (callMode != 25) {
                                    shouldUpdateExtras = false;
                                }
                                if (shouldUpdateExtras) {
                                    ImsCallSessionProxy.this.mCallProfile.setCallExtra(ImsCallSessionProxy.VT_PROVIDER_ID, ImsCallSessionProxy.this.mCallId);
                                    ImsCallSessionProxy.this.logWithCallId("handleMessage() : setCallIDAsExtras video_provider_id = " + ImsCallSessionProxy.this.mCallId, 5);
                                }
                                if (isCallModeChanged || isCallDisplayUpdated || shouldUpdateExtras) {
                                    ImsCallSessionProxy.this.notifyCallSessionUpdated();
                                    if (isCallModeChanged) {
                                        ImsCallSessionProxy.this.updateCallStateForWifiOffload(ImsCallSessionProxy.this.mState);
                                    }
                                }
                                notifyMultipartyStateChanged(callMode);
                                return;
                            }
                            return;
                        case ImsCallSessionProxy.EVENT_VIDEO_CAPABILITY_INDICATION /* 107 */:
                            AsyncResult ar4 = (AsyncResult) msg.obj;
                            String[] videoCapabilityInfo = (String[]) ar4.result;
                            int lVideoCapability = 0;
                            int rVideoCapability = 0;
                            if (videoCapabilityInfo != null && videoCapabilityInfo[0].equals(ImsCallSessionProxy.this.mCallId)) {
                                if (videoCapabilityInfo[1] != null && !videoCapabilityInfo[1].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                                    lVideoCapability = Integer.parseInt(videoCapabilityInfo[1]);
                                    if (lVideoCapability == 1) {
                                        ImsCallSessionProxy.this.mLocalCallProfile.mCallType = 4;
                                    } else {
                                        ImsCallSessionProxy.this.mLocalCallProfile.mCallType = 2;
                                    }
                                }
                                if (videoCapabilityInfo[2] != null && !videoCapabilityInfo[2].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                                    rVideoCapability = Integer.parseInt(videoCapabilityInfo[2]);
                                    if (rVideoCapability == 1) {
                                        ImsCallSessionProxy.this.mRemoteCallProfile.mCallType = 4;
                                    } else {
                                        ImsCallSessionProxy.this.mRemoteCallProfile.mCallType = 2;
                                    }
                                }
                                ImsCallSessionProxy.this.correctRemoteVideoCapabilityForVideoConference();
                                if (ImsCallSessionProxy.this.isMultiparty() && !ImsCallSessionProxy.this.isVideoCall(ImsCallSessionProxy.this.mCallProfile)) {
                                    ImsCallSessionProxy.this.removeRemoteCallVideoCapability();
                                }
                                ImsCallSessionProxy.this.logWithCallId("handleMessage() : local video capability = " + lVideoCapability + ", remote video capability = " + rVideoCapability, 2);
                                ImsCallSessionProxy.this.notifyCallSessionUpdated();
                                return;
                            }
                            return;
                        case ImsCallSessionProxy.EVENT_ON_USSI /* 108 */:
                            AsyncResult ar5 = (AsyncResult) msg.obj;
                            String[] eiusd = (String[]) ar5.result;
                            ImsCallSessionProxy.this.logWithCallId("handleMessage() : receive EVENT_ON_USSI: " + eiusd[0] + "," + eiusd[1] + "," + eiusd[2] + "," + eiusd[3] + "," + eiusd[4] + "," + eiusd[5] + "," + eiusd[6] + "," + eiusd[7], 2);
                            int ussiClass = Integer.parseInt(eiusd[0]);
                            int ussiStatus = Integer.parseInt(eiusd[1]);
                            int phoneId = Integer.parseInt(eiusd[7]);
                            int mode = -1;
                            if (phoneId == ImsCallSessionProxy.this.mPhoneId) {
                                if (ussiClass == 1) {
                                    if (ussiStatus == 0 || ussiStatus == 2) {
                                        mode = 0;
                                    }
                                    if (ussiStatus == 1) {
                                        mode = 1;
                                    }
                                } else if (ussiClass == 3 && ussiStatus == 0) {
                                    mode = 0;
                                }
                                if (ImsCallSessionProxy.this.mListener != null) {
                                    ImsCallSessionProxy.this.mListener.callSessionUssdMessageReceived(mode, eiusd[2]);
                                    return;
                                }
                                return;
                            }
                            return;
                        case ImsCallSessionProxy.EVENT_ECT_RESULT_INDICATION /* 109 */:
                            if (!ImsCallSessionProxy.this.mOpImsCallSession.handleDeviceSwitchResult(ImsCallSessionProxy.this.mCallId, ImsCallSessionProxy.this.mMtkImsCallSessionProxy.getServiceImpl(), (AsyncResult) msg.obj)) {
                                handleEctIndication((AsyncResult) msg.obj);
                                return;
                            }
                            return;
                        case ImsCallSessionProxy.EVENT_GTT_CAPABILITY_INDICATION /* 110 */:
                            ImsCallSessionProxy.this.mOpExt.handleGttCapabilityIndication((AsyncResult) msg.obj, ImsCallSessionProxy.this.mMtkImsCallSessionProxy.getServiceImpl(), ImsCallSessionProxy.this.mCallId);
                            boolean isRttEnabledForCallSession = ImsCallSessionProxy.this.mOpExt.isRttEnabledForCallSession();
                            int status = 0;
                            if (isRttEnabledForCallSession) {
                                status = 1;
                            }
                            ImsCallSessionProxy.this.mCallProfile.mMediaProfile.setRttMode(status);
                            ImsCallSessionProxy.this.notifyCallSessionUpdated();
                            return;
                        case 111:
                            handleImsConferenceIndication((AsyncResult) msg.obj);
                            return;
                        default:
                            switch (i) {
                                case ImsCallSessionProxy.EVENT_HOLD_RESULT /* 203 */:
                                    AsyncResult ar6 = (AsyncResult) msg.obj;
                                    ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
                                    if (ar6.exception != null) {
                                        shouldUpdateExtras = false;
                                    }
                                    imsCallSessionProxy.logEventResult(shouldUpdateExtras, "handleMessage() : receive EVENT_HOLD_RESULT");
                                    if (ImsCallSessionProxy.this.mListener != null && ar6.exception != null) {
                                        ImsReasonInfo imsReasonInfo2 = new ImsReasonInfo();
                                        if (ar6.exception instanceof CommandException) {
                                            CommandException.Error err = ar6.exception.getCommandError();
                                            if (err == CommandException.Error.OEM_ERROR_1) {
                                                imsReasonInfo2 = new ImsReasonInfo(148, 0);
                                                ImsCallSessionProxy.this.logWithCallId("Call hold failed by call terminated", 5);
                                            }
                                        }
                                        ImsCallSessionProxy.this.mListener.callSessionHoldFailed(imsReasonInfo2);
                                        return;
                                    }
                                    return;
                                case ImsCallSessionProxy.EVENT_RESUME_RESULT /* 204 */:
                                    AsyncResult ar7 = (AsyncResult) msg.obj;
                                    ImsCallSessionProxy imsCallSessionProxy2 = ImsCallSessionProxy.this;
                                    if (ar7.exception != null) {
                                        shouldUpdateExtras = false;
                                    }
                                    imsCallSessionProxy2.logEventResult(shouldUpdateExtras, "handleMessage() : receive EVENT_RESUME_RESULT");
                                    if (ImsCallSessionProxy.this.mListener != null && ar7.exception != null) {
                                        ImsCallSessionProxy.this.mListener.callSessionResumeFailed(new ImsReasonInfo());
                                        return;
                                    }
                                    return;
                                case ImsCallSessionProxy.EVENT_MERGE_RESULT /* 205 */:
                                    AsyncResult ar8 = (AsyncResult) msg.obj;
                                    ImsCallSessionProxy imsCallSessionProxy3 = ImsCallSessionProxy.this;
                                    if (ar8.exception != null) {
                                        shouldUpdateExtras = false;
                                    }
                                    imsCallSessionProxy3.logEventResult(shouldUpdateExtras, "handleMessage() : receive EVENT_MERGE_RESULT");
                                    if (ImsCallSessionProxy.this.mListener != null && ar8.exception != null) {
                                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : ConfCreated failed", 2);
                                        retrieveMergeFail();
                                        return;
                                    }
                                    return;
                                case ImsCallSessionProxy.EVENT_ADD_CONFERENCE_RESULT /* 206 */:
                                    AsyncResult ar9 = (AsyncResult) msg.obj;
                                    if (ImsCallSessionProxy.this.mIsMerging) {
                                        if (ar9.exception != null) {
                                            retrieveMergeFail();
                                            return;
                                        }
                                        return;
                                    } else if (!ImsCallSessionProxy.this.mIsOnTerminated) {
                                        if (ar9.exception == null) {
                                            ImsCallSessionProxy.this.mIsAddRemoveParticipantsCommandOK = ImsCallSessionProxy.DBG;
                                        } else {
                                            ImsConferenceHandler.getInstance().modifyParticipantFailed();
                                        }
                                        ImsCallSessionProxy.access$5708(ImsCallSessionProxy.this);
                                        if (ImsCallSessionProxy.this.mPendingParticipantInfoIndex < ImsCallSessionProxy.this.mPendingParticipantStatistics) {
                                            Message result = ImsCallSessionProxy.this.mHandler.obtainMessage(ImsCallSessionProxy.EVENT_ADD_CONFERENCE_RESULT);
                                            ImsCallSessionProxy.this.mImsRILAdapter.inviteParticipants(Integer.parseInt(ImsCallSessionProxy.this.mCallId), ImsCallSessionProxy.this.mPendingParticipantInfo[ImsCallSessionProxy.this.mPendingParticipantInfoIndex], result);
                                            return;
                                        }
                                        if (ImsCallSessionProxy.this.mListener != null) {
                                            if (!ImsCallSessionProxy.this.mIsAddRemoveParticipantsCommandOK) {
                                                ImsCallSessionProxy.this.mListener.callSessionInviteParticipantsRequestFailed(new ImsReasonInfo());
                                            } else {
                                                ImsCallSessionProxy.this.mListener.callSessionInviteParticipantsRequestDelivered();
                                            }
                                        }
                                        ImsCallSessionProxy.this.mIsAddRemoveParticipantsCommandOK = false;
                                        return;
                                    } else {
                                        return;
                                    }
                                case ImsCallSessionProxy.EVENT_REMOVE_CONFERENCE_RESULT /* 207 */:
                                    AsyncResult ar10 = (AsyncResult) msg.obj;
                                    ImsCallSessionProxy.this.logEventResult(ar10.exception == null, "receive EVENT_REMOVE_CONFERENCE_RESULT");
                                    if (!ImsCallSessionProxy.this.mIsOnTerminated) {
                                        if (ar10.exception == null) {
                                            ImsCallSessionProxy.this.mIsAddRemoveParticipantsCommandOK = ImsCallSessionProxy.DBG;
                                            ImsConferenceHandler.getInstance().modifyParticipantComplete();
                                        } else {
                                            ImsConferenceHandler.getInstance().modifyParticipantFailed();
                                        }
                                        ImsCallSessionProxy.access$5708(ImsCallSessionProxy.this);
                                        if (ImsCallSessionProxy.this.mPendingParticipantInfoIndex < ImsCallSessionProxy.this.mPendingParticipantStatistics) {
                                            Message result2 = ImsCallSessionProxy.this.mHandler.obtainMessage(ImsCallSessionProxy.EVENT_ADD_CONFERENCE_RESULT);
                                            ImsCallSessionProxy.this.mImsRILAdapter.removeParticipants(Integer.parseInt(ImsCallSessionProxy.this.mCallId), ImsCallSessionProxy.this.mPendingParticipantInfo[ImsCallSessionProxy.this.mPendingParticipantInfoIndex], result2);
                                            return;
                                        }
                                        if (ImsCallSessionProxy.this.mListener != null) {
                                            if (!ImsCallSessionProxy.this.mIsAddRemoveParticipantsCommandOK) {
                                                ImsCallSessionProxy.this.mListener.callSessionRemoveParticipantsRequestFailed(new ImsReasonInfo());
                                            } else {
                                                ImsCallSessionProxy.this.mListener.callSessionRemoveParticipantsRequestDelivered();
                                            }
                                        }
                                        ImsCallSessionProxy.this.mIsAddRemoveParticipantsCommandOK = false;
                                        return;
                                    }
                                    return;
                                case ImsCallSessionProxy.EVENT_SIP_CODE_INDICATION /* 208 */:
                                    updateImsReasonInfo((AsyncResult) msg.obj);
                                    return;
                                case ImsCallSessionProxy.EVENT_DIAL_CONFERENCE_RESULT /* 209 */:
                                case ImsCallSessionProxy.EVENT_PULL_CALL_RESULT /* 216 */:
                                case ImsCallSessionProxy.EVENT_DIAL_FROM_RESULT /* 221 */:
                                    break;
                                case ImsCallSessionProxy.EVENT_SWAP_BEFORE_MERGE_RESULT /* 210 */:
                                    AsyncResult ar11 = (AsyncResult) msg.obj;
                                    ImsCallSessionProxy imsCallSessionProxy4 = ImsCallSessionProxy.this;
                                    if (ar11.exception != null) {
                                        shouldUpdateExtras = false;
                                    }
                                    imsCallSessionProxy4.logEventResult(shouldUpdateExtras, "handleMessage() : receive EVENT_SWAP_BEFORE_MERGE_RESULT");
                                    if (ar11.exception != null) {
                                        retrieveMergeFail();
                                        return;
                                    }
                                    ImsCallInfo myCallInfo = ImsCallSessionProxy.this.mImsServiceCT.getCallInfo(ImsCallSessionProxy.this.mCallId);
                                    ImsCallInfo beMergedCallInfo = ImsCallSessionProxy.this.mImsServiceCT.getCallInfo(ImsCallSessionProxy.this.mMergedCallId);
                                    if (beMergedCallInfo == null) {
                                        retrieveMergeFail();
                                        return;
                                    } else if (myCallInfo.mIsConference) {
                                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : myCallI is conference, merge normal call", 2);
                                        Message result3 = ImsCallSessionProxy.this.mHandler.obtainMessage(ImsCallSessionProxy.EVENT_ADD_CONFERENCE_RESULT);
                                        ImsCallSessionProxy.this.mImsRILAdapter.inviteParticipantsByCallId(Integer.parseInt(ImsCallSessionProxy.this.mCallId), beMergedCallInfo.mCallId, result3);
                                        return;
                                    } else {
                                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : bg conference is foreground now, merge normal call", 2);
                                        Message result4 = ImsCallSessionProxy.this.mHandler.obtainMessage(ImsCallSessionProxy.EVENT_ADD_CONFERENCE_RESULT);
                                        ImsCallSessionProxy.this.mImsRILAdapter.inviteParticipantsByCallId(Integer.parseInt(beMergedCallInfo.mCallId), myCallInfo.mCallId, result4);
                                        return;
                                    }
                                case 211:
                                    ImsCallSessionProxy.this.mergeFailed();
                                    return;
                                case ImsCallSessionProxy.EVENT_DTMF_DONE /* 212 */:
                                    if (!(ImsCallSessionProxy.this.mDtmfTarget == null || ImsCallSessionProxy.this.mDtmfMsg == null)) {
                                        try {
                                            ImsCallSessionProxy.this.mDtmfTarget.send(ImsCallSessionProxy.this.mDtmfMsg);
                                        } catch (RemoteException e2) {
                                            ImsCallSessionProxy.this.logWithCallId("handleMessage() : RemoteException for DTMF", 5);
                                        }
                                    }
                                    ImsCallSessionProxy.this.mDtmfTarget = null;
                                    ImsCallSessionProxy.this.mDtmfMsg = null;
                                    return;
                                case ImsCallSessionProxy.EVENT_SEND_USSI_COMPLETE /* 213 */:
                                    AsyncResult ar12 = (AsyncResult) msg.obj;
                                    if (ImsCallSessionProxy.this.mListener == null) {
                                        return;
                                    }
                                    if (msg.arg1 == 1) {
                                        if (ar12 == null || ar12.exception == null) {
                                            ImsCallSessionProxy.this.mListener.callSessionInitiated(ImsCallSessionProxy.this.mCallProfile);
                                            return;
                                        } else {
                                            ImsCallSessionProxy.this.mListener.callSessionInitiatedFailed(new ImsReasonInfo());
                                            return;
                                        }
                                    } else if (ar12 != null && ar12.exception != null) {
                                        ImsCallSessionProxy.this.mListener.callSessionTerminated(new ImsReasonInfo());
                                        return;
                                    } else {
                                        return;
                                    }
                                case ImsCallSessionProxy.EVENT_CANCEL_USSI_COMPLETE /* 214 */:
                                    if (ImsCallSessionProxy.this.mListener != null) {
                                        ImsCallSessionProxy.this.mListener.callSessionTerminated(new ImsReasonInfo());
                                        return;
                                    }
                                    return;
                                case ImsCallSessionProxy.EVENT_ECT_RESULT /* 215 */:
                                    handleEctResult((AsyncResult) msg.obj);
                                    return;
                                case ImsCallSessionProxy.EVENT_RADIO_NOT_AVAILABLE /* 217 */:
                                    ImsCallSessionProxy.this.mRadioUnavailable = ImsCallSessionProxy.DBG;
                                    if (ImsCallSessionProxy.this.mIsOnTerminated) {
                                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : EVENT_RADIO_NOT_AVAILABLE, ignore", 2);
                                        return;
                                    }
                                    if (ImsCallSessionProxy.this.mHasPendingMo) {
                                        ImsCallSessionProxy.this.mHasPendingMo = false;
                                        ImsCallSessionProxy.this.mCallErrorState = CallErrorState.DIAL;
                                    } else {
                                        ImsCallSessionProxy.this.mCallErrorState = CallErrorState.DISCONNECT;
                                    }
                                    ImsCallSessionProxy.this.notifyCallSessionTerminated(new ImsReasonInfo(ImsCallSessionProxy.EVENT_CALL_MODE_CHANGE_INDICATION, 0));
                                    return;
                                case ImsCallSessionProxy.EVENT_RTT_TEXT_RECEIVE_INDICATION /* 218 */:
                                    ImsCallSessionProxy.this.mOpExt.handleRttTextReceive((AsyncResult) msg.obj, ImsCallSessionProxy.this.mCallId, ImsCallSessionProxy.this.mListener);
                                    return;
                                case ImsCallSessionProxy.EVENT_RTT_MODIFY_RESPONSE /* 219 */:
                                    ImsCallSessionProxy.this.mOpExt.handleRttModifyResponse((AsyncResult) msg.obj, ImsCallSessionProxy.this.mCallId, ImsCallSessionProxy.this.mListener);
                                    return;
                                case ImsCallSessionProxy.EVENT_RTT_MODIFY_REQUEST_RECEIVE /* 220 */:
                                    ImsCallSessionProxy.this.mOpExt.handleRttModifyRequestReceive((AsyncResult) msg.obj, ImsCallSessionProxy.this.getServiceImpl(), ImsCallSessionProxy.this.mCallId, ImsCallSessionProxy.this.mListener, ImsCallSessionProxy.this.mImsRILAdapter);
                                    return;
                                case ImsCallSessionProxy.EVENT_DEVICE_SWITCH_REPONSE /* 222 */:
                                    ImsCallSessionProxy.this.mOpImsCallSession.handleDeviceSwitchResponse(ImsCallSessionProxy.this.mMtkImsCallSessionProxy.getServiceImpl(), (AsyncResult) msg.obj);
                                    return;
                                case ImsCallSessionProxy.EVENT_SPEECH_CODEC_INFO /* 223 */:
                                    ImsCallSessionProxy.this.handleSpeechCodecInfo((AsyncResult) msg.obj);
                                    return;
                                case ImsCallSessionProxy.EVENT_REDIAL_ECC_INDICATION /* 224 */:
                                    ImsCallSessionProxy.this.handleRedialEccIndication((AsyncResult) msg.obj);
                                    return;
                                default:
                                    ImsCallSessionProxy.this.logWithCallId("handleMessage() : unknown messahe, ignore", 2);
                                    return;
                            }
                    }
                }
                handleDialResult((AsyncResult) msg.obj);
                return;
            }
            AsyncResult ar13 = (AsyncResult) msg.obj;
            String[] callInfo = (String[]) ar13.result;
            int msgType = 0;
            if (callInfo[1] != null && !callInfo[1].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                msgType = Integer.parseInt(callInfo[1]);
            }
            if (callInfo[5] != null && !callInfo[5].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                callMode = Integer.parseInt(callInfo[5]);
            }
            if (ImsCallSessionProxy.this.mCallId != null && ImsCallSessionProxy.this.mCallId.equals(callInfo[0])) {
                ImsCallSessionProxy.this.mImsServiceCT.processCallInfoIndication(callInfo, ImsCallSessionProxy.this, ImsCallSessionProxy.this.mCallProfile);
            }
            if (!ImsCallSessionProxy.this.mIsMerging || callInfo[0].equals(ImsCallSessionProxy.this.mCallId)) {
                if (ImsCallSessionProxy.this.mCallId != null && ImsCallSessionProxy.this.mCallId.equals(callInfo[0])) {
                    if (TextUtils.isEmpty(ImsCallSessionProxy.this.mCallNumber)) {
                        ImsCallSessionProxy.this.mCallNumber = callInfo[6];
                    }
                    boolean isCallDisplayUpdated2 = updateCallDisplayFromNumberOrPau(ImsCallSessionProxy.this.mCallNumber, callInfo[8]);
                    updateOIR(ImsCallSessionProxy.this.mCallNumber, callInfo[8]);
                    int serviceId = ImsCallSessionProxy.this.mImsService.mapPhoneIdToServiceId(ImsCallSessionProxy.this.mPhoneId);
                    if (msgType == 0) {
                        ImsCallSessionProxy.this.mState = 3;
                        if (callInfo[5] != null && !callInfo[5].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                            callMode = Integer.parseInt(callInfo[5]);
                        }
                        ImsCallSessionProxy.this.updateCallType(callMode, ImsCallSessionProxy.this.mVideoState);
                        ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                        updateMultipartyState(callMode, ImsCallSessionProxy.DBG);
                        ImsCallSessionProxy.this.detailLog("handleMessage() : mCallNumber = " + ImsCallSessionProxy.this.sensitiveEncode(ImsCallSessionProxy.this.mCallNumber));
                        Intent intent = new Intent(ImsManager.ACTION_IMS_INCOMING_CALL);
                        intent.putExtra(ImsManager.EXTRA_CALL_ID, ImsCallSessionProxy.this.mCallId);
                        intent.putExtra(MtkImsConstants.EXTRA_DIAL_STRING, callInfo[6]);
                        intent.putExtra(ImsManager.EXTRA_SERVICE_ID, serviceId);
                        ImsCallSessionProxy.this.mOpExt.checkIncomingRttCallType(intent);
                        Bundle extras = new Bundle();
                        extras.putString(ImsManager.EXTRA_CALL_ID, ImsCallSessionProxy.this.mCallId);
                        extras.putString(MtkImsConstants.EXTRA_DIAL_STRING, callInfo[6]);
                        extras.putInt(ImsManager.EXTRA_SERVICE_ID, serviceId);
                        ImsCallSessionProxy.this.mImsService.notifyIncomingCallSession(ImsCallSessionProxy.this.mPhoneId, ImsCallSessionProxy.this.getServiceImpl(), extras);
                    } else if (msgType == 2) {
                        int isIbt = ImsCallSessionProxy.this.updateIsIbt(callInfo);
                        updateMultipartyState(callMode, false);
                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : mCallNumber " + ImsCallSessionProxy.this.sensitiveEncode(ImsCallSessionProxy.this.mCallNumber) + " isIbt = " + isIbt, 2);
                        ImsCallSessionProxy.this.updateVideoRingtone(callMode, isIbt);
                        ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                        if (ImsCallSessionProxy.this.mState != 7) {
                            if (ImsCallSessionProxy.this.mListener != null) {
                                ImsCallSessionProxy.this.mListener.callSessionProgressing(ImsCallSessionProxy.this.mCallProfile.mMediaProfile);
                            }
                            ImsCallSessionProxy.this.mHasPendingMo = false;
                        }
                    } else if (msgType != 6) {
                        switch (msgType) {
                            case 131:
                                ImsCallSessionProxy.this.logWithCallId("handleMessage() : mCallNumber = " + ImsCallSessionProxy.this.sensitiveEncode(ImsCallSessionProxy.this.mCallNumber), 2);
                                ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                                if (ImsCallSessionProxy.this.mListener != null && ImsCallSessionProxy.this.mState != 7) {
                                    if (!ImsCallSessionProxy.this.mIsHideHoldEventDuringMerging && !ImsCallSessionProxy.this.mIsHideHoldDuringECT && !ImsCallSessionProxy.this.mOpImsCallSession.isDeviceSwitching()) {
                                        ImsCallSessionProxy.this.mListener.callSessionHeld(ImsCallSessionProxy.this.mCallProfile);
                                        return;
                                    } else if (isCallDisplayUpdated2) {
                                        ImsCallSessionProxy.this.notifyCallSessionUpdated();
                                        return;
                                    } else {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            case ImsCallSessionProxy.CALL_INFO_MSG_TYPE_ACTIVE /* 132 */:
                                ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                                if (ImsCallSessionProxy.this.mListener == null) {
                                    return;
                                }
                                if (ImsCallSessionProxy.this.mState == 4) {
                                    ImsCallSessionProxy.this.logWithCallId("handleMessage() : mCallNumber = " + ImsCallSessionProxy.this.sensitiveEncode(ImsCallSessionProxy.this.mCallNumber), 2);
                                    ImsCallSessionProxy.this.mListener.callSessionResumed(ImsCallSessionProxy.this.mCallProfile);
                                    if (ImsCallSessionProxy.this.mVTProvider != null) {
                                        ImsCallSessionProxy.this.mVTProvider.onReceiveCallSessionEvent(ImsCallSessionProxy.CALL_INFO_MSG_TYPE_ACTIVE);
                                        return;
                                    }
                                    return;
                                } else if (isCallDisplayUpdated2) {
                                    ImsCallSessionProxy.this.notifyCallSessionUpdated();
                                    return;
                                } else {
                                    return;
                                }
                            case ImsCallSessionProxy.CALL_INFO_MSG_TYPE_DISCONNECTED /* 133 */:
                                ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                                if (ImsCallSessionProxy.this.mImsServiceCT.getCallInfo(ImsCallInfo.State.HOLDING) != null) {
                                    hasHoldCall = ImsCallSessionProxy.DBG;
                                }
                                if (!ImsCallSessionProxy.this.mHasPendingMo || !ImsCallSessionProxy.this.mOpImsCallSession.handleCallStartFailed(ImsCallSessionProxy.this.mMtkImsCallSessionProxy.getServiceImpl(), ImsCallSessionProxy.this.mImsRILAdapter, hasHoldCall)) {
                                    ImsCallSessionProxy.this.callTerminated();
                                    return;
                                }
                                return;
                            default:
                                switch (msgType) {
                                    case ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_HOLD /* 135 */:
                                        ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                                        ImsCallSessionProxy.this.updateIsIbt(callInfo);
                                        ImsCallSessionProxy.this.notifyRemoteHeld();
                                        if (isCallDisplayUpdated2) {
                                            ImsCallSessionProxy.this.notifyCallSessionUpdated();
                                            return;
                                        }
                                        return;
                                    case ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_RESUME /* 136 */:
                                        ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                                        ImsCallSessionProxy.this.updateIsIbt(callInfo);
                                        ImsCallSessionProxy.this.notifyRemoteResumed();
                                        if (isCallDisplayUpdated2) {
                                            ImsCallSessionProxy.this.notifyCallSessionUpdated();
                                            return;
                                        }
                                        return;
                                    case 137:
                                        ImsCallSessionProxy.this.mOpExt.handleRttECCRedialEvent(ImsCallSessionProxy.this.mMtkImsCallSessionProxy.getServiceImpl());
                                        return;
                                    default:
                                        return;
                                }
                        }
                    } else {
                        ImsCallSessionProxy.this.mState = 4;
                        ImsCallSessionProxy.this.mCallProfile.mMediaProfile.mAudioDirection = 3;
                        updateMultipartyState(callMode, false);
                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : mCallNumber = " + ImsCallSessionProxy.this.sensitiveEncode(ImsCallSessionProxy.this.mCallNumber), 2);
                        if (ImsCallSessionProxy.this.mState != 7) {
                            if (ImsCallSessionProxy.this.mListener != null) {
                                if (ImsCallSessionProxy.this.mHasPendingMo) {
                                    ImsCallSessionProxy.this.mListener.callSessionProgressing(ImsCallSessionProxy.this.mCallProfile.mMediaProfile);
                                }
                                ImsCallSessionProxy.this.mListener.callSessionInitiated(ImsCallSessionProxy.this.mCallProfile);
                            }
                            ImsCallSessionProxy.this.mHasPendingMo = false;
                        }
                        boolean notifyCallSessionUpdate = false;
                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : update call type = " + callMode, 2);
                        int oldCallType = ImsCallSessionProxy.this.mCallProfile.mCallType;
                        ImsCallSessionProxy.this.updateCallType(callMode, ImsCallSessionProxy.this.mVideoState);
                        ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                        if (ImsCallSessionProxy.this.mCallProfile.mCallType != oldCallType) {
                            notifyCallSessionUpdate = ImsCallSessionProxy.DBG;
                        }
                        if (ImsCallSessionProxy.this.mListener != null && notifyCallSessionUpdate) {
                            ImsCallSessionProxy.this.mListener.callSessionUpdated(ImsCallSessionProxy.this.mCallProfile);
                        }
                        ImsCallSessionProxy.this.updateCallStateForWifiOffload(ImsCallSessionProxy.this.mState);
                    }
                } else if (ImsCallSessionProxy.this.mCallId == null && msgType == 130) {
                    ImsCallSessionProxy.this.logWithCallId("handleMessage() : receive 130 URC, assign call_id = " + callInfo[0], 2);
                    ImsCallSessionProxy.this.mImsServiceCT.processCallInfoIndication(callInfo, ImsCallSessionProxy.this, ImsCallSessionProxy.this.mCallProfile);
                    boolean isCallDisplayUpdated3 = updateCallDisplayFromNumberOrPau(ImsCallSessionProxy.this.mCallNumber, callInfo[8]);
                    updateOIR(ImsCallSessionProxy.this.mCallNumber, callInfo[8]);
                    ImsCallSessionProxy.this.mState = 3;
                    ImsCallSessionProxy.this.mCallId = callInfo[0];
                    ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                    if (ImsCallSessionProxy.this.mVTProvider != null) {
                        ImsCallSessionProxy.this.mVTProviderUtil.bind(ImsCallSessionProxy.this.mVTProvider, Integer.parseInt(ImsCallSessionProxy.this.mCallId), ImsCallSessionProxy.this.mPhoneId);
                    }
                    if (ImsCallSessionProxy.this.mIsOneKeyConf) {
                        ImsConferenceHandler.getInstance().startConference(ImsCallSessionProxy.this.mContext, new ConferenceEventListener(), callInfo[0], ImsCallSessionProxy.this.mPhoneId);
                        ImsConferenceHandler.getInstance().addLocalCache(ImsCallSessionProxy.this.mOneKeyparticipants);
                        ImsCallSessionProxy.this.mOneKeyparticipants = null;
                    }
                    if (isCallDisplayUpdated3) {
                        ImsCallSessionProxy.this.notifyCallSessionUpdated();
                    }
                    ImsCallSessionProxy.this.updateCallStateForWifiOffload(3);
                    if (ImsCallSessionProxy.this.mHasPendingDisconnect) {
                        ImsCallSessionProxy.this.mHasPendingDisconnect = false;
                        ImsCallSessionProxy.this.terminate(ImsCallSessionProxy.this.mPendingDisconnectReason);
                    }
                }
            } else if (msgType == 130) {
                ImsCallSessionProxy.this.logWithCallId("handleMessage() : conference assign call id = " + callInfo[0], 2);
                ImsCallProfile imsCallProfile = new ImsCallProfile();
                ImsCallSessionProxy.this.mDigitsUtil.updateCallExtras(imsCallProfile, ImsCallSessionProxy.this.mCallProfile);
                if (callInfo[5] != null && !callInfo[5].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                    callMode = Integer.parseInt(callInfo[5]);
                }
                ImsCallSessionProxy.this.updateCallType(callMode, ImsCallSessionProxy.this.mVideoState);
                ImsCallSessionProxy.this.sendCallEventWithRat(msgType);
                if (callInfo[6] == null || callInfo[6].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                    imsCallProfile.setCallExtraInt("oir", 2);
                } else {
                    imsCallProfile.setCallExtra("oi", callInfo[6]);
                    imsCallProfile.setCallExtra("remote_uri", callInfo[6]);
                    imsCallProfile.setCallExtraInt("oir", 2);
                }
                ImsCallSessionProxy.this.createConferenceSession(imsCallProfile, callInfo[0]);
                if (ImsCallSessionProxy.this.mMtkConfSessionProxy != null) {
                    ImsCallSessionProxy.this.mImsServiceCT.processCallInfoIndication(callInfo, ImsCallSessionProxy.this.mMtkConfSessionProxy.getAospCallSessionProxy(), imsCallProfile);
                } else if (ImsCallSessionProxy.this.mConfSessionProxy != null) {
                    ImsCallSessionProxy.this.mImsServiceCT.processCallInfoIndication(callInfo, ImsCallSessionProxy.this.mConfSessionProxy, imsCallProfile);
                } else {
                    ImsCallSessionProxy.this.logWithCallId("handleMessage() : conference not create callSession", 2);
                }
            }
        }

        private void handleEconfIndication(String[] result) {
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("handleEconfIndication() : receive EVENT_ECONF_RESULT_INDICATION mCallId:" + ImsCallSessionProxy.this.mCallId + ", conf_call_id:" + result[0] + "joined_call_id:" + result[5], 2);
            if (ImsCallSessionProxy.this.mCallId != null && ImsCallSessionProxy.this.mCallId.equals(result[5]) && result[3].equals("0")) {
                ImsCallSessionProxy.this.mState = 7;
            }
            if (ImsCallSessionProxy.this.mIsMerging) {
                if (ImsCallSessionProxy.this.mNormalCallsMerge) {
                    ImsCallSessionProxy.access$7308(ImsCallSessionProxy.this);
                    if (result[3].equals("0")) {
                        ImsCallSessionProxy.this.mThreeWayMergeSucceeded = ImsCallSessionProxy.DBG;
                    }
                    if (ImsCallSessionProxy.this.mEconfCount == 2) {
                        String ret = ImsCallSessionProxy.this.mThreeWayMergeSucceeded ? " successful" : " failed";
                        ImsCallSessionProxy imsCallSessionProxy2 = ImsCallSessionProxy.this;
                        imsCallSessionProxy2.logWithCallId("handleEconfIndication() : 3 way conference merge result is" + ret, 2);
                        if (!ImsCallSessionProxy.this.mThreeWayMergeSucceeded || !ImsConferenceHandler.getInstance().isConferenceActive()) {
                            retrieveMergeFail();
                            int confCallId = Integer.parseInt(result[0]);
                            ImsCallSessionProxy.this.mImsRILAdapter.terminate(confCallId);
                        } else {
                            ImsCallSessionProxy.this.mergeCompleted();
                        }
                        ImsCallSessionProxy.this.mEconfCount = 0;
                        ImsCallSessionProxy.this.mNormalCallsMerge = false;
                        ImsCallSessionProxy.this.mThreeWayMergeSucceeded = false;
                    }
                } else if (result[3].equals("0")) {
                    ImsCallSessionProxy.this.logWithCallId("handleEconfIndication() : ConfCreated successed", 2);
                    ImsCallSessionProxy.this.mergeCompleted();
                } else {
                    ImsCallSessionProxy.this.logWithCallId("handleEconfIndication() : ConfCreated failed", 2);
                    retrieveMergeFail();
                }
            }
        }

        private void handleEctResult(AsyncResult ar) {
            if (ar == null || ImsCallSessionProxy.this.mListener == null) {
                ImsCallSessionProxy.this.logWithCallId("handleEctResult() : ar or mListener is null", 2);
            } else if (ar.exception != null) {
                ImsCallSessionProxy.this.logWithCallId("handleEctResult() : explicit call transfer failed!!", 2);
                ImsCallSessionProxy.this.mIsHideHoldDuringECT = false;
                if (ImsCallSessionProxy.this.mMtkImsCallSessionProxy != null) {
                    ImsCallSessionProxy.this.mMtkImsCallSessionProxy.notifyTransferFailed(new ImsReasonInfo());
                }
            } else {
                ImsCallSessionProxy.this.logWithCallId("handleEctResult() : explicit call transfer succeeded!!", 2);
            }
        }

        private void handleEctIndication(AsyncResult ar) {
            ImsCallSessionProxy.this.logWithCallId("handleEctIndication()", 2);
            ImsCallSessionProxy.this.mIsHideHoldDuringECT = false;
            if (ar == null || ImsCallSessionProxy.this.mMtkImsCallSessionProxy == null) {
                ImsCallSessionProxy.this.logWithCallId("handleEctIndication() : ar or mMtkImsCallSessionProxy is null", 2);
                return;
            }
            int[] result = (int[]) ar.result;
            if (ImsCallSessionProxy.this.mCallId != null && result[0] == Integer.parseInt(ImsCallSessionProxy.this.mCallId)) {
                if (result[1] == 0) {
                    ImsCallSessionProxy.this.mMtkImsCallSessionProxy.notifyTransferFailed(new ImsReasonInfo());
                } else if (result[1] == 1) {
                    ImsCallSessionProxy.this.mMtkImsCallSessionProxy.notifyTransferred();
                }
                if (!(ImsCallSessionProxy.this.mDtmfTarget == null || ImsCallSessionProxy.this.mEctMsg == null)) {
                    ImsCallSessionProxy.this.mEctMsg.arg1 = result[1];
                    try {
                        ImsCallSessionProxy.this.mEctTarget.send(ImsCallSessionProxy.this.mEctMsg);
                    } catch (RemoteException e) {
                        ImsCallSessionProxy.this.logWithCallId("handleMessage() : RemoteException for ECT", 5);
                    }
                }
                ImsCallSessionProxy.this.mEctTarget = null;
                ImsCallSessionProxy.this.mEctMsg = null;
            }
        }

        private void handleDialResult(AsyncResult ar) {
            if (ar == null || ImsCallSessionProxy.this.mListener == null) {
                ImsCallSessionProxy.this.logWithCallId("handleDialResult() : ar or mListener is null", 2);
                return;
            }
            ImsCallSessionProxy.this.logEventResult(ar.exception == null ? ImsCallSessionProxy.DBG : false, "handleDialResult()");
            if (ar.exception != null) {
                Message result = ImsCallSessionProxy.this.mHandler.obtainMessage(ImsCallSessionProxy.EVENT_GET_LAST_CALL_FAIL_CAUSE);
                ImsCallSessionProxy.this.mCallErrorState = CallErrorState.DIAL;
                ImsCallSessionProxy.this.mImsRILAdapter.getLastCallFailCause(ImsCallSessionProxy.this.mPhoneId, result);
                ImsCallSessionProxy.this.mHasPendingMo = false;
            }
        }

        private void handleImsConferenceIndication(AsyncResult ar) {
            if (ar == null || ImsCallSessionProxy.this.mListener == null) {
                ImsCallSessionProxy.this.logWithCallId("handleImsConferenceIndication() : ar or mListener is null", 2);
                return;
            }
            ArrayList<User> result = (ArrayList) ar.result;
            int activeParticipantsNum = 0;
            Iterator<User> it = result.iterator();
            while (it.hasNext()) {
                User user = it.next();
                if (!isSelfAddress(user.mUserAddr) && !ConferenceCallMessageHandler.STATUS_DISCONNECTED.equals(user.mStatus)) {
                    activeParticipantsNum++;
                }
            }
            boolean shouldAutoTerminateConference = shouldAutoTerminateEmptyConf();
            boolean shouldUpdateConference = false;
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("handleImsConferenceIndication() activeParticipantsNum:" + activeParticipantsNum + " mHaveUpdateConferenceWithMember:" + ImsCallSessionProxy.this.mHaveUpdateConferenceWithMember + " shouldAutoTerminateConference:" + shouldAutoTerminateConference, 2);
            if (!shouldAutoTerminateConference) {
                shouldUpdateConference = ImsCallSessionProxy.DBG;
            } else if (activeParticipantsNum > 0) {
                shouldUpdateConference = ImsCallSessionProxy.DBG;
                if (!ImsCallSessionProxy.this.mHaveUpdateConferenceWithMember) {
                    ImsCallSessionProxy.this.mHaveUpdateConferenceWithMember = ImsCallSessionProxy.DBG;
                }
            } else if (!ImsCallSessionProxy.this.mHaveUpdateConferenceWithMember) {
                shouldUpdateConference = ImsCallSessionProxy.DBG;
            }
            if (shouldUpdateConference) {
                ImsConferenceState confState = convertToImsConferenceState(result);
                ImsCallSessionProxy.this.mListener.callSessionConferenceStateUpdated(confState);
                return;
            }
            ImsCallSessionProxy.this.logWithCallId("handleImsConferenceIndication() : auto terminate", 2);
            ImsCallSessionProxy.this.terminate(0);
        }

        private ImsConferenceState convertToImsConferenceState(ArrayList<User> users) {
            ImsConferenceState confState = new ImsConferenceState();
            int index = 0;
            for (int i = 0; i < users.size(); i++) {
                Bundle userInfo = new Bundle();
                String userAddr = users.get(i).mUserAddr;
                userInfo.putString("user", userAddr);
                userInfo.putString("display-text", users.get(i).mDisplayText);
                userInfo.putString("endpoint", users.get(i).mEndPoint);
                userInfo.putString("status", users.get(i).mStatus);
                userInfo.putString(ImsCallSessionProxy.USER_ENTITY, users.get(i).mEntity);
                if (userAddr == null || userAddr.trim().isEmpty()) {
                    confState.mParticipants.put(Integer.toString(index), userInfo);
                    index++;
                } else {
                    confState.mParticipants.put(userAddr, userInfo);
                }
            }
            ImsCallSessionProxy.this.mParticipants = confState.mParticipants;
            return confState;
        }

        private boolean shouldAutoTerminateEmptyConf() {
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("shouldTerminate:" + ImsCallSessionProxy.DBG, 2);
            return ImsCallSessionProxy.DBG;
        }

        private boolean isSelfAddress(String addr) {
            if (ImsCallSessionProxy.this.mSelfAddressList == null) {
                ImsCallSessionProxy.this.mSelfAddressList = ImsCallSessionProxy.this.mImsServiceCT.getSelfAddressList();
            }
            if (ImsCallSessionProxy.this.mSelfAddressList == null) {
                return false;
            }
            Iterator it = ImsCallSessionProxy.this.mSelfAddressList.iterator();
            while (it.hasNext()) {
                String selfAddress = (String) it.next();
                ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
                imsCallSessionProxy.logWithCallId("isSelfAddress() selfId: " + ImsCallSessionProxy.this.sensitiveEncode(selfAddress) + " addr: " + ImsCallSessionProxy.this.sensitiveEncode(addr), 2);
                if (PhoneNumberUtils.compareLoosely(addr, selfAddress)) {
                    return ImsCallSessionProxy.DBG;
                }
            }
            return false;
        }

        private boolean updateMultipartyState(int callMode, boolean isIncoming) {
            int i = 0;
            boolean isMultipartyMode = callMode == 22 || callMode == 23 || callMode == 24 || callMode == 25;
            boolean mptyState = ImsCallSessionProxy.this.isMultiparty();
            String mptyExtra = ImsCallProfileEx.EXTRA_MPTY;
            if (isIncoming) {
                mptyState = ImsCallSessionProxy.this.isIncomingCallMultiparty();
                mptyExtra = ImsCallProfileEx.EXTRA_INCOMING_MPTY;
            }
            if (mptyState == isMultipartyMode) {
                return false;
            }
            ImsCallProfile imsCallProfile = ImsCallSessionProxy.this.mCallProfile;
            if (isMultipartyMode) {
                i = 1;
            }
            imsCallProfile.setCallExtraInt(mptyExtra, i);
            return ImsCallSessionProxy.DBG;
        }

        private void notifyMultipartyStateChanged(int callMode) {
            boolean stateChanged = updateMultipartyState(callMode, false);
            if (stateChanged) {
                ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
                imsCallSessionProxy.logWithCallId("notifyMultipartyStateChanged() : isMultiparty(): " + ImsCallSessionProxy.this.isMultiparty(), 2);
                if (ImsCallSessionProxy.this.mListener != null) {
                    ImsCallSessionProxy.this.mListener.callSessionMultipartyStateChanged(ImsCallSessionProxy.this.isMultiparty());
                }
            }
        }

        private void updateOIR(String num, String pau) {
            if (ImsCallSessionProxy.this.isMultiparty()) {
                ImsCallSessionProxy.this.logWithCallId("updateOIR() : ignore update OIR for mpty call: ", 2);
                return;
            }
            int oir = 2;
            if (TextUtils.isEmpty(num) && TextUtils.isEmpty(pau)) {
                oir = 1;
            } else if (!TextUtils.isEmpty(pau) && pau.toLowerCase().contains("anonymous")) {
                oir = 1;
            }
            ImsCallSessionProxy.this.mCallProfile.setCallExtraInt("oir", oir);
        }

        private boolean updateAddressFromPau(String pau) {
            if (!ImsCallSessionProxy.this.mShouldUpdateAddressByPau) {
                ImsCallSessionProxy.this.logWithCallId("updateAddressFromPau() : MO call, should not update addr by PAU", 2);
                return false;
            }
            String sipField = getFieldValueFromPau(pau, PAU_SIP_NUMBER_FIELD);
            String telField = getFieldValueFromPau(pau, PAU_NUMBER_FIELD);
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("updateAddressFromPau() : updatePau()... telNumber: " + ImsCallSessionProxy.this.sensitiveEncode(telField) + " sipNumber: " + ImsCallSessionProxy.this.sensitiveEncode(sipField), 2);
            String[] split = (!TextUtils.isEmpty(sipField) ? sipField : telField).split("[;@,]+");
            String addr = split[0];
            String currentOI = ImsCallSessionProxy.this.mCallProfile.getCallExtra("oi");
            if (TextUtils.isEmpty(addr) || PhoneNumberUtils.compareLoosely(currentOI, addr)) {
                return false;
            }
            ImsCallSessionProxy.this.mCallProfile.setCallExtra("oi", addr);
            ImsCallSessionProxy imsCallSessionProxy2 = ImsCallSessionProxy.this;
            imsCallSessionProxy2.logWithCallId("updateAddressFromPau() : updatePau()... addr: " + ImsCallSessionProxy.this.sensitiveEncode(addr), 2);
            return ImsCallSessionProxy.DBG;
        }

        private boolean updateDisplayNameFromPau(String pau) {
            String displayName = getDisplayNameFromPau(pau);
            String currentDisplayName = ImsCallSessionProxy.this.mCallProfile.getCallExtra("cna");
            if (TextUtils.isEmpty(displayName)) {
                return false;
            }
            ImsCallSessionProxy.this.mCallProfile.setCallExtraInt("cnap", 2);
            if (PhoneNumberUtils.compareLoosely(currentDisplayName, displayName)) {
                return false;
            }
            ImsCallSessionProxy.this.mCallProfile.setCallExtra("cna", displayName);
            ImsCallSessionProxy.this.mCallProfile.setCallExtraInt("cnap", 2);
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("updateDisplayNameFromPau() : diaplayName: " + displayName, 2);
            return ImsCallSessionProxy.DBG;
        }

        private boolean handlePauUpdate(String pau) {
            if (TextUtils.isEmpty(pau)) {
                return false;
            }
            String sipNumber = getFieldValueFromPau(pau, PAU_SIP_NUMBER_FIELD);
            ImsCallSessionProxy.this.mCallProfile.setCallExtra("remote_uri", sipNumber);
            boolean ret = updateAddressFromPau(pau);
            return ret | updateDisplayNameFromPau(pau);
        }

        private boolean updateCallDisplayFromNumberOrPau(String number, String pau) {
            if (!TextUtils.isEmpty(pau) || TextUtils.isEmpty(number)) {
                return handlePauUpdate(pau);
            }
            String curOI = ImsCallSessionProxy.this.mCallProfile.getCallExtra("oi");
            if (curOI.equals(number)) {
                return false;
            }
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("updateCallDisplayFromNumberOrPau() : number: " + ImsCallSessionProxy.this.sensitiveEncode(number), 2);
            ImsCallSessionProxy.this.mCallProfile.setCallExtra("oi", number);
            ImsCallSessionProxy.this.mCallProfile.setCallExtra("remote_uri", number);
            return ImsCallSessionProxy.DBG;
        }

        private int getWfcDisconnectCause(int causeCode) {
            ImsCallSessionProxy imsCallSessionProxy = ImsCallSessionProxy.this;
            imsCallSessionProxy.logWithCallId("[WFC] getWfcDisconnectCause mRatType = " + ImsCallSessionProxy.this.mRatType, 2);
            if (ImsCallSessionProxy.this.mWfoService == null || ImsCallSessionProxy.this.mRatType != 2 || causeCode == 16) {
                return -1;
            }
            DisconnectCause disconnectCause = null;
            try {
                disconnectCause = ImsCallSessionProxy.this.mWfoService.getDisconnectCause(ImsCallSessionProxy.this.mPhoneId);
            } catch (RemoteException e) {
                ImsCallSessionProxy.this.logWithCallId("getWfcDisconnectCause() : RemoteException in getWfcDisconnectCause()", 5);
            }
            if (disconnectCause == null) {
                return -1;
            }
            int wfcErrorCause = disconnectCause.getErrorCause();
            ImsCallSessionProxy imsCallSessionProxy2 = ImsCallSessionProxy.this;
            imsCallSessionProxy2.logWithCallId("[WFC] wfcErrorCause = " + wfcErrorCause, 2);
            if (wfcErrorCause == 2001) {
                return 61451;
            }
            if (wfcErrorCause == 2003 || wfcErrorCause == 2005) {
                return 61453;
            }
            return wfcErrorCause == 2004 ? 61454 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVideoRingtone(int ringCallMode, int isIbt) {
        if (OperatorUtils.isMatched(OperatorUtils.OPID.OP01, this.mPhoneId) && SystemProperties.get("persist.vendor.vilte_support").equals(RadioCapabilitySwitchUtil.IMSI_READY)) {
            int callType = this.mCallProfile.mCallType;
            logWithCallId("updateVideoRingtone() : callType = " + callType, 2);
            if (callType != 4 && callType != 6) {
                this.mRemoteCallProfile.mMediaProfile.mVideoDirection = -1;
            } else if (ringCallMode == 21 && isIbt == 1) {
                this.mRemoteCallProfile.mMediaProfile.mVideoDirection = 1;
            } else {
                this.mRemoteCallProfile.mMediaProfile.mVideoDirection = -1;
            }
        }
    }

    private boolean isNeedRemoveVideoRingtone() {
        if (this.mRemoteCallProfile.mMediaProfile.mVideoDirection != 1) {
            return false;
        }
        this.mRemoteCallProfile.mMediaProfile.mVideoDirection = -1;
        logWithCallId("isNeedRemoveVideoRingtone()", 2);
        return DBG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeCompleted() {
        notifyCallSessionMergeComplete();
        this.mIsMerging = false;
        this.mIsHideHoldEventDuringMerging = false;
        ImsConferenceHandler.getInstance().modifyParticipantComplete();
        ImsCallSessionProxy hostCallSession = this.mImsServiceCT.getConferenceHostCall();
        if (hostCallSession != null) {
            hostCallSession.onAddParticipantComplete();
        }
        this.mConfSessionProxy = null;
        this.mMtkConfSessionProxy = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeFailed() {
        if (this.mListener != null) {
            this.mListener.callSessionMergeFailed(new ImsReasonInfo());
        }
        this.mMergeCallId = MtkPhoneConstants.MVNO_TYPE_NONE;
        this.mMergeCallStatus = ImsCallInfo.State.INVALID;
        this.mMergedCallId = MtkPhoneConstants.MVNO_TYPE_NONE;
        this.mMergedCallStatus = ImsCallInfo.State.INVALID;
        this.mIsMerging = false;
        this.mIsHideHoldEventDuringMerging = false;
        closeConferenceSession();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class IWifiOffloadListenerProxy extends WifiOffloadManager.Listener {
        private IWifiOffloadListenerProxy() {
        }

        @Override // com.mediatek.wfo.WifiOffloadManager.Listener, com.mediatek.wfo.IWifiOffloadListener
        public void onHandover(int simIdx, int stage, int ratType) {
            if (simIdx == ImsCallSessionProxy.this.mPhoneId && ratType != ImsCallSessionProxy.this.mRatType && stage == 1) {
                ImsCallSessionProxy.this.updateRat(ratType);
                if (ImsCallSessionProxy.this.mListener != null) {
                    ImsCallSessionProxy.this.logWithCallId("onHandover()", 2);
                    ImsCallSessionProxy.this.mListener.callSessionUpdated(ImsCallSessionProxy.this.mCallProfile);
                    ImsCallSessionProxy.this.mListener.callSessionHandover(ImsCallSessionProxy.this.mRatType, ratType, new ImsReasonInfo());
                }
            }
        }

        @Override // com.mediatek.wfo.WifiOffloadManager.Listener, com.mediatek.wfo.IWifiOffloadListener
        public void onRequestImsSwitch(int simIdx, boolean isImsOn) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCallStateForWifiOffload(int callState) {
        int callType;
        int wosCallState;
        if (this.mWfoService == null) {
            logWithCallId("updateCallStateForWifiOffload() : skip, no WOS!", 2);
        } else if (this.mCallId == null) {
            logWithCallId("updateCallStateForWifiOffload() : skip, no call ID!", 2);
        } else {
            int callId = Integer.parseInt(this.mCallId);
            if (this.mCallProfile.mCallType == 2 || this.mCallProfile.mCallType == 1) {
                callType = 1;
            } else {
                callType = 2;
            }
            switch (callState) {
                case 0:
                case 7:
                case 8:
                    wosCallState = 0;
                    break;
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                    wosCallState = 2;
                    break;
                case 4:
                    wosCallState = 1;
                    break;
                default:
                    logWithCallId("updateCallStateForWifiOffload() : skip, unexpected state: " + callState, 2);
                    return;
            }
            try {
                this.mWfoService.updateCallState(this.mPhoneId, callId, callType, wosCallState);
            } catch (RemoteException e) {
                logWithCallId("updateCallStateForWifiOffload() : RemoteException in Wos.updateCallState()", 5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCallSessionTerminated(ImsReasonInfo info) {
        if (this.mListener == null) {
            logWithCallId("notifyCallSessionTerminated() : mListener = NULL", 2);
            close();
            return;
        }
        if (this.mIsMerging && (this.mTerminateReason == 501 || this.mRadioUnavailable)) {
            logWithCallId("notifyCallSessionTerminated() : close while merging", 2);
            mergeFailed();
        }
        switch (this.mCallErrorState) {
            case DIAL:
                if (this.mListener != null) {
                    try {
                        this.mListener.callSessionInitiatedFailed(info);
                        return;
                    } catch (RuntimeException e) {
                        logWithCallId("RuntimeException callSessionInitiatedFailed()", 5);
                        close();
                        return;
                    }
                } else {
                    return;
                }
            case DISCONNECT:
                if (this.mListener != null) {
                    try {
                        this.mListener.callSessionTerminated(info);
                        return;
                    } catch (RuntimeException e2) {
                        logWithCallId("RuntimeException callSessionTerminated()", 5);
                        close();
                        return;
                    }
                } else {
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateRat(int ratType) {
        String radioTech;
        if (ratType == 1) {
            radioTech = String.valueOf(14);
        } else if (ratType == 2) {
            radioTech = String.valueOf(18);
        } else {
            radioTech = String.valueOf(0);
        }
        if (this.mRatType == ratType && this.mCallProfile.getCallExtra("CallRadioTech").equals(radioTech)) {
            return false;
        }
        this.mRatType = ratType;
        this.mCallProfile.setCallExtra("CallRadioTech", radioTech);
        return DBG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRemoteHeld() {
        if (this.mListener != null && this.mState != 7) {
            this.mListener.callSessionHoldReceived(this.mCallProfile);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRemoteResumed() {
        if (this.mListener != null && this.mState != 7) {
            this.mListener.callSessionResumeReceived(this.mCallProfile);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCallSessionUpdated() {
        if (this.mListener != null) {
            this.mListener.callSessionUpdated(this.mCallProfile);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConferenceEventListener getConfEvtListener() {
        if (this.mConfEvtListener == null) {
            this.mConfEvtListener = new ConferenceEventListener();
        }
        return this.mConfEvtListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ConferenceEventListener extends DefaultConferenceHandler.Listener {
        ConferenceEventListener() {
        }

        @Override // com.mediatek.ims.DefaultConferenceHandler.Listener
        public void onParticipantsUpdate(ImsConferenceState confState) {
            ImsCallSessionProxy.this.logWithCallId("onParticipantsUpdate()", 2);
            if (ImsCallSessionProxy.this.mListener != null) {
                ImsCallSessionProxy.this.mListener.callSessionConferenceStateUpdated(confState);
            }
        }

        @Override // com.mediatek.ims.DefaultConferenceHandler.Listener
        public void onAutoTerminate() {
            ImsCallSessionProxy.this.logWithCallId("onAutoTerminate()", 2);
            ImsCallSessionProxy.this.terminate(0);
        }
    }

    public void onAddParticipantComplete() {
        Rlog.d(LOG_TAG, "onAddParticipantComplete(): " + this.mCallId);
        if (this.mVTProvider != null) {
            this.mVTProviderUtil.resetWrapper(this.mVTProvider);
        }
    }

    private boolean isCallPull(ImsCallProfile profile) {
        Bundle extras;
        if (profile == null || profile.mCallExtras == null || (extras = profile.mCallExtras.getBundle("OemCallExtras")) == null) {
            return false;
        }
        boolean isCallPull = extras.getBoolean("CallPull", false);
        return isCallPull;
    }

    private void pullCall(String target, ImsCallProfile profile) {
        Message result = this.mHandler.obtainMessage(EVENT_PULL_CALL_RESULT);
        this.mImsRILAdapter.pullCall(target, isVideoCall(profile), result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVideoCall(ImsCallProfile profile) {
        if (profile == null || ImsCallProfile.getVideoStateFromImsCallProfile(profile) == 0) {
            return false;
        }
        return DBG;
    }

    private void updateShouldUpdateAddressByPau() {
        this.mShouldUpdateAddressByPau = getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_CARRIER_UPDATE_DIALING_ADDRESS_FROM_PAU);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int updateIsIbt(String[] callInfo) {
        int isIbt = 1;
        if (callInfo[2] != null) {
            isIbt = Integer.parseInt(callInfo[2]);
        }
        logWithCallId("updateIsIbt() : isIbt= " + isIbt, 2);
        if (isIbt == 0) {
            this.mCallProfile.mMediaProfile.mAudioDirection = 0;
        } else {
            this.mCallProfile.mMediaProfile.mAudioDirection = 1;
        }
        return isIbt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createConferenceSession(ImsCallProfile imsCallProfile, String callId) {
        if (this.mMtkImsCallSessionProxy != null) {
            createMtkConferenceSession(imsCallProfile, callId);
        } else {
            createAospConferenceSession(imsCallProfile, callId);
        }
    }

    private void createMtkConferenceSession(ImsCallProfile imsCallProfile, String callId) {
        this.mMtkConfSessionProxy = new MtkImsCallSessionProxy(this.mContext, imsCallProfile, null, this.mImsService, this.mServiceHandler, this.mImsRILAdapter, callId, this.mPhoneId);
        ImsCallSessionProxy imsCallSessionProxy = new ImsCallSessionProxy(this.mContext, imsCallProfile, null, this.mImsService, this.mServiceHandler, this.mImsRILAdapter, callId, this.mPhoneId);
        this.mMtkConfSessionProxy.setAospCallSessionProxy(imsCallSessionProxy);
        imsCallSessionProxy.setMtkCallSessionProxy(this.mMtkConfSessionProxy);
        ConferenceEventListener confEvtListener = this.mMtkConfSessionProxy.getConfEvtListener();
        ImsConferenceHandler.getInstance().startConference(this.mContext, confEvtListener, callId, this.mPhoneId);
        this.mMtkImsCallSessionProxy.notifyCallSessionMergeStarted(this.mMtkConfSessionProxy.getServiceImpl(), this.mCallProfile);
    }

    private void createAospConferenceSession(ImsCallProfile imsCallProfile, String callId) {
        this.mConfSessionProxy = new ImsCallSessionProxy(this.mContext, imsCallProfile, null, this.mImsService, this.mServiceHandler, this.mImsRILAdapter, callId, this.mPhoneId);
        ConferenceEventListener confEvtListener = this.mConfSessionProxy.getConfEvtListener();
        ImsConferenceHandler.getInstance().startConference(this.mContext, confEvtListener, callId, this.mPhoneId);
        this.mListener.callSessionMergeStarted(this.mConfSessionProxy.getServiceImpl(), this.mCallProfile);
    }

    private void terminateConferenceSession() {
        if (this.mMtkConfSessionProxy != null) {
            logWithCallId("terminateConferenceSession() : Hangup Conference: Hangup host while merging (mtk)", 2);
            MtkImsCallSessionProxy confSession = this.mMtkConfSessionProxy;
            confSession.terminate(102);
            ImsConferenceHandler.getInstance().closeConference(confSession.getCallId());
            this.mParticipants.clear();
        } else if (this.mConfSessionProxy != null) {
            logWithCallId("terminateConferenceSession() : Hangup Conference: Hangup host while merging (aosp)", 2);
            ImsCallSessionProxy confSession2 = this.mConfSessionProxy;
            confSession2.terminate(102);
            ImsConferenceHandler.getInstance().closeConference(confSession2.getCallId());
            this.mParticipants.clear();
        }
    }

    private void closeConferenceSession() {
        if (this.mMtkConfSessionProxy != null) {
            this.mMtkConfSessionProxy.close();
            this.mMtkConfSessionProxy = null;
        } else if (this.mConfSessionProxy != null) {
            this.mConfSessionProxy.close();
            this.mConfSessionProxy = null;
        }
    }

    private void notifyCallSessionMergeComplete() {
        if (this.mMtkImsCallSessionProxy != null) {
            if (this.mMtkConfSessionProxy != null) {
                this.mMtkImsCallSessionProxy.notifyCallSessionMergeComplete(this.mMtkConfSessionProxy.getServiceImpl());
            } else {
                this.mMtkImsCallSessionProxy.notifyCallSessionMergeComplete(null);
            }
        } else if (this.mListener == null) {
        } else {
            if (this.mConfSessionProxy != null) {
                this.mListener.callSessionMergeComplete(this.mConfSessionProxy.getServiceImpl());
            } else {
                this.mListener.callSessionMergeComplete((IImsCallSession) null);
            }
        }
    }

    private boolean getBooleanFromCarrierConfig(String key) {
        int subId = this.mImsService.getSubIdUsingPhoneId(this.mPhoneId);
        CarrierConfigManager configMgr = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        PersistableBundle carrierConfig = configMgr.getConfigForSubId(subId);
        boolean result = carrierConfig.getBoolean(key);
        logWithCallId("getBooleanFromCarrierConfig() : key = " + key + " result = " + result, 2);
        return result;
    }

    private boolean isUserPerfromedHangup() {
        if (this.mHangupCount > 0) {
            return DBG;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldNotifyCallDropByBadWifiQuality() {
        boolean notifyWifiQualityDisconnectCause = getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_CARRIER_NOTIFY_BAD_WIFI_QUALITY_DISCONNECT_CAUSE);
        logWithCallId("shouldNotifyCallDropByBadWifiQuality() :  carrier =  " + notifyWifiQualityDisconnectCause + " isUserPerfromedHangup = " + isUserPerfromedHangup() + " mRatType = " + this.mRatType, 2);
        if (!notifyWifiQualityDisconnectCause || isUserPerfromedHangup() || this.mRatType != 2) {
            return false;
        }
        return DBG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWifiRssi() {
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService(RegionalPhone.SETTINGS.WIFI_DEFAULT);
        WifiInfo info = wifiManager.getConnectionInfo();
        int rssi = info.getRssi();
        logWithCallId("getWifiRssi()" + rssi, 2);
        return rssi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void correctRemoteVideoCapabilityForVideoConference() {
        if (isMultiparty() && isVideoCall(this.mCallProfile)) {
            logWithCallId("correctRemoteVideoCapabilityForVideoConference() : Video conference, force set remote as Video Call", 2);
            this.mRemoteCallProfile.mCallType = 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeRemoteCallVideoCapability() {
        logWithCallId("removeRemoteCallVideoCapability()", 2);
        this.mRemoteCallProfile.mCallType = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCallType(int callMode, int videoState) {
        if (callMode == 21 || callMode == 23 || callMode == 25) {
            switch (videoState) {
                case 0:
                    break;
                case 1:
                    this.mCallProfile.mCallType = 5;
                    logWithCallId("updateCallType() : mCallType = CALL_TYPE_VT_TX", 2);
                    break;
                case 2:
                    this.mCallProfile.mCallType = 6;
                    logWithCallId("updateCallType() : mCallType = CALL_TYPE_VT_RX", 2);
                    break;
                case 3:
                    this.mCallProfile.mCallType = 4;
                    logWithCallId("updateCallType() : mCallType = CALL_TYPE_VT", 2);
                    break;
                default:
                    this.mCallProfile.mCallType = 4;
                    logWithCallId("updateCallType() : mCallType = CALL_TYPE_VT", 2);
                    break;
            }
        } else if (callMode == 20 || callMode == 22 || callMode == 24) {
            this.mCallProfile.mCallType = 2;
            logWithCallId("updateCallType() : mCallType = CALL_TYPE_VOICE", 2);
        }
        logWithCallId("updateCallType() : " + this.mCallProfile.mCallType, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAnsweredElsewhere(String header) {
        if (header == null) {
            return false;
        }
        if (header.equalsIgnoreCase(SipMessage.COMPETION_ELSEWHERE_HEADER) || header.toLowerCase().contains(SipMessage.CALL_COMPLETED_ELSEWHERE_HEADER)) {
            return DBG;
        }
        return false;
    }

    private void rejectDial() {
        logWithCallId("rejectDial()", 2);
        this.mCallErrorState = CallErrorState.DIAL;
        notifyCallSessionTerminated(new ImsReasonInfo());
    }

    private String getConfParticipantUri(String addr) {
        String participantUri;
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            Bundle confInfo = this.mParticipants.get(addr);
            if (confInfo == null) {
                return addr;
            }
            participantUri = confInfo.getString(USER_ENTITY);
            if (participantUri == null || !participantUri.startsWith("sip:")) {
                participantUri = addr;
            }
        } else {
            participantUri = ImsConferenceHandler.getInstance().getConfParticipantUri(addr);
        }
        return participantUri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCallEventWithRat(int msgType) {
        Bundle extras = new Bundle();
        extras.putInt(EXTRA_CALL_INFO_MESSAGE_TYPE, msgType);
        extras.putInt(EXTRA_CALL_TYPE, this.mCallProfile.mCallType);
        extras.putInt(EXTRA_RAT_TYPE, this.mRatType);
        extras.putBoolean(EXTRA_INCOMING_CALL, this.mIsIncomingCall);
        extras.putBoolean(EXTRA_EMERGENCY_CALL, this.mIsEmergencyCall);
        this.mOpImsCallSession.sendCallEventWithRat(extras);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detailLog(String msg) {
        if (TELDBG) {
            logWithCallId(msg, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logWithCallId(String msg, int lvl) {
        if (1 == lvl && TELDBG) {
            Rlog.v(LOG_TAG, "[callId = " + this.mCallId + "] " + msg);
        } else if (2 == lvl) {
            Rlog.d(LOG_TAG, "[callId = " + this.mCallId + "] " + msg);
        } else if (3 == lvl) {
            Rlog.i(LOG_TAG, "[callId = " + this.mCallId + "] " + msg);
        } else if (4 == lvl) {
            Rlog.w(LOG_TAG, "[callId = " + this.mCallId + "] " + msg);
        } else if (5 == lvl) {
            Rlog.e(LOG_TAG, "[callId = " + this.mCallId + "] " + msg);
        } else {
            Rlog.d(LOG_TAG, "[callId = " + this.mCallId + "] " + msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logEventResult(boolean isSuccess, String msg) {
        StringBuilder sb = new StringBuilder();
        sb.append(msg);
        sb.append(isSuccess ? " success" : " failed");
        logWithCallId(sb.toString(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String sensitiveEncode(String msg) {
        if (!SENLOG || TELDBG) {
            return msg;
        }
        return "[hidden]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSpeechCodecInfo(AsyncResult ar) {
        int codec = ((int[]) ar.result)[0];
        logWithCallId("handleSpeechCodecInfo() : " + codec, 2);
        switch (codec) {
            case 1:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 3;
                break;
            case 2:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 4;
                break;
            case 3:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 5;
                break;
            case 4:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 6;
                break;
            case 5:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 7;
                break;
            case 6:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 1;
                break;
            case 7:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 2;
                break;
            case 8:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 8;
                break;
            case 9:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 9;
                break;
            case 10:
                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 10;
                break;
            default:
                switch (codec) {
                    case 23:
                        this.mLocalCallProfile.mMediaProfile.mAudioQuality = 17;
                        break;
                    case 24:
                        this.mLocalCallProfile.mMediaProfile.mAudioQuality = 18;
                        break;
                    case 25:
                        this.mLocalCallProfile.mMediaProfile.mAudioQuality = 19;
                        break;
                    default:
                        switch (codec) {
                            case 32:
                                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 20;
                                break;
                            case 33:
                                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 21;
                                break;
                            default:
                                this.mLocalCallProfile.mMediaProfile.mAudioQuality = 0;
                                break;
                        }
                }
        }
        notifyCallSessionUpdated();
    }

    private void turnOffAirplaneMode() {
        Rlog.d(LOG_TAG, "turnOffAirplaneMode()");
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) > 0) {
            Rlog.d(LOG_TAG, "turnOffAirplaneMode() : Turning off airplane mode.");
            Settings.Global.putInt(this.mContext.getContentResolver(), "airplane_mode_on", 0);
            Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
            intent.putExtra("state", false);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRedialEccIndication(AsyncResult ar) {
        Rlog.d(LOG_TAG, "handleRedialEccIndication()");
        if (ar == null || this.mMtkImsCallSessionProxy == null) {
            Rlog.d(LOG_TAG, "handleRedialEccIndication() : ar or mMtkImsCallSessionProxy is null");
        } else if (this.mState == 4) {
            Rlog.d(LOG_TAG, "handleRedialEccIndication() : Call established, ignore indication");
        } else {
            String[] result = (String[]) ar.result;
            if (result != null && result[0].equals("0")) {
                turnOffAirplaneMode();
            } else if (result != null && result[0].equals(this.mCallId)) {
                turnOffAirplaneMode();
                this.mMtkImsCallSessionProxy.notifyRedialEcc();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String event2String(int event) {
        if (101 == event) {
            return "EVENT_POLL_CALLS_RESULT";
        }
        if (102 == event) {
            return "EVENT_CALL_INFO_INDICATION";
        }
        if (104 == event) {
            return "EVENT_ECONF_RESULT_INDICATION";
        }
        if (EVENT_GET_LAST_CALL_FAIL_CAUSE == event) {
            return "EVENT_GET_LAST_CALL_FAIL_CAUSE";
        }
        if (EVENT_CALL_MODE_CHANGE_INDICATION == event) {
            return "EVENT_CALL_MODE_CHANGE_INDICATION";
        }
        if (EVENT_VIDEO_CAPABILITY_INDICATION == event) {
            return "EVENT_VIDEO_CAPABILITY_INDICATION";
        }
        if (EVENT_ON_USSI == event) {
            return "EVENT_ON_USSI";
        }
        if (EVENT_ECT_RESULT_INDICATION == event) {
            return "EVENT_ECT_RESULT_INDICATION";
        }
        if (EVENT_GTT_CAPABILITY_INDICATION == event) {
            return "EVENT_GTT_CAPABILITY_INDICATION";
        }
        if (111 == event) {
            return "EVENT_IMS_CONFERENCE_INDICATION";
        }
        if (201 == event) {
            return "EVENT_DIAL_RESULT";
        }
        if (202 == event) {
            return "EVENT_ACCEPT_RESULT";
        }
        if (EVENT_HOLD_RESULT == event) {
            return "EVENT_HOLD_RESULT";
        }
        if (EVENT_RESUME_RESULT == event) {
            return "EVENT_RESUME_RESULT";
        }
        if (EVENT_MERGE_RESULT == event) {
            return "EVENT_MERGE_RESULT";
        }
        if (EVENT_ADD_CONFERENCE_RESULT == event) {
            return "EVENT_ADD_CONFERENCE_RESULT";
        }
        if (EVENT_REMOVE_CONFERENCE_RESULT == event) {
            return "EVENT_REMOVE_CONFERENCE_RESULT";
        }
        if (EVENT_SIP_CODE_INDICATION == event) {
            return "EVENT_SIP_CODE_INDICATION";
        }
        if (EVENT_DIAL_CONFERENCE_RESULT == event) {
            return "EVENT_DIAL_CONFERENCE_RESULT";
        }
        if (EVENT_SWAP_BEFORE_MERGE_RESULT == event) {
            return "EVENT_SWAP_BEFORE_MERGE_RESULT";
        }
        if (211 == event) {
            return "EVENT_RETRIEVE_MERGE_FAIL_RESULT";
        }
        if (EVENT_DTMF_DONE == event) {
            return "EVENT_DTMF_DONE";
        }
        if (EVENT_SEND_USSI_COMPLETE == event) {
            return "EVENT_SEND_USSI_COMPLETE";
        }
        if (EVENT_CANCEL_USSI_COMPLETE == event) {
            return "EVENT_CANCEL_USSI_COMPLETE";
        }
        if (EVENT_ECT_RESULT == event) {
            return "EVENT_ECT_RESULT";
        }
        if (EVENT_PULL_CALL_RESULT == event) {
            return "EVENT_PULL_CALL_RESULT";
        }
        if (EVENT_RADIO_NOT_AVAILABLE == event) {
            return "EVENT_RADIO_NOT_AVAILABLE";
        }
        if (EVENT_RTT_TEXT_RECEIVE_INDICATION == event) {
            return "EVENT_RTT_TEXT_RECEIVE_INDICATION";
        }
        if (EVENT_RTT_MODIFY_RESPONSE == event) {
            return "EVENT_RTT_MODIFY_RESPONSE";
        }
        if (EVENT_RTT_MODIFY_REQUEST_RECEIVE == event) {
            return "EVENT_RTT_MODIFY_REQUEST_RECEIVE";
        }
        if (EVENT_DIAL_FROM_RESULT == event) {
            return "EVENT_DIAL_FROM_RESULT";
        }
        if (EVENT_DEVICE_SWITCH_REPONSE == event) {
            return "EVENT_DEVICE_SWITCH_REPONSE";
        }
        if (EVENT_SPEECH_CODEC_INFO == event) {
            return "EVENT_SPEECH_CODEC_INFO";
        }
        return "unknown msg" + event;
    }

    public MtkImsCallSessionProxy getMtkCallSessionProxy() {
        return this.mMtkImsCallSessionProxy;
    }

    public void setMtkCallSessionProxy(MtkImsCallSessionProxy callSessionProxy) {
        this.mMtkImsCallSessionProxy = callSessionProxy;
    }

    public ImsCallPluginBase getImsExtCallUtil() {
        ExtensionPluginFactory facotry = ExtensionFactory.makeExtensionPluginFactory();
        return facotry.makeImsCallPlugin(this.mContext);
    }

    public ImsSelfActivatorBase getImsExtSelfActivator(Context context, Handler handler, ImsCallSessionProxy callSessionProxy, ImsCommandsInterface imsRILAdapter, ImsService imsService, int phoneId) {
        ExtensionPluginFactory facotry = ExtensionFactory.makeExtensionPluginFactory();
        return facotry.makeImsSelfActivator(context, handler, this, imsRILAdapter, imsService, phoneId);
    }

    private void tryTurnOnVolteForE911(boolean isEmergencyNumber) {
        ImsManager imsManager = ImsManager.getInstance(this.mContext, this.mPhoneId);
        if (isEmergencyNumber && !imsManager.isVolteEnabledByPlatform() && !imsManager.isEnhanced4gLteModeSettingEnabledByUser()) {
            imsManager.setEnhanced4gLteModeSetting(DBG);
            this.mImsServiceCT.setEnableVolteForImsEcc(DBG);
        }
    }
}
