package com.mediatek.ims.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.radio.V1_0.LastCallFailCause;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemProperties;
import android.telecom.VideoProfile;
import android.telephony.ims.ImsVideoCallProvider;
import android.util.Log;
import android.view.Surface;
import com.android.ims.ImsException;
import com.android.internal.os.SomeArgs;
import com.mediatek.ims.ImsCommonUtil;
import com.mediatek.ims.ext.OpImsServiceCustomizationUtils;
import com.mediatek.ims.internal.ImsVTProviderUtil;
import com.mediatek.ims.internal.ImsVTUsageManager;
import com.mediatek.ims.internal.VTSource;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ImsVTProvider extends ImsVideoCallProvider implements VTSource.EventCallback {
    public static final int MODE_PAUSE_BY_HOLD = 1;
    public static final int MODE_PAUSE_BY_TURNOFFCAM = 2;
    protected static final int MSG_RECEIVE_CALL_SESSION_EVENT = 706;
    protected static final int MSG_REQUEST_CALL_DATA_USAGE = 10;
    protected static final int MSG_REQUEST_CAMERA_CAPABILITIES = 9;
    protected static final int MSG_RESET_WRAPPER = 704;
    protected static final int MSG_SEND_SESSION_MODIFY_REQUEST = 7;
    protected static final int MSG_SEND_SESSION_MODIFY_RESPONSE = 8;
    protected static final int MSG_SET_CALLBACK = 1;
    protected static final int MSG_SET_CAMERA = 2;
    protected static final int MSG_SET_DEVICE_ORIENTATION = 5;
    protected static final int MSG_SET_DISPLAY_SURFACE = 4;
    protected static final int MSG_SET_PAUSE_IMAGE = 11;
    protected static final int MSG_SET_PREVIEW_SURFACE = 3;
    protected static final int MSG_SET_UI_MODE = 701;
    protected static final int MSG_SET_ZOOM = 6;
    protected static final int MSG_SWITCH_FEATURE = 702;
    protected static final int MSG_SWITCH_ROAMING = 703;
    protected static final int MSG_UPDATE_PROFILE = 705;
    public static final String MTK_VILTE_ROTATE_DELAY = "persist.vendor.vt.rotate_delay";
    public static final int POSTEVENT_IGNORE_ID = -10;
    public static final Uri REPLACE_PICTURE_PATH;
    public static final int SESSION_EVENT_BAD_DATA_BITRATE = 4008;
    public static final int SESSION_EVENT_CALL_ABNORMAL_END = 1009;
    public static final int SESSION_EVENT_CALL_END = 1008;
    public static final int SESSION_EVENT_CAM_CAP_CHANGED = 4007;
    public static final int SESSION_EVENT_DATA_BITRATE_RECOVER = 4009;
    public static final int SESSION_EVENT_DATA_PATH_PAUSE = 4011;
    public static final int SESSION_EVENT_DATA_PATH_RESUME = 4012;
    public static final int SESSION_EVENT_DATA_USAGE_CHANGED = 4006;
    public static final int SESSION_EVENT_DEFAULT_LOCAL_SIZE = 4013;
    public static final int SESSION_EVENT_ERROR_CAMERA_CRASHED = 8003;
    public static final int SESSION_EVENT_ERROR_CAMERA_SET_IGNORED = 8006;
    public static final int SESSION_EVENT_ERROR_CODEC = 8004;
    public static final int SESSION_EVENT_ERROR_REC = 8005;
    public static final int SESSION_EVENT_ERROR_SERVER_DIED = 8002;
    public static final int SESSION_EVENT_ERROR_SERVICE = 8001;
    public static final int SESSION_EVENT_GET_CAP = 4014;
    public static final int SESSION_EVENT_GET_CAP_WITH_SIM = 4019;
    public static final int SESSION_EVENT_GET_SENSOR_INFO = 4018;
    public static final int SESSION_EVENT_HANDLE_CALL_SESSION_EVT = 4003;
    public static final int SESSION_EVENT_LOCAL_BUFFER = 4015;
    public static final int SESSION_EVENT_LOCAL_BW_READY_IND = 1013;
    public static final int SESSION_EVENT_LOCAL_SIZE_CHANGED = 4005;
    public static final int SESSION_EVENT_PACKET_LOSS_RATE = 4020;
    public static final int SESSION_EVENT_PACKET_LOSS_RATE_HIGH = 4021;
    public static final int SESSION_EVENT_PACKET_LOSS_RATE_LOW = 4023;
    public static final int SESSION_EVENT_PACKET_LOSS_RATE_MEDIUM = 4022;
    public static final int SESSION_EVENT_PEER_CAMERA_CLOSE = 1012;
    public static final int SESSION_EVENT_PEER_CAMERA_OPEN = 1011;
    public static final int SESSION_EVENT_PEER_SIZE_CHANGED = 4004;
    public static final int SESSION_EVENT_RECEIVE_FIRSTFRAME = 1001;
    public static final int SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE = 1007;
    public static final int SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME = 1006;
    public static final int SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION = 1004;
    public static final int SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE = 1005;
    public static final int SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN = 1003;
    public static final int SESSION_EVENT_RECV_CANCEL_SESSION_IND = 4010;
    public static final int SESSION_EVENT_RECV_SESSION_CONFIG_REQ = 4001;
    public static final int SESSION_EVENT_RECV_SESSION_CONFIG_RSP = 4002;
    public static final int SESSION_EVENT_RESTART_CAMERA = 4017;
    public static final int SESSION_EVENT_SNAPSHOT_DONE = 1002;
    public static final int SESSION_EVENT_START_COUNTER = 1010;
    public static final int SESSION_EVENT_UPLINK_STATE_CHANGE = 4016;
    public static final int SESSION_EVENT_WARNING_SERVICE_NOT_READY = 9001;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_APP = 0;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_DATA_OFF = 1;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_DO_IMMEDIATELY = 4;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_MA_CRASH = 3;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_REJECT = 1;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_REJECT_PREVIOUS = 2;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_ROAMINGG = 2;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_SKIP = 3;
    public static final int SESSION_MODIFICATION_OVERLAP_ACTION_WAIT = 0;
    public static final int SESSION_MODIFY_CANCELED = 11;
    public static final int SESSION_MODIFY_CANCEL_FAILED_BW = 7;
    public static final int SESSION_MODIFY_CANCEL_FAILED_DISABLE = 3;
    public static final int SESSION_MODIFY_CANCEL_FAILED_DOWNGRADE = 1;
    public static final int SESSION_MODIFY_CANCEL_FAILED_INTERNAL = 5;
    public static final int SESSION_MODIFY_CANCEL_FAILED_LOCAL = 6;
    public static final int SESSION_MODIFY_CANCEL_FAILED_NORMAL = 2;
    public static final int SESSION_MODIFY_CANCEL_FAILED_REMOTE = 4;
    public static final int SESSION_MODIFY_CANCEL_FAILED_TIMEOUT = 8;
    public static final int SESSION_MODIFY_CANCEL_OK = 0;
    public static final int SESSION_MODIFY_INTERNALERROR = 2;
    public static final int SESSION_MODIFY_INVALIDPARA = 8;
    public static final int SESSION_MODIFY_INVIDEOACTION = 12;
    public static final int SESSION_MODIFY_ISHOLD = 6;
    public static final int SESSION_MODIFY_ISREINVITE = 13;
    public static final int SESSION_MODIFY_LOCALREL = 5;
    public static final int SESSION_MODIFY_NOACTIVESTATE = 4;
    public static final int SESSION_MODIFY_NONEED = 7;
    public static final int SESSION_MODIFY_OK = 0;
    public static final int SESSION_MODIFY_REJECTBYREMOTE = 10;
    public static final int SESSION_MODIFY_REQTIMEOUT = 9;
    public static final int SESSION_MODIFY_RESULT_BW_MODIFYFAILED = 3;
    public static final int SESSION_MODIFY_WRONGVIDEODIR = 1;
    static final String TAG = "ImsVT";
    public static final int UPLINK_STATE_PAUSE_RECORDING = 2;
    public static final int UPLINK_STATE_RESUME_RECORDING = 3;
    public static final int UPLINK_STATE_START_RECORDING = 1;
    public static final int UPLINK_STATE_STOP_RECORDING = 0;
    public static final int UPLINK_STATE_STOP_RECORDING_PREVIEW = 4;
    public static final int VTP_STATE_DATA_OFF = 1;
    public static final int VTP_STATE_MA_CRASH = 4;
    public static final int VTP_STATE_NORMAL = 0;
    public static final int VTP_STATE_ROAMING = 2;
    public static final int VT_PROVIDER_INVALIDE_ID = -10000;
    protected static int mDefaultId;
    public static ImsVTProviderUtil mVTProviderUtil;
    protected int mId;
    public boolean mInitComplete;
    protected VideoProfile mLastRequestVideoProfile;
    protected Runnable mOrientationRunnable;
    protected int mSimId = 0;
    public int mMode = 0;
    protected boolean mDuringSessionRequestOperation = false;
    protected boolean mDuringSessionRemoteRequestOperation = false;
    protected boolean mIsDuringResetMode = false;
    protected Object mSessionOperationFlagLock = new Object();
    protected boolean mIsMaCrashed = false;
    protected boolean mIsRoaming = false;
    protected boolean mIsDataOff = false;
    protected boolean mIsAudioCall = false;
    public VTSource mSource = null;
    public VTDummySource mDummySource = new VTDummySource();
    protected String mCameraId = null;
    public boolean mHasRequestCamCap = false;
    public int mPauseCount = 0;
    protected int mUplinkState = 0;
    protected ImsVTProviderUtil.Size mPreviewSize = new ImsVTProviderUtil.Size(320, LastCallFailCause.CALL_BARRED);
    protected VideoProfile mCurrentProfile = null;
    private boolean mIsDestroying = false;
    protected final Set<VideoProviderStateListener> mListeners = Collections.newSetFromMap(new ConcurrentHashMap(8, 0.9f, 1));
    protected int mOrientation = 0;
    protected int mState = 0;
    public ImsVTUsageManager mUsager = OpImsServiceCustomizationUtils.getOpFactory(mVTProviderUtil.mContext).makeImsVTUsageManager();
    protected HandlerThread mProviderHandlerThread = new HandlerThread("ProviderHandlerThread");
    protected final Handler mProviderHandler = new Handler(this.mProviderHandlerThread.getLooper()) { // from class: com.mediatek.ims.internal.ImsVTProvider.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            SomeArgs args;
            int i = msg.what;
            switch (i) {
                case 2:
                    ImsVTProvider.this.setCameraInternal((String) msg.obj);
                    return;
                case 3:
                    ImsVTProvider.this.setPreviewSurfaceInternal((Surface) msg.obj);
                    return;
                case 4:
                    ImsVTProvider.this.setDisplaySurfaceInternal((Surface) msg.obj);
                    return;
                case 5:
                    ImsVTProvider.this.setDeviceOrientationInternal(msg.arg1);
                    return;
                case 6:
                    ImsVTProvider.this.setZoomInternal(((Float) msg.obj).floatValue());
                    return;
                case 7:
                    args = (SomeArgs) msg.obj;
                    try {
                        VideoProfile fromProfile = (VideoProfile) args.arg1;
                        VideoProfile toProfile = (VideoProfile) args.arg2;
                        ImsVTProvider.this.sendSessionModifyRequestInternal(fromProfile, toProfile);
                        return;
                    } finally {
                    }
                case 8:
                    ImsVTProvider.this.sendSessionModifyResponseInternal((VideoProfile) msg.obj);
                    return;
                case 9:
                    ImsVTProvider.this.requestCameraCapabilitiesInternal();
                    return;
                case 10:
                    ImsVTProvider.this.requestCallDataUsageInternal();
                    return;
                case 11:
                    ImsVTProvider.this.setPauseImageInternal((Uri) msg.obj);
                    return;
                default:
                    switch (i) {
                        case ImsVTProvider.MSG_SET_UI_MODE /* 701 */:
                            ImsVTProvider.this.setUIModeInternal(((Integer) msg.obj).intValue(), true);
                            return;
                        case ImsVTProvider.MSG_SWITCH_FEATURE /* 702 */:
                            args = (SomeArgs) msg.obj;
                            try {
                                int feature = ((Integer) args.arg1).intValue();
                                boolean on = ((Boolean) args.arg2).booleanValue();
                                ImsVTProvider.this.switchFeatureInternal(feature, on);
                                return;
                            } finally {
                            }
                        case ImsVTProvider.MSG_SWITCH_ROAMING /* 703 */:
                            args = (SomeArgs) msg.obj;
                            try {
                                boolean isRoaming = ((Boolean) args.arg1).booleanValue();
                                ImsVTProvider.this.switchRoamingInternal(isRoaming);
                                return;
                            } finally {
                            }
                        case ImsVTProvider.MSG_RESET_WRAPPER /* 704 */:
                            ImsVTProvider.this.resetWrapperInternal();
                            return;
                        case ImsVTProvider.MSG_UPDATE_PROFILE /* 705 */:
                            args = (SomeArgs) msg.obj;
                            try {
                                int state = ((Integer) args.arg1).intValue();
                                ImsVTProvider.this.updateProfileInternal(state);
                                return;
                            } finally {
                            }
                        case ImsVTProvider.MSG_RECEIVE_CALL_SESSION_EVENT /* 706 */:
                            args = (SomeArgs) msg.obj;
                            try {
                                int event = ((Integer) args.arg1).intValue();
                                ImsVTProvider.this.receiveCallSessionEventInternal(event);
                                return;
                            } finally {
                            }
                        default:
                            return;
                    }
            }
        }
    };

    /* loaded from: classes.dex */
    public interface VideoProviderStateListener {
        void onReceivePauseState(boolean z);

        void onReceiveWiFiUsage(long j);
    }

    public static native int nFinalization(int i);

    public static native int nInitRefVTP();

    public static native int nInitialization(int i, int i2);

    public static native int nRequestPeerConfig(int i, String str);

    public static native int nResponseLocalConfig(int i, String str);

    public static native int nSetCamera(int i, int i2);

    public static native int nSetCameraParameters(int i, VTSource.Resolution[] resolutionArr);

    public static native int nSetCameraParametersOnly(VTSource.Resolution[] resolutionArr);

    public static native int nSetCameraParametersWithSim(int i, int i2, VTSource.Resolution[] resolutionArr);

    public static native int nSetDeviceOrientation(int i, int i2);

    public static native int nSetDisplaySurface(int i, Surface surface);

    public static native int nSetPreviewSurface(int i, Surface surface);

    public static native int nSetUIMode(int i, int i2);

    public static native int nSnapshot(int i, int i2, String str);

    public static native int nStartRecording(int i, int i2, String str, long j);

    public static native int nStopRecording(int i);

    public static native int nSwitchFeature(int i, int i2, int i3);

    static {
        if (ImsVTProviderUtil.isVideoCallOnByPlatform()) {
            System.loadLibrary("mtk_vt_wrapper");
        }
        REPLACE_PICTURE_PATH = Uri.parse("content://PATH");
        mDefaultId = VT_PROVIDER_INVALIDE_ID;
        mVTProviderUtil = ImsVTProviderUtil.getInstance();
    }

    /* loaded from: classes.dex */
    protected class ConnectionEx {

        /* loaded from: classes.dex */
        public class VideoProvider {
            public static final int SESSION_MODIFY_CANCEL_UPGRADE_FAIL = 200;
            public static final int SESSION_MODIFY_CANCEL_UPGRADE_FAIL_AUTO_DOWNGRADE = 201;
            public static final int SESSION_MODIFY_CANCEL_UPGRADE_FAIL_REMOTE_REJECT_UPGRADE = 202;
            private static final int SESSION_MODIFY_MTK_BASE = 200;

            public VideoProvider() {
            }
        }

        protected ConnectionEx() {
        }
    }

    public ImsVTProvider() {
        this.mId = 1;
        this.mInitComplete = false;
        this.mOrientationRunnable = null;
        Log.d(TAG, "New ImsVTProvider without id");
        this.mId = VT_PROVIDER_INVALIDE_ID;
        this.mInitComplete = false;
        this.mProviderHandlerThread.start();
        this.mOrientationRunnable = new Runnable() { // from class: com.mediatek.ims.internal.ImsVTProvider.2
            @Override // java.lang.Runnable
            public void run() {
                Log.d(ImsVTProvider.TAG, "setDeviceOrientation, apply orientation:" + ImsVTProvider.this.mOrientation);
                ImsVTProvider.this.mSource.setDeviceOrientation(ImsVTProvider.this.mOrientation);
                ImsVTProvider.nSetDeviceOrientation(ImsVTProvider.this.mId, ImsVTProvider.this.mOrientation);
            }
        };
    }

    public void setId(int id) {
        Log.d(TAG, "setId id = " + id + ", mId = " + this.mId);
        this.mId = id;
        this.mUsager.setId(id);
        if (mDefaultId == -10000) {
            mDefaultId = this.mId;
        }
    }

    public int getId() {
        return this.mId;
    }

    public void setSimId(int simid) {
        Log.d(TAG, "setSimId mSimId = " + simid);
        this.mSimId = simid;
        this.mUsager.setSimId(simid);
    }

    public int getSimId() {
        return this.mSimId;
    }

    public int getState() {
        return this.mState;
    }

    public void setState(int state) {
        this.mState |= state;
    }

    public boolean hasState(int state, int vtp_state) {
        return (state & vtp_state) == vtp_state;
    }

    public void resetState(int state) {
        Log.d(TAG, "resetState old mState = " + this.mState);
        this.mState = this.mState & (~state);
        Log.d(TAG, "resetState new mState = " + this.mState);
    }

    public void setDuringSessionRequest(boolean b) {
        synchronized (this.mSessionOperationFlagLock) {
            this.mDuringSessionRequestOperation = b;
            Log.w(TAG, "setDuringSessionRequest : " + this.mDuringSessionRequestOperation);
        }
    }

    public boolean getDuringSessionRequest() {
        return this.mDuringSessionRequestOperation;
    }

    public void setDuringSessionRemoteRequest(boolean b) {
        synchronized (this.mSessionOperationFlagLock) {
            this.mDuringSessionRemoteRequestOperation = b;
            Log.w(TAG, "setDuringSessionRemoteRequest : " + this.mDuringSessionRemoteRequestOperation);
        }
    }

    public boolean getDuringSessionRemoteRequest() {
        return this.mDuringSessionRemoteRequestOperation;
    }

    public void setMaCrash(boolean b) {
        this.mIsMaCrashed = b;
        Log.w(TAG, "setMaCrash : " + this.mIsMaCrashed);
    }

    public boolean getMaCrash() {
        return this.mIsMaCrashed;
    }

    public void setDataOff(boolean b) {
        this.mIsDataOff = b;
        Log.w(TAG, "setDataOff : " + this.mIsDataOff);
    }

    public boolean getDataOff() {
        return this.mIsDataOff;
    }

    public void setRoaming(boolean b) {
        this.mIsRoaming = b;
        Log.w(TAG, "setRoaming : " + this.mIsRoaming);
    }

    public boolean getRoaming() {
        return this.mIsRoaming;
    }

    public void setIsAudioCall(boolean result) {
        this.mIsAudioCall = result;
        Log.w(TAG, "setIsAudioCall : " + this.mIsAudioCall);
    }

    public boolean getIsAudioCall() {
        return this.mIsAudioCall;
    }

    public void handleMaErrorProcess() {
        Log.w(TAG, "[ID=" + this.mId + "] [handleMaErrorProcess] start");
        if (this.mMode == 65536) {
            Log.w(TAG, "[ID=" + this.mId + "] [handleMaErrorProcess] call end");
            return;
        }
        VideoProfile currentProfile = new VideoProfile(3, 2);
        VideoProfile reqestProfile = new VideoProfile(0, 2);
        int decision = doSessionModifyDecision(3, currentProfile, reqestProfile);
        if (1 == decision) {
            Log.e(TAG, "[handleMaErrorProcess] : should not in this case");
        } else if (2 == decision) {
            VideoProfile audioResponseProfile = new VideoProfile(0, 2);
            nResponseLocalConfig(this.mId, mVTProviderUtil.packFromVdoProfile(audioResponseProfile));
            setDuringSessionRemoteRequest(false);
            setMaCrash(true);
            this.mLastRequestVideoProfile = reqestProfile;
            nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(reqestProfile));
        } else if (3 == decision) {
            Log.d(TAG, "[ID=" + this.mId + "] [sendSessionModifyRequestByImsInternal] skip");
        } else if (decision == 0) {
            waitSessionOperationComplete();
            setMaCrash(true);
            this.mLastRequestVideoProfile = reqestProfile;
            nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(reqestProfile));
        }
        Log.d(TAG, "[ID=" + this.mId + "] [handleMaErrorProcess] Finish");
    }

    public void waitSessionOperationComplete() {
        while (true) {
            if (true == this.mDuringSessionRequestOperation || true == this.mDuringSessionRemoteRequestOperation) {
                try {
                    Log.w(TAG, "Wait for Session operation complete!");
                    Thread.sleep(500L);
                } catch (InterruptedException e) {
                }
            } else {
                return;
            }
        }
    }

    public void quitThread() {
        this.mProviderHandlerThread.quitSafely();
    }

    public VTSource getSource() {
        if (this.mSource != null) {
            return this.mSource;
        }
        Log.w(TAG, "Get dummy vtsource");
        return this.mDummySource;
    }

    public void waitInitComplete() {
        while (!this.mInitComplete && this.mMode != 65536) {
            try {
                Log.w(TAG, "Wait for initialization complete!");
                Thread.sleep(500L);
            } catch (InterruptedException e) {
            }
        }
    }

    protected static void updateDefaultId() {
        if (mVTProviderUtil.recordContain(mDefaultId)) {
            return;
        }
        if (mVTProviderUtil.recordSize() != 0) {
            mDefaultId = mVTProviderUtil.recordPopId();
        } else {
            mDefaultId = VT_PROVIDER_INVALIDE_ID;
        }
    }

    public void onSetCamera(String cameraId) {
        this.mProviderHandler.obtainMessage(2, cameraId).sendToTarget();
    }

    public void onSetPreviewSurface(Surface surface) {
        this.mProviderHandler.obtainMessage(3, surface).sendToTarget();
    }

    public void onSetDisplaySurface(Surface surface) {
        this.mProviderHandler.obtainMessage(4, surface).sendToTarget();
    }

    public void onSetDeviceOrientation(int rotation) {
        this.mProviderHandler.obtainMessage(5, rotation, 0).sendToTarget();
    }

    public void onSetZoom(float value) {
        this.mProviderHandler.obtainMessage(6, Float.valueOf(value)).sendToTarget();
    }

    public void onSendSessionModifyRequest(VideoProfile fromProfile, VideoProfile toProfile) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = fromProfile;
        args.arg2 = toProfile;
        this.mProviderHandler.obtainMessage(7, args).sendToTarget();
    }

    public void onSendSessionModifyResponse(VideoProfile responseProfile) {
        this.mProviderHandler.obtainMessage(8, responseProfile).sendToTarget();
    }

    public void onRequestCameraCapabilities() {
        this.mProviderHandler.obtainMessage(9).sendToTarget();
    }

    public void onRequestCallDataUsage() {
        this.mProviderHandler.obtainMessage(10).sendToTarget();
    }

    public void onSetPauseImage(Uri uri) {
        this.mProviderHandler.obtainMessage(11, uri).sendToTarget();
    }

    public void onSetUIMode(int mode) {
        this.mProviderHandler.obtainMessage(MSG_SET_UI_MODE, Integer.valueOf(mode)).sendToTarget();
        if (mode == 65536) {
            this.mIsDestroying = true;
        }
    }

    public void onSwitchFeature(int feature, boolean on) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = Integer.valueOf(feature);
        args.arg2 = Boolean.valueOf(on);
        this.mProviderHandler.obtainMessage(MSG_SWITCH_FEATURE, args).sendToTarget();
    }

    public void onSwitchRoaming(boolean isRoaming) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = Boolean.valueOf(isRoaming);
        this.mProviderHandler.obtainMessage(MSG_SWITCH_ROAMING, args).sendToTarget();
    }

    public void onResetWrapper() {
        this.mProviderHandler.obtainMessage(MSG_RESET_WRAPPER).sendToTarget();
    }

    public void onUpdateProfile(int state) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = Integer.valueOf(state);
        this.mProviderHandler.obtainMessage(MSG_UPDATE_PROFILE, args).sendToTarget();
    }

    public void onReceiveCallSessionEvent(int event) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = Integer.valueOf(event);
        this.mProviderHandler.obtainMessage(MSG_RECEIVE_CALL_SESSION_EVENT, args).sendToTarget();
    }

    public void setCameraInternal(String cameraId) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSetCamera] id : " + cameraId);
        waitInitComplete();
        if (this.mMode != 65536) {
            if (!this.mIsDestroying || cameraId == null) {
                int count = 0;
                if (cameraId == null) {
                    this.mHasRequestCamCap = false;
                }
                if (this.mMode == 1) {
                    Log.w(TAG, "[ID=" + this.mId + "] [onSetCamera] onSetCamera, not set camera when in BG, only save id=" + cameraId);
                } else if (cameraId != null) {
                    while (this.mUplinkState == 2) {
                        if (count < 10) {
                            Log.w(TAG, "[ID=" + this.mId + "] [onSetCamera] onSetCamera, Call hold or held, wait and retry");
                            try {
                                Thread.sleep(200L);
                            } catch (InterruptedException e) {
                            }
                            count++;
                        } else {
                            Log.w(TAG, "[ID=" + this.mId + "] [onSetCamera] onSetCamera, Call hold or held, ignore setCamera");
                            handleCallSessionEvent(SESSION_EVENT_ERROR_CAMERA_SET_IGNORED);
                            return;
                        }
                    }
                    if ((this.mUplinkState == 0 || this.mUplinkState == 4) && count > 0) {
                        Log.w(TAG, "[ID=" + this.mId + "] [onSetCamera] onSetCamera, recording stopped");
                        return;
                    }
                    mVTProviderUtil.updateCameraUsage(this.mId);
                    this.mSource.open(cameraId);
                    this.mSource.showMe();
                    nSetCamera(this.mId, Integer.valueOf(cameraId).intValue());
                } else {
                    this.mSource.hideMe();
                    this.mSource.close();
                }
                this.mCameraId = cameraId;
                Log.d(TAG, "[ID=" + this.mId + "] [onSetCamera] Finish");
                return;
            }
            Log.d(TAG, "[ID=" + this.mId + "] [onSetCamera] UI mode is destroying");
        }
    }

    public void setPreviewSurfaceInternal(Surface surface) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSetPreviewSurface] Start, surface: " + surface);
        waitInitComplete();
        if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSetPreviewSurface] call end");
            return;
        }
        this.mSource.setPreviewSurface(surface);
        nSetPreviewSurface(this.mId, surface);
        Log.d(TAG, "[ID=" + this.mId + "] [onSetPreviewSurface] Finish");
    }

    public void setDisplaySurfaceInternal(Surface surface) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSetDisplaySurface] Start, surface: " + surface);
        waitInitComplete();
        if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSetDisplaySurface] call end");
            return;
        }
        nSetDisplaySurface(this.mId, surface);
        Log.d(TAG, "[ID=" + this.mId + "] [onSetDisplaySurface] Finish");
    }

    public void setDeviceOrientationInternal(int rotation) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSetDeviceOrientation] Start, rotation: " + rotation);
        if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSetDeviceOrientation] call end");
            return;
        }
        waitInitComplete();
        if (this.mOrientation != rotation) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSetDeviceOrientation] device orientation change from " + this.mOrientation + " to " + rotation);
            this.mOrientation = rotation;
            this.mProviderHandler.removeCallbacks(this.mOrientationRunnable);
            this.mProviderHandler.postDelayed(this.mOrientationRunnable, (long) SystemProperties.getInt(MTK_VILTE_ROTATE_DELAY, 500));
        }
        Log.d(TAG, "[ID=" + this.mId + "] [onSetDeviceOrientation] Finish");
    }

    public void setZoomInternal(float value) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSetZoom] Start, value: " + value);
        waitInitComplete();
        if (this.mMode != 65536) {
            this.mSource.setZoom(value);
            Log.d(TAG, "[ID=" + this.mId + "] [onSetZoom] Finish");
        }
    }

    public void sendSessionModifyRequestInternal(VideoProfile fromProfile, VideoProfile toProfile) {
        if (mVTProviderUtil.getImsExtCallUtil().isImsFwkRequest(toProfile.getVideoState())) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] requst from IMS FWK, swith handle function");
            sendSessionModifyRequestByImsInternal(fromProfile, toProfile);
            return;
        }
        Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] Start, fromProfile:" + fromProfile.toString() + ", toProfile:" + toProfile.toString());
        waitInitComplete();
        if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] call end");
            return;
        }
        int mode = getSessionModifyAction(fromProfile, toProfile);
        if (mode != -1) {
            sendFgBgSessionModifyRequestInternal(fromProfile, toProfile, mode, true);
        } else if ((!mVTProviderUtil.isVideoCallOn(this.mSimId) || hasState(this.mState, 1) || hasState(this.mState, 2) || hasState(this.mState, 4)) && VideoProfile.isVideo(toProfile.getVideoState())) {
            rejectSessionModifyInternal(2, toProfile, fromProfile);
            Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] Reject it by state:" + this.mState);
        } else {
            int decision = doSessionModifyDecision(0, fromProfile, toProfile);
            if (1 == decision) {
                rejectSessionModifyInternal(2, toProfile, fromProfile);
            } else if (4 == decision) {
                Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] send request immediately");
                setDuringSessionRequest(true);
                this.mLastRequestVideoProfile = toProfile;
                nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(toProfile));
            } else if (decision == 0) {
                waitSessionOperationComplete();
                setDuringSessionRequest(true);
                this.mLastRequestVideoProfile = toProfile;
                nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(toProfile));
            } else {
                Log.e(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] should not in this case");
                rejectSessionModifyInternal(2, toProfile, fromProfile);
            }
            Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] Finish");
        }
    }

    protected void sendFgBgSessionModifyRequestInternal(VideoProfile fromProfile, VideoProfile toProfile, int mode, boolean needNotify) {
        setUIModeInternal(mode, needNotify);
    }

    public void sendSessionModifyRequestByImsInternal(VideoProfile fromProfile, VideoProfile toProfile) {
        Log.d(TAG, "[ID=" + this.mId + "] [sendSessionModifyRequestByImsInternal] Start, fromProfile:" + fromProfile.toString() + ", toProfile:" + toProfile.toString());
        if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [sendSessionModifyRequestByImsInternal] call end");
            return;
        }
        int newState = toProfile.getVideoState();
        int realNewState = mVTProviderUtil.getImsExtCallUtil().getRealRequest(newState);
        VideoProfile newToProfile = new VideoProfile(realNewState, toProfile.getQuality());
        int decision = doSessionModifyDecision(1, fromProfile, newToProfile);
        if (2 == decision) {
            VideoProfile audioResponseProfile = new VideoProfile(0, 2);
            nResponseLocalConfig(this.mId, mVTProviderUtil.packFromVdoProfile(audioResponseProfile));
            setDuringSessionRemoteRequest(false);
            setDataOff(true);
            this.mLastRequestVideoProfile = newToProfile;
            nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(newToProfile));
        } else if (3 == decision) {
            Log.d(TAG, "[ID=" + this.mId + "] [sendSessionModifyRequestByImsInternal] skip");
        } else if (decision == 0) {
            waitSessionOperationComplete();
            setDataOff(true);
            this.mLastRequestVideoProfile = newToProfile;
            nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(newToProfile));
        } else {
            Log.e(TAG, "[ID=" + this.mId + "] [sendSessionModifyRequestByImsInternal] should not in this case");
        }
        Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyRequest] Finish");
    }

    public void sendSessionModifyResponseInternal(VideoProfile responseProfile) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyResponse] Start, responseProfile:" + responseProfile.toString());
        waitInitComplete();
        if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyResponse] call end");
            return;
        }
        if (getDuringSessionRemoteRequest()) {
            nResponseLocalConfig(this.mId, mVTProviderUtil.packFromVdoProfile(responseProfile));
            if (VideoProfile.isAudioOnly(responseProfile.getVideoState())) {
                setIsAudioCall(true);
            } else {
                setIsAudioCall(false);
            }
        } else {
            Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyResponse] Already response, skip it");
        }
        setDuringSessionRemoteRequest(false);
        Log.d(TAG, "[ID=" + this.mId + "] [onSendSessionModifyResponse] Finish");
    }

    public void receiveSessionModifyResponseInternal(int status, VideoProfile requestedProfile, VideoProfile responseProfile) {
        receiveSessionModifyResponse(status, requestedProfile, responseProfile);
        if (getMaCrash()) {
            setState(4);
            setMaCrash(false);
        }
        if (getDataOff()) {
            int responseState = responseProfile.getVideoState();
            if (VideoProfile.isPaused(responseState) || VideoProfile.isAudioOnly(responseState)) {
                setState(1);
            } else {
                resetState(1);
            }
            setDataOff(false);
        }
        if (getRoaming()) {
            setState(2);
            setRoaming(false);
        }
        if (getDuringSessionRequest()) {
            setDuringSessionRequest(false);
        }
        if (status != 1) {
            return;
        }
        if (VideoProfile.isAudioOnly(responseProfile.getVideoState())) {
            setIsAudioCall(true);
        } else {
            setIsAudioCall(false);
        }
    }

    public void rejectSessionModifyInternal(int status, VideoProfile requestedProfile, VideoProfile responseProfile) {
        receiveSessionModifyResponse(status, requestedProfile, responseProfile);
    }

    public void requestCameraCapabilitiesInternal() {
        Log.d(TAG, "[ID=" + this.mId + "] [onRequestCameraCapabilities] Start");
        waitInitComplete();
        if (this.mMode != 65536) {
            if (this.mCameraId == null) {
                Log.w(TAG, "onRequestCameraCapabilities: not set camera yet");
                return;
            }
            float zoom_max = 1.0f;
            CameraCharacteristics camera_cs = this.mSource.getCameraCharacteristics();
            if (camera_cs == null) {
                Log.w(TAG, "onRequestCameraCapabilities: camera_cs null! Use default value.");
            } else {
                zoom_max = ((Float) camera_cs.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue();
            }
            boolean zoom_support = zoom_max > 1.0f;
            Log.d(TAG, "[ID=" + this.mId + "] [onRequestCameraCapabilities] Width: " + this.mPreviewSize.width + " Height: " + this.mPreviewSize.height + " zoom_support: " + zoom_support + " zoom_max: " + zoom_max);
            VideoProfile.CameraCapabilities camCap = new VideoProfile.CameraCapabilities(this.mPreviewSize.width, this.mPreviewSize.height, zoom_support, zoom_max);
            changeCameraCapabilities(camCap);
            this.mHasRequestCamCap = true;
            StringBuilder sb = new StringBuilder();
            sb.append("[ID=");
            sb.append(this.mId);
            sb.append("] [onRequestCameraCapabilities] Finish");
            Log.d(TAG, sb.toString());
        }
    }

    public void requestCallDataUsageInternal() {
        ImsVTUsageManager.ImsVTUsage usage;
        Log.d(TAG, "[ID=" + this.mId + "] [onRequestCallDataUsage] Start");
        waitInitComplete();
        if (this.mMode != 65536 && (usage = this.mUsager.requestCallDataUsage()) != null) {
            changeCallDataUsage(usage.getLteUsage());
            notifyWifiUsageChange(usage.getWifiUsage());
        }
    }

    public void setPauseImageInternal(Uri uri) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSetPauseImage] Start, uri: " + uri);
        waitInitComplete();
        if (this.mMode != 65536) {
            this.mSource.setReplacePicture(uri);
            Log.d(TAG, "[ID=" + this.mId + "] [onSetPauseImage] Finish");
        }
    }

    public void setUIModeInternal(int mode, boolean needNotify) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSetUIMode] Start, mode: " + mode);
        if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSetUIMode] call end");
            return;
        }
        if (mode == 4) {
            if (this.mMode != 65536) {
                this.mMode = 0;
            }
            this.mIsDuringResetMode = true;
            Thread resetModeRecoverThread = new Thread(new Runnable() { // from class: com.mediatek.ims.internal.ImsVTProvider.3
                @Override // java.lang.Runnable
                public synchronized void run() {
                    Log.d(ImsVTProvider.TAG, "[ID=" + ImsVTProvider.this.mId + "] [onSetUIMode] resetModeRecoverThread start");
                    try {
                        Thread.sleep(600L);
                        ImsVTProvider.this.mIsDuringResetMode = false;
                    } catch (InterruptedException e) {
                    }
                    Log.d(ImsVTProvider.TAG, "[ID=" + ImsVTProvider.this.mId + "] [onSetUIMode] resetModeRecoverThread finish");
                }
            });
            resetModeRecoverThread.start();
            if (needNotify) {
                notifyVideoPauseStateChange();
            }
        } else if (mode != 65536) {
            switch (mode) {
                case 0:
                    this.mMode = mode;
                    if (needNotify) {
                        notifyVideoPauseStateChange();
                    }
                    if (this.mCameraId != null) {
                        mVTProviderUtil.updateCameraUsage(this.mId);
                        this.mSource.open(this.mCameraId);
                        this.mSource.showMe();
                        nSetCamera(this.mId, Integer.valueOf(this.mCameraId).intValue());
                    } else {
                        this.mSource.hideMe();
                        this.mSource.close();
                    }
                    nSetUIMode(this.mId, mode);
                    break;
                case 1:
                    if (!this.mIsDuringResetMode) {
                        this.mMode = mode;
                        if (needNotify) {
                            notifyVideoPauseStateChange();
                        }
                        this.mSource.hideMe();
                        this.mSource.close();
                        nSetUIMode(this.mId, mode);
                        break;
                    } else {
                        Log.d(TAG, "[ID=" + this.mId + "] [onSetUIMode] reset mode (voice call) should not recv BG, skip");
                        break;
                    }
            }
        } else {
            if (true == this.mInitComplete) {
                requestCallDataUsageInternal();
            }
            this.mMode = mode;
            this.mIsDestroying = false;
            nFinalization(this.mId);
            quitThread();
        }
        Log.d(TAG, "[ID=" + this.mId + "] [onSetUIMode] Finish");
    }

    public void switchFeatureInternal(int feature, boolean on) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSwitchFeature] Start, feature: " + feature + ", on: " + on);
        waitInitComplete();
        if (this.mMode != 65536) {
            if (on) {
                nSwitchFeature(this.mId, feature, 1);
                resetState(1);
            } else {
                nSwitchFeature(this.mId, feature, 0);
            }
            Log.d(TAG, "[ID=" + this.mId + "] [onSwitchFeature] Finish");
        }
    }

    public void switchRoamingInternal(boolean isRoaming) {
        Log.d(TAG, "[ID=" + this.mId + "] [onSwitchRoaming] Start, phoneId: " + this.mSimId + ", on: " + isRoaming);
        waitInitComplete();
        if (!isRoaming) {
            resetState(2);
        } else if (this.mMode == 65536) {
            Log.d(TAG, "[ID=" + this.mId + "] [onSwitchRoaming] call end");
            return;
        } else {
            VideoProfile currentProfile = new VideoProfile(3, 2);
            VideoProfile reqestProfile = new VideoProfile(0, 2);
            int decision = doSessionModifyDecision(2, currentProfile, reqestProfile);
            if (1 == decision) {
                Log.e(TAG, "onSwitchRoaming() : should not in this case");
                return;
            } else if (2 == decision) {
                receiveSessionModifyResponseInternal(2, this.mLastRequestVideoProfile, this.mLastRequestVideoProfile);
                setRoaming(true);
                this.mLastRequestVideoProfile = reqestProfile;
                nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(reqestProfile));
                return;
            } else if (3 != decision) {
                if (decision == 0) {
                    waitSessionOperationComplete();
                    setRoaming(true);
                    this.mLastRequestVideoProfile = reqestProfile;
                    nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(reqestProfile));
                    setRoaming(true);
                }
            } else {
                return;
            }
        }
        Log.d(TAG, "[ID=" + this.mId + "] [onSwitchRoaming] Finish");
    }

    public void resetWrapperInternal() {
        Log.d(TAG, "[ID=" + this.mId + "] [onResetWrapper] Start");
        waitInitComplete();
        if (this.mMode != 65536) {
            if (1 == this.mMode) {
                setUIModeInternal(0, true);
            }
            Log.d(TAG, "[ID=" + this.mId + "] [onResetWrapper] Finish");
        }
    }

    public void updateProfileInternal(int state) {
        Log.d(TAG, "[ID=" + this.mId + "] [updateCurrentProfile] Start, state=" + state);
        VideoProfile newVideoprofile = new VideoProfile(state, 2);
        this.mCurrentProfile = newVideoprofile;
        Log.d(TAG, "[ID=" + this.mId + "] [updateCurrentProfile] Finish");
    }

    public void receiveCallSessionEventInternal(int event) {
        Log.d(TAG, "[ID=" + this.mId + "] [receiveCallSessionEventInternal] Start, event=" + event);
        if (event == 132) {
            notifyResume();
        }
        Log.d(TAG, "[ID=" + this.mId + "] [receiveCallSessionEventInternal] Finish");
    }

    public void notifyResume() {
    }

    public int doSessionModifyDecision(int new_action, VideoProfile fromProfile, VideoProfile toProfile) {
        if (new_action == 0) {
            if (getRoaming()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : from APP, reject due to during roaming");
                return 1;
            } else if (getMaCrash()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : from APP, reject due to during MA crash");
                return 1;
            } else {
                if (getDataOff()) {
                    if (!VideoProfile.isAudioOnly(toProfile.getVideoState())) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : from APP, reject due to during data off and not downgrade");
                        return 1;
                    }
                } else if (isDuringSessionModify()) {
                    boolean isCancelUpgrade = false;
                    if (toProfile.getVideoState() == mVTProviderUtil.getImsExtCallUtil().getUpgradeCancelFlag()) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : from APP, isCancelUpgrade is true");
                        isCancelUpgrade = true;
                    }
                    if (!isCancelUpgrade) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : from APP, reject due to during App action");
                        return 1;
                    } else if (getDuringSessionRemoteRequest()) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : from APP, reject due to during App action");
                        return 1;
                    } else {
                        Log.i(TAG, "doSessionModifyDecision : new_action : from APP, send cancel request");
                        return 4;
                    }
                }
                Log.i(TAG, "doSessionModifyDecision : new_action : from APP, wait");
                return 0;
            }
        } else if (1 == new_action) {
            if (getRoaming()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : Data off, skip due to during roaming");
                return 3;
            } else if (getMaCrash()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : Data off, skip due to during MA crash");
                return 3;
            } else if (getDataOff()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : Data off, reject due to data off");
                return 3;
            } else {
                if (isDuringSessionModify()) {
                    if (getDuringSessionRequest()) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : Data off, wait for App action");
                        return 0;
                    } else if (getDuringSessionRemoteRequest()) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : Data off, reject previous due to data off downgrade");
                        return 2;
                    }
                }
                Log.i(TAG, "doSessionModifyDecision : new_action : Data off, wait");
                return 0;
            }
        } else if (2 == new_action) {
            if (getRoaming()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : Roaming, skip due to during roaming");
                return 3;
            } else if (getMaCrash()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : Roaming, skip due to during MA crash");
                return 3;
            } else if (getDataOff()) {
                Log.i(TAG, "doSessionModifyDecision : new_action : Roaming, skip due to during data off");
                return 3;
            } else {
                if (isDuringSessionModify()) {
                    if (getDuringSessionRequest()) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : Roaming, wait for App action");
                        return 0;
                    } else if (getDuringSessionRemoteRequest()) {
                        Log.i(TAG, "doSessionModifyDecision : new_action : Roaming, reject previous due to roaming downgrade");
                        return 2;
                    }
                }
                Log.i(TAG, "doSessionModifyDecision : new_action : Roaming, wait");
                return 0;
            }
        } else if (3 != new_action) {
            Log.i(TAG, "doSessionModifyDecision : new_action : wait");
            return 0;
        } else if (getRoaming()) {
            Log.i(TAG, "doSessionModifyDecision : new_action : MA crash, skip due to during roaming");
            return 3;
        } else if (getMaCrash()) {
            Log.i(TAG, "doSessionModifyDecision : new_action : MA crash, skip due to during MA crash");
            return 3;
        } else if (getDataOff()) {
            Log.i(TAG, "doSessionModifyDecision : new_action : MA crash, skip due to during data off");
            return 3;
        } else {
            if (isDuringSessionModify()) {
                if (getDuringSessionRequest()) {
                    Log.i(TAG, "doSessionModifyDecision : new_action : MA crash, wait for App action");
                    return 0;
                } else if (getDuringSessionRemoteRequest()) {
                    Log.i(TAG, "doSessionModifyDecision : new_action : MA crash, reject previous due to MA crash");
                    return 2;
                }
            }
            Log.i(TAG, "doSessionModifyDecision : new_action : MA crash, wait");
            return 0;
        }
    }

    @Override // com.mediatek.ims.internal.VTSource.EventCallback
    public void onError() {
        Log.d(TAG, "[ID=" + this.mId + "] [onError] Start");
        handleMaErrorProcess();
        handleCallSessionEvent(SESSION_EVENT_ERROR_CAMERA_CRASHED);
        Log.d(TAG, "[ID=" + this.mId + "] [onError] Finish");
    }

    @Override // com.mediatek.ims.internal.VTSource.EventCallback
    public void onOpenSuccess() {
        Log.d(TAG, "[ID=" + this.mId + "] [onOpenSuccess] Start");
        handleCallSessionEvent(6);
        Log.d(TAG, "[ID=" + this.mId + "] [onOpenSuccess] Finish");
    }

    @Override // com.mediatek.ims.internal.VTSource.EventCallback
    public void onOpenFail() {
        Log.d(TAG, "[ID=" + this.mId + "] [onOpenFail] Start");
        handleCallSessionEvent(5);
        Log.d(TAG, "[ID=" + this.mId + "] [onOpenFail] Finish");
    }

    public void addVideoProviderStateListener(VideoProviderStateListener listener) {
        this.mListeners.add(listener);
    }

    public void removeVideoProviderStateListener(VideoProviderStateListener listener) {
        this.mListeners.remove(listener);
    }

    public void notifyVideoPauseStateChange() {
        Log.d(TAG, "[ID=" + this.mId + "] [notifyVideoPauseStateChange] Start");
        boolean isVideoStatePause = false;
        if (this.mMode == 0) {
            isVideoStatePause = false;
        } else if (1 == this.mMode) {
            isVideoStatePause = true;
        }
        for (VideoProviderStateListener listener : this.mListeners) {
            if (listener != null) {
                listener.onReceivePauseState(isVideoStatePause);
                Log.d(TAG, "[ID=" + this.mId + "] [notifyVideoPauseStateChange] isVideoStatePause: " + isVideoStatePause);
            }
        }
        Log.d(TAG, "[ID=" + this.mId + "] [notifyVideoPauseStateChange] Finish");
    }

    public void notifyWifiUsageChange(long usage) {
        Log.d(TAG, "[ID=" + this.mId + "] [notifyWifiUsageChange] Start, usage : " + usage);
        for (VideoProviderStateListener listener : this.mListeners) {
            if (listener != null) {
                listener.onReceiveWiFiUsage(usage);
            }
        }
        Log.d(TAG, "[ID=" + this.mId + "] [notifyWifiUsageChange] Finish");
    }

    protected boolean isDuringSessionModify() {
        if (getDuringSessionRequest() || getDuringSessionRemoteRequest()) {
            return true;
        }
        return false;
    }

    protected boolean isDuringNotAppDowngrade() {
        if (getMaCrash()) {
            return true;
        }
        if ((!getDataOff() || !VideoProfile.isAudioOnly(this.mLastRequestVideoProfile.getVideoState())) && !getRoaming()) {
            return false;
        }
        return true;
    }

    protected int getSessionModifyAction(VideoProfile fromProfile, VideoProfile toProfile) {
        if (this.mMode != 1 && VideoProfile.isPaused(toProfile.getVideoState())) {
            return 1;
        }
        if (this.mMode != 1 || VideoProfile.isPaused(toProfile.getVideoState())) {
            return -1;
        }
        return 0;
    }

    protected void reSendLastSessionModify() {
        Log.d(TAG, "[ID=" + this.mId + "] [reSendLastSessionModify] Profile:" + this.mLastRequestVideoProfile.toString());
        try {
            Thread.sleep(500L);
        } catch (InterruptedException e) {
        }
        nRequestPeerConfig(this.mId, mVTProviderUtil.packFromVdoProfile(this.mLastRequestVideoProfile));
    }

    public static void postEventFromNative(int msg, int id, int arg1, int arg2, int arg3, Object obj1, Object obj2, Object obj3) {
        int state;
        VTSource.Resolution[] cams_info;
        VTSource.Resolution[] cams_info2;
        int major_sim_id;
        ImsVTProvider vp = mVTProviderUtil.recordGet(id);
        if (vp != null || msg == 8002 || msg == 4014 || msg == 4019 || id == -10) {
            Log.i(TAG, "[ID=" + id + "] [postEventFromNative]: " + msg);
            if (msg != 4008) {
                switch (msg) {
                    case 1001:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case 1002:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case 1003:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case 1004:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case 1005:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case 1006:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case 1007:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case 1008:
                    case 1009:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END");
                        vp.getSource().release();
                        mVTProviderUtil.recordRemove(id);
                        updateDefaultId();
                        vp.handleCallSessionEvent(msg);
                        vp.mProviderHandlerThread.quitSafely();
                        vp.mMode = 65536;
                        return;
                    case 1010:
                        Log.d(TAG, "postEventFromNative : msg = MSG_START_COUNTER");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case SESSION_EVENT_PEER_CAMERA_OPEN /* 1011 */:
                        Log.d(TAG, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case SESSION_EVENT_PEER_CAMERA_CLOSE /* 1012 */:
                        Log.d(TAG, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE");
                        vp.handleCallSessionEvent(msg);
                        return;
                    case SESSION_EVENT_LOCAL_BW_READY_IND /* 1013 */:
                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BW_READY_IND");
                        vp.handleCallSessionEvent(msg);
                        return;
                    default:
                        int count = 0;
                        switch (msg) {
                            case SESSION_EVENT_RECV_SESSION_CONFIG_REQ /* 4001 */:
                                Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ");
                                VideoProfile currentProfile = new VideoProfile(3, 2);
                                VideoProfile requestProfile = mVTProviderUtil.unPackToVdoProfile((String) obj1);
                                if ((!mVTProviderUtil.isVideoCallOn(vp.mSimId) || vp.hasState(vp.mState, 1) || vp.hasState(vp.mState, 2) || vp.hasState(vp.mState, 4)) && VideoProfile.isVideo(requestProfile.getVideoState())) {
                                    VideoProfile audioProfile = new VideoProfile(0, 2);
                                    vp.mLastRequestVideoProfile = audioProfile;
                                    vp.onSendSessionModifyResponse(vp.mLastRequestVideoProfile);
                                    Log.d(TAG, "[ID=" + vp.getId() + "] [onSendSessionModifyRequest] Reject it by state:" + vp.mState);
                                    return;
                                }
                                int decision = vp.doSessionModifyDecision(0, currentProfile, requestProfile);
                                if (1 == decision) {
                                    vp.setDuringSessionRemoteRequest(true);
                                    vp.onSendSessionModifyResponse(vp.mLastRequestVideoProfile);
                                    return;
                                } else if (decision == 0) {
                                    vp.waitSessionOperationComplete();
                                    if (!VideoProfile.isBidirectional(requestProfile.getVideoState())) {
                                        Log.d(TAG, "Do onSendSessionModifyResponse directly for not upgrade case");
                                        vp.setDuringSessionRemoteRequest(true);
                                        vp.onSendSessionModifyResponse(requestProfile);
                                        return;
                                    }
                                    vp.setDuringSessionRemoteRequest(true);
                                    vp.receiveSessionModifyRequest(requestProfile);
                                    return;
                                } else {
                                    Log.e(TAG, "[ID=" + vp.getId() + "] [onReceiveSessionModifyRequest] should not in this case");
                                    vp.setDuringSessionRemoteRequest(true);
                                    vp.onSendSessionModifyResponse(requestProfile);
                                    return;
                                }
                            case SESSION_EVENT_RECV_SESSION_CONFIG_RSP /* 4002 */:
                                Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP");
                                if (vp.mMode == 65536) {
                                    Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (call end)");
                                    return;
                                }
                                VideoProfile responseProfile = mVTProviderUtil.unPackToVdoProfile((String) obj2);
                                if (responseProfile.getVideoState() == mVTProviderUtil.getImsExtCallUtil().getUpgradeCancelFlag()) {
                                    if (arg1 != 4) {
                                        switch (arg1) {
                                            case 0:
                                                state = 1;
                                                break;
                                            case 1:
                                                state = ConnectionEx.VideoProvider.SESSION_MODIFY_CANCEL_UPGRADE_FAIL_AUTO_DOWNGRADE;
                                                break;
                                            default:
                                                state = ConnectionEx.VideoProvider.SESSION_MODIFY_CANCEL_UPGRADE_FAIL;
                                                break;
                                        }
                                    } else {
                                        state = ConnectionEx.VideoProvider.SESSION_MODIFY_CANCEL_UPGRADE_FAIL_REMOTE_REJECT_UPGRADE;
                                    }
                                } else if (arg1 != 0) {
                                    if (arg1 != 4) {
                                        switch (arg1) {
                                            case 7:
                                            case 8:
                                                state = 3;
                                                break;
                                            case 9:
                                                state = 4;
                                                break;
                                            case 10:
                                                if (!vp.isDuringNotAppDowngrade()) {
                                                    state = 5;
                                                    break;
                                                } else {
                                                    vp.reSendLastSessionModify();
                                                    return;
                                                }
                                            default:
                                                switch (arg1) {
                                                    case 12:
                                                    case 13:
                                                        vp.reSendLastSessionModify();
                                                        return;
                                                    default:
                                                        state = 2;
                                                        break;
                                                }
                                        }
                                    } else {
                                        vp.reSendLastSessionModify();
                                        return;
                                    }
                                } else if ((!mVTProviderUtil.isVideoCallOn(vp.mSimId) || vp.hasState(vp.mState, 1) || vp.hasState(vp.mState, 2) || vp.hasState(vp.mState, 4)) && VideoProfile.isVideo(responseProfile.getVideoState())) {
                                    VideoProfile audioProfile2 = new VideoProfile(0, 2);
                                    vp.mLastRequestVideoProfile = audioProfile2;
                                    vp.reSendLastSessionModify();
                                    return;
                                } else {
                                    state = 1;
                                }
                                vp.receiveSessionModifyResponseInternal(state, mVTProviderUtil.unPackToVdoProfile((String) obj1), mVTProviderUtil.unPackToVdoProfile((String) obj2));
                                return;
                            case SESSION_EVENT_HANDLE_CALL_SESSION_EVT /* 4003 */:
                                Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT");
                                vp.handleCallSessionEvent(msg);
                                return;
                            case SESSION_EVENT_PEER_SIZE_CHANGED /* 4004 */:
                                Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED");
                                vp.changePeerDimensions(arg1, arg2);
                                return;
                            case SESSION_EVENT_LOCAL_SIZE_CHANGED /* 4005 */:
                                Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED");
                                if (vp.mPreviewSize.width == arg1 && vp.mPreviewSize.height == arg2) {
                                    Log.d(TAG, "local size no change => Do not notify!");
                                    return;
                                }
                                vp.mPreviewSize.width = arg1;
                                vp.mPreviewSize.height = arg2;
                                Log.d(TAG, "Update preview size, w=" + vp.mPreviewSize.width + ", h=" + vp.mPreviewSize.height);
                                if (true == vp.mHasRequestCamCap) {
                                    vp.onRequestCameraCapabilities();
                                    return;
                                } else {
                                    Log.d(TAG, "Not request yet, just only update default w/h");
                                    return;
                                }
                            case SESSION_EVENT_DATA_USAGE_CHANGED /* 4006 */:
                                Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED");
                                return;
                            default:
                                switch (msg) {
                                    case SESSION_EVENT_RECV_CANCEL_SESSION_IND /* 4010 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RECV_CANCEL_SESSION_IND");
                                        VideoProfile IndicationProfile = mVTProviderUtil.unPackToVdoProfile((String) obj1);
                                        vp.setDuringSessionRemoteRequest(false);
                                        vp.receiveSessionModifyRequest(IndicationProfile);
                                        return;
                                    case SESSION_EVENT_DATA_PATH_PAUSE /* 4011 */:
                                    case SESSION_EVENT_DATA_PATH_RESUME /* 4012 */:
                                        Log.d(TAG, "postEventFromNative : msg = EVENT_DATA_PATH_CHANGED");
                                        if (!ImsVTProviderUtil.sIsNoCameraMode) {
                                            vp.handleCallSessionEvent(msg);
                                            return;
                                        }
                                        return;
                                    case SESSION_EVENT_DEFAULT_LOCAL_SIZE /* 4013 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_DEFAULT_LOCAL_SIZE, W=" + arg1 + ", H=" + arg2);
                                        vp.mPreviewSize.width = arg1;
                                        vp.mPreviewSize.height = arg2;
                                        return;
                                    case SESSION_EVENT_GET_CAP /* 4014 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_GET_CAP");
                                        if (ImsVTProviderUtil.sIsNoCameraMode) {
                                            cams_info = VTDummySource.getAllCameraResolutions();
                                        } else {
                                            cams_info = VTSource.getAllCameraResolutions();
                                        }
                                        if (cams_info == null) {
                                            Log.e(TAG, "Error: sensor resolution = NULL");
                                        }
                                        nSetCameraParameters(id, cams_info);
                                        return;
                                    case SESSION_EVENT_LOCAL_BUFFER /* 4015 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BUFFER");
                                        vp.getSource().stopRecording();
                                        vp.getSource().setRecordSurface((Surface) obj3);
                                        vp.getSource().startRecording();
                                        vp.mPauseCount = 0;
                                        return;
                                    case SESSION_EVENT_UPLINK_STATE_CHANGE /* 4016 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_UPLINK_STATE_CHANGE");
                                        vp.mUplinkState = arg1;
                                        switch (arg1) {
                                            case 0:
                                                if (vp.getSource() != null) {
                                                    vp.getSource().stopRecording();
                                                    vp.getSource().setRecordSurface(null);
                                                    return;
                                                }
                                                return;
                                            case 1:
                                            default:
                                                return;
                                            case 2:
                                                if (arg2 == 1) {
                                                    if (vp.mPauseCount == 0) {
                                                        vp.getSource().stopRecording();
                                                    }
                                                    vp.mPauseCount++;
                                                    return;
                                                }
                                                return;
                                            case 3:
                                                if (arg2 == 1) {
                                                    vp.mPauseCount--;
                                                    if (vp.mPauseCount == 0) {
                                                        vp.getSource().startRecording();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            case 4:
                                                if (vp.getSource() != null) {
                                                    vp.getSource().stopRecordingAndPreview();
                                                    return;
                                                }
                                                return;
                                        }
                                    case SESSION_EVENT_RESTART_CAMERA /* 4017 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_RESTART_CAMERA");
                                        vp.getSource().restart();
                                        return;
                                    case SESSION_EVENT_GET_SENSOR_INFO /* 4018 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_GET_SENSOR_INFO");
                                        VTSource.Resolution[] cams_info3 = VTSource.getAllCameraResolutions();
                                        if (cams_info3 == null) {
                                            Log.e(TAG, "Error: sensor resolution = NULL");
                                        }
                                        nSetCameraParametersOnly(cams_info3);
                                        return;
                                    case SESSION_EVENT_GET_CAP_WITH_SIM /* 4019 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_GET_CAP_WITH_SIM");
                                        if (ImsVTProviderUtil.sIsNoCameraMode) {
                                            cams_info2 = VTDummySource.getAllCameraResolutions();
                                        } else {
                                            cams_info2 = VTSource.getAllCameraResolutions();
                                        }
                                        if (cams_info2 == null) {
                                            Log.e(TAG, "Error: sensor resolution = NULL");
                                        }
                                        int ImsCount = 1;
                                        try {
                                            ImsCount = mVTProviderUtil.getImsExtCallUtil().getModemMultiImsCount();
                                        } catch (ImsException e) {
                                            Log.e(TAG, "getModemMultiImsCount with exception:" + e);
                                        }
                                        if (ImsCount <= 1) {
                                            while (mVTProviderUtil.getImsExtCallUtil().isCapabilitySwitching()) {
                                                try {
                                                    Thread.sleep(200L);
                                                } catch (InterruptedException e2) {
                                                }
                                            }
                                            major_sim_id = ImsCommonUtil.getMainCapabilityPhoneId();
                                        } else {
                                            major_sim_id = id;
                                        }
                                        int major_sim_id2 = major_sim_id;
                                        mVTProviderUtil.waitSimStateStable(major_sim_id2);
                                        if (mVTProviderUtil.getSimCardState(major_sim_id2) != 11) {
                                            String iccid_prop = ImsVTProviderUtil.PROPERTY_RIL_ICCID_SIM + (major_sim_id2 + 1);
                                            String iccid = SystemProperties.get(iccid_prop, MtkPhoneConstants.MVNO_TYPE_NONE);
                                            String iccid2 = iccid;
                                            while (iccid2.equals(MtkPhoneConstants.MVNO_TYPE_NONE) && count < 50) {
                                                try {
                                                    Thread.sleep(200L);
                                                } catch (InterruptedException e3) {
                                                }
                                                iccid2 = SystemProperties.get(iccid_prop, MtkPhoneConstants.MVNO_TYPE_NONE);
                                                count++;
                                            }
                                            if (iccid2.equals("N/A") || count >= 50) {
                                                Log.d(TAG, "SIM state ABSENT");
                                                major_sim_id2 = -1;
                                            } else {
                                                Log.d(TAG, "SIM state READY, iccid=" + iccid2);
                                            }
                                        }
                                        nSetCameraParametersWithSim(id, major_sim_id2, cams_info2);
                                        return;
                                    case SESSION_EVENT_PACKET_LOSS_RATE /* 4020 */:
                                        Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_PACKET_LOSS_RATE");
                                        Log.d(TAG, "Packet loss rate = " + arg1 + "%");
                                        if (arg1 >= 0 && arg1 <= 5) {
                                            Log.d(TAG, "Packet loss rate low, notify: 4023");
                                            vp.handleCallSessionEvent(SESSION_EVENT_PACKET_LOSS_RATE_LOW);
                                        } else if (5 < arg1 && arg1 <= 10) {
                                            Log.d(TAG, "Packet loss rate medium, notify: 4022");
                                            vp.handleCallSessionEvent(SESSION_EVENT_PACKET_LOSS_RATE_MEDIUM);
                                        } else if (10 < arg1) {
                                            Log.d(TAG, "Packet loss rate high, notify: 4021");
                                            vp.handleCallSessionEvent(SESSION_EVENT_PACKET_LOSS_RATE_HIGH);
                                        } else {
                                            Log.w(TAG, "Packet loss rate incorrect");
                                        }
                                        boolean RTP_DBG_ON = SystemProperties.get("persist.vendor.vt.RTPInfo").equals(RadioCapabilitySwitchUtil.IMSI_READY);
                                        if (RTP_DBG_ON) {
                                            vp.changeCallDataUsage((-1) * arg1);
                                            return;
                                        }
                                        return;
                                    default:
                                        switch (msg) {
                                            case SESSION_EVENT_ERROR_SERVICE /* 8001 */:
                                                Log.d(TAG, "postEventFromNative : msg = MSG_ERROR_SERVICE");
                                                vp.getSource().release();
                                                mVTProviderUtil.recordRemove(id);
                                                updateDefaultId();
                                                vp.handleCallSessionEvent(msg);
                                                return;
                                            case SESSION_EVENT_ERROR_SERVER_DIED /* 8002 */:
                                                Log.d(TAG, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED");
                                                mVTProviderUtil.quitAllThread();
                                                mVTProviderUtil.recordRemoveAll();
                                                updateDefaultId();
                                                if (vp != null) {
                                                    vp.getSource().release();
                                                    vp.handleCallSessionEvent(msg);
                                                    vp.mProviderHandlerThread.quitSafely();
                                                }
                                                ImsVTProviderUtil.getInstance().reInitRefVTP();
                                                return;
                                            case SESSION_EVENT_ERROR_CAMERA_CRASHED /* 8003 */:
                                                Log.d(TAG, "postEventFromNative : msg = MSG_ERROR_CAMERA_CRASHED");
                                                vp.handleMaErrorProcess();
                                                vp.handleCallSessionEvent(msg);
                                                return;
                                            case SESSION_EVENT_ERROR_CODEC /* 8004 */:
                                                Log.d(TAG, "postEventFromNative : msg = MSG_ERROR_CODEC");
                                                vp.handleCallSessionEvent(msg);
                                                return;
                                            case SESSION_EVENT_ERROR_REC /* 8005 */:
                                                Log.d(TAG, "postEventFromNative : msg = MSG_ERROR_REC");
                                                vp.handleCallSessionEvent(msg);
                                                return;
                                            case SESSION_EVENT_ERROR_CAMERA_SET_IGNORED /* 8006 */:
                                                Log.d(TAG, "postEventFromNative : msg = MSG_ERROR_CAMERA_SET_IGNORED");
                                                vp.handleCallSessionEvent(msg);
                                                return;
                                            default:
                                                Log.d(TAG, "postEventFromNative : msg = UNKNOWB");
                                                return;
                                        }
                                }
                        }
                }
            } else {
                Log.d(TAG, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE");
                if (!ImsVTProviderUtil.sIsNoCameraMode) {
                    vp.handleCallSessionEvent(msg);
                }
            }
        } else {
            Log.e(TAG, "Error: post event to Call is already release or has happen error before!");
        }
    }
}
