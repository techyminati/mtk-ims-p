package com.mediatek.ims.internal;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.OutputConfiguration;
import android.net.Uri;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Range;
import android.view.Surface;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class VTSource {
    public static final int CAMERA_HARWARE_LEVEL_1 = 1;
    public static final int CAMERA_HARWARE_LEVEL_3 = 3;
    private static final String TAG = "VT SRC";
    private static final int TIME_OUT_MS = 6500;
    public static final int VT_SRV_CALL_3G = 1;
    public static final int VT_SRV_CALL_4G = 2;
    protected static Resolution[] sCameraResolutions;
    protected static Context sContext;
    private Surface mCachedPreviewSurface;
    private Surface mCachedRecordSurface;
    private final CameraManager mCameraManager;
    private final EventCallback mEventCallBack;
    private boolean mIsWaitRelease;
    private AtomicInteger mMessageId;
    private final int mMode;
    private boolean mNeedRecordStream;
    private Handler mRequestHandler;
    private HandlerThread mRequestThread;
    private boolean mStopPreviewAndRecord;
    private String mTAG;

    /* loaded from: classes.dex */
    public interface EventCallback {
        void onError();

        void onOpenFail();

        void onOpenSuccess();
    }

    /* loaded from: classes.dex */
    public static final class Resolution {
        int mDegree;
        int mFacing;
        int mHal;
        int mId;
        int mMaxHeight;
        int mMaxWidth;

        public String toString() {
            return " mId: " + this.mId + " mMaxWidth: " + this.mMaxWidth + " mMaxHeight: " + this.mMaxHeight + " mDegree: " + this.mDegree + " mFacing: " + this.mFacing + " mHal: " + this.mHal;
        }
    }

    public static void setContext(Context context) {
        Log.d(TAG, "[STC] [setContext] context:" + context);
        sContext = context;
    }

    public static Resolution[] getAllCameraResolutions() {
        Log.d(TAG, "[STC] [getAllCameraResolutions] Start");
        if (sCameraResolutions == null) {
            ArrayList<Resolution> sensorResolutions = new ArrayList<>();
            CameraManager cameraManager = (CameraManager) sContext.getSystemService("camera");
            try {
                String[] cameraIds = cameraManager.getCameraIdList();
                for (String cameraId : cameraIds) {
                    Resolution resolution = new Resolution();
                    CameraCharacteristics characteristics = cameraManager.getCameraCharacteristics(cameraId);
                    Rect sensorRes = (Rect) characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
                    int sensorOrientation = ((Integer) characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
                    int facing = ((Integer) characteristics.get(CameraCharacteristics.LENS_FACING)).intValue();
                    int hal = 3;
                    if (2 == ((Integer) characteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).intValue()) {
                        hal = 1;
                    }
                    resolution.mId = Integer.valueOf(cameraId).intValue();
                    resolution.mMaxWidth = sensorRes.width();
                    resolution.mMaxHeight = sensorRes.width();
                    resolution.mDegree = sensorOrientation;
                    resolution.mFacing = facing;
                    resolution.mHal = hal;
                    Log.w(TAG, "[getAllCameraResolutions] " + resolution);
                    sensorResolutions.add(resolution);
                }
            } catch (Exception e) {
                Log.e(TAG, "[STC] [getAllCameraResolutions] getCameraIdList with exception:" + e);
            }
            if (sensorResolutions.size() > 0) {
                sCameraResolutions = new Resolution[sensorResolutions.size()];
                sCameraResolutions = (Resolution[]) sensorResolutions.toArray(sCameraResolutions);
            }
            Log.d(TAG, "[STC] [getAllCameraResolutions] resolution size:" + sensorResolutions.size());
        }
        Log.d(TAG, "[STC] [getAllCameraResolutions] Finish");
        return sCameraResolutions;
    }

    public VTSource(int mode, int callId, EventCallback cb) {
        this.mIsWaitRelease = false;
        this.mStopPreviewAndRecord = false;
        this.mMessageId = new AtomicInteger(0);
        this.mTAG = "VT SRC - " + callId;
        String str = this.mTAG;
        Log.d(str, "[INT] [VTSource] Start, mode: " + mode);
        this.mMode = mode;
        this.mEventCallBack = cb;
        this.mCameraManager = (CameraManager) sContext.getSystemService("camera");
        createRequestThreadAndHandler();
        Log.d(this.mTAG, "[INT] [VTSource] Finish");
    }

    public VTSource() {
        this.mIsWaitRelease = false;
        this.mStopPreviewAndRecord = false;
        this.mMessageId = new AtomicInteger(0);
        this.mMode = 2;
        this.mEventCallBack = null;
        this.mCameraManager = null;
    }

    public void setReplacePicture(Uri uri) {
        String str = this.mTAG;
        Log.d(str, "[INT] [setReplacePicture] uri:" + uri);
    }

    public void open(String cameraId) {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [open] Start, id : " + cameraId + " [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [open] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(0, messageId, 0, cameraId).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [open] Finish [" + messageId + "]");
    }

    public void close() {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [close] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [close] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(9, messageId, 0).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [close] Finish [" + messageId + "]");
    }

    public void restart() {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [restart] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [restart] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(12, messageId, 0).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [restart] Finish [" + messageId + "]");
    }

    public void release() {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [release] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [release] Fail [" + messageId + "]");
            return;
        }
        this.mIsWaitRelease = true;
        this.mRequestHandler.obtainMessage(10, messageId, 0).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        this.mRequestHandler.removeCallbacksAndMessages(null);
        this.mRequestThread.quitSafely();
        this.mRequestThread = null;
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [release] Finish [" + messageId + "]");
    }

    public void setRecordSurface(Surface surface) {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [setRecordSurface] Start, surface:" + surface + " [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [setRecordSurface] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(3, messageId, 0, surface).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [setRecordSurface] Finish [" + messageId + "]");
    }

    public void setPreviewSurface(Surface surface) {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [setPreviewSurface] Start, surface:" + surface + " [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            Log.d(this.mTAG, "[INT] [setPreviewSurface] Fail");
            return;
        }
        if (surface == null) {
            this.mRequestHandler.obtainMessage(2, messageId, 0).sendToTarget();
        } else {
            if (this.mCachedPreviewSurface != null) {
                String[] oriSurfaceToken = this.mCachedPreviewSurface.toString().split("@");
                String[] newSurfaceToken = surface.toString().split("@");
                String str2 = this.mTAG;
                Log.d(str2, "[INT] [setPreviewSurface] oriSurfaceToken[1]:" + oriSurfaceToken[1] + ", newSurfaceToken[1]:" + newSurfaceToken[1]);
                if (newSurfaceToken[1].equals(oriSurfaceToken[1])) {
                    String str3 = this.mTAG;
                    Log.d(str3, "[INT] [setPreviewSurface] surface not changed, ignore! [" + messageId + "]");
                    return;
                }
            }
            this.mRequestHandler.obtainMessage(1, messageId, 0, surface).sendToTarget();
        }
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str4 = this.mTAG;
        Log.d(str4, "[INT] [setPreviewSurface] Finish [" + messageId + "]");
    }

    public void setZoom(float zoomValue) {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [setZoom] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [setZoom] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(7, messageId, 0, Float.valueOf(zoomValue)).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [setZoom] Finish [" + messageId + "]");
    }

    public CameraCharacteristics getCameraCharacteristics() {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [getCameraCharacteristics] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [getCameraCharacteristics] Fail [" + messageId + "]");
            return null;
        }
        CameraCharacteristics[] characteristicses = new CameraCharacteristics[1];
        this.mRequestHandler.obtainMessage(8, messageId, 0, characteristicses).sendToTarget();
        if (waitDone(this.mRequestHandler)) {
            String str3 = this.mTAG;
            Log.d(str3, "[INT] [getCameraCharacteristics] Finish [" + messageId + "]");
            return characteristicses[0];
        }
        this.mEventCallBack.onError();
        String str4 = this.mTAG;
        Log.d(str4, "[INT] [getCameraCharacteristics] Finish (null) [" + messageId + "]");
        return null;
    }

    public void startRecording() {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [startRecording] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [startRecording] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(4, messageId, 0).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [startRecording] Finish [" + messageId + "]");
    }

    public void stopRecording() {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [stopRecording] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [stopRecording] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(5, messageId, 0).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [stopRecording] Finish [" + messageId + "]");
    }

    public void stopRecordingAndPreview() {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [stopRecordingAndPreview] Start [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            String str2 = this.mTAG;
            Log.d(str2, "[INT] [stopRecordingAndPreview] Fail [" + messageId + "]");
            return;
        }
        this.mRequestHandler.obtainMessage(13, messageId, 0).sendToTarget();
        this.mStopPreviewAndRecord = true;
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str3 = this.mTAG;
        Log.d(str3, "[INT] [stopRecordingAndPreview] Finish [" + messageId + "]");
    }

    public void hideMe() {
        Log.d(this.mTAG, "[INT] [hideMe]");
    }

    public void showMe() {
        Log.d(this.mTAG, "[INT] [showMe]");
    }

    public void setDeviceOrientation(int degree) {
        int messageId = this.mMessageId.incrementAndGet();
        String str = this.mTAG;
        Log.d(str, "[INT] [setDeviceOrientation] Start, degree : " + degree + " [" + messageId + "]");
        if (IsHandlerThreadUnavailable()) {
            Log.d(this.mTAG, "[INT] [setDeviceOrientation] Fail");
            return;
        }
        this.mRequestHandler.obtainMessage(11, messageId, 0, Integer.valueOf(degree)).sendToTarget();
        boolean ret = waitDone(this.mRequestHandler);
        if (!ret) {
            this.mEventCallBack.onError();
        }
        String str2 = this.mTAG;
        Log.d(str2, "[INT] [setDeviceOrientation] Finish [" + messageId + "]");
    }

    private void createRequestThreadAndHandler() {
        if (this.mRequestThread == null) {
            this.mRequestThread = new HandlerThread("VTSource-Request");
            this.mRequestThread.start();
            this.mRequestHandler = new DeviceHandler(this.mRequestThread.getLooper(), this.mMode == 2, this.mEventCallBack);
        }
    }

    private boolean IsHandlerThreadUnavailable() {
        boolean z = false;
        if (this.mRequestThread != null && !this.mIsWaitRelease) {
            return false;
        }
        String str = this.mTAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Thread = null:");
        if (this.mRequestThread == null) {
            z = true;
        }
        sb.append(z);
        sb.append(", mIsWaitRelease:");
        sb.append(this.mIsWaitRelease);
        Log.d(str, sb.toString());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DeviceHandler extends Handler {
        private static final int MAX_RETRY_OPEN_CAMERA_COUNT = 25;
        public static final int MSG_CLOSE_CAMERA = 9;
        public static final int MSG_DEVICE_ORIENTATION = 11;
        public static final int MSG_GET_CAMERA_CHARACTERISTICS = 8;
        public static final int MSG_OPEN_CAMERA = 0;
        public static final int MSG_PERFORM_ZOOM = 7;
        public static final int MSG_RELEASE = 10;
        public static final int MSG_RESTART_CAMERA = 12;
        public static final int MSG_START_PREVIEW = 1;
        public static final int MSG_START_RECORDING = 4;
        public static final int MSG_STOP_PREVIEW = 2;
        public static final int MSG_STOP_RECORDING = 5;
        public static final int MSG_STOP_RECORDING_PREVIEW = 13;
        public static final int MSG_SUBMIT_REQUEST = 6;
        public static final int MSG_UPDATE_RECORD_SURFACE = 3;
        private CameraCaptureSession mCameraCaptureSession;
        private CameraCharacteristics mCameraCharacteristics;
        private CameraDevice mCameraDevice;
        private String mCameraId;
        private EventCallback mEventCallBack;
        private boolean mNeedPortraitBuffer;
        private int mRetryCount;
        private boolean mNeedRestart = false;
        private ConditionVariable mDeviceConditionVariable = new ConditionVariable();
        private float mZoomValue = 1.0f;
        private ConditionVariable mSessionConditionVariable = new ConditionVariable();
        private List<Surface> mSessionUsedSurfaceList = new ArrayList();
        private List<OutputConfiguration> mOutputConfigurations = new ArrayList();
        private CameraDevice.StateCallback mDeviceCallback = new CameraDevice.StateCallback() { // from class: com.mediatek.ims.internal.VTSource.DeviceHandler.1
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int error) {
                String str = VTSource.this.mTAG;
                Log.e(str, "[HDR] [onError] error:" + error);
                if (DeviceHandler.this.mRetryCount >= 25 || VTSource.this.mStopPreviewAndRecord || !(error == 1 || error == 2)) {
                    DeviceHandler.this.mDeviceConditionVariable.open();
                    DeviceHandler.this.mEventCallBack.onError();
                    DeviceHandler.this.mEventCallBack.onOpenFail();
                    return;
                }
                DeviceHandler.access$608(DeviceHandler.this);
                try {
                    Thread.sleep(400L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                DeviceHandler.this.doOpenCamera(DeviceHandler.this.mCameraId);
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                String str = VTSource.this.mTAG;
                Log.e(str, "[HDR] [onDisconnected] cameraDevice:" + cameraDevice);
                if (DeviceHandler.this.mCameraDevice != null) {
                    DeviceHandler.this.mCameraDevice.close();
                    DeviceHandler.this.mCameraDevice = null;
                }
                DeviceHandler.this.mDeviceConditionVariable.open();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                Log.d(VTSource.this.mTAG, "[HDR] [onOpened]");
                DeviceHandler.this.mCameraDevice = cameraDevice;
                if (VTSource.this.mCachedPreviewSurface != null) {
                    DeviceHandler.this.obtainMessage(1, VTSource.this.mMessageId.incrementAndGet(), 0, VTSource.this.mCachedPreviewSurface).sendToTarget();
                    String str = VTSource.this.mTAG;
                    Log.d(str, "[HDR] [onOpened] Send message to handler [" + VTSource.this.mMessageId.get() + "]");
                }
                DeviceHandler.this.mDeviceConditionVariable.open();
                DeviceHandler.this.mEventCallBack.onOpenSuccess();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onClosed(CameraDevice cameraDevice) {
                Log.d(VTSource.this.mTAG, "[HDR] [onClosed]");
                super.onClosed(cameraDevice);
                if (DeviceHandler.this.mNeedRestart) {
                    DeviceHandler.this.obtainMessage(0, VTSource.this.mMessageId.incrementAndGet(), 0, DeviceHandler.this.mCameraId).sendToTarget();
                    String str = VTSource.this.mTAG;
                    Log.d(str, "[HDR] [onClosed] Send message to handler [" + VTSource.this.mMessageId.get() + "]");
                    DeviceHandler.this.mNeedRestart = false;
                }
                DeviceHandler.this.mDeviceConditionVariable.open();
            }
        };
        private CameraCaptureSession.StateCallback mSessionCallback = new CameraCaptureSession.StateCallback() { // from class: com.mediatek.ims.internal.VTSource.DeviceHandler.2
            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                Log.d(VTSource.this.mTAG, "[onConfigured]");
                DeviceHandler.this.mCameraCaptureSession = cameraCaptureSession;
                DeviceHandler.this.obtainMessage(6, VTSource.this.mMessageId.incrementAndGet(), 0).sendToTarget();
                String str = VTSource.this.mTAG;
                Log.d(str, "[onConfigured] Send message to handler [" + VTSource.this.mMessageId.get() + "]");
                DeviceHandler.this.mSessionConditionVariable.open();
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                Log.d(VTSource.this.mTAG, "[onConfigureFailed]");
                DeviceHandler.this.mSessionConditionVariable.open();
                DeviceHandler.this.mEventCallBack.onError();
            }
        };
        private HandlerThread mRespondThread = new HandlerThread("VTSource-Respond");
        private int mDeviceDegree = 0;

        static /* synthetic */ int access$608(DeviceHandler x0) {
            int i = x0.mRetryCount;
            x0.mRetryCount = i + 1;
            return i;
        }

        DeviceHandler(Looper looper, boolean needPortraitBuffer, EventCallback cb) {
            super(looper);
            this.mNeedPortraitBuffer = needPortraitBuffer;
            this.mRespondThread.start();
            this.mEventCallBack = cb;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (this.mRespondThread == null) {
                Log.w(VTSource.this.mTAG, "[handleMessage] mRespondThread null, ignore message!!");
                return;
            }
            switch (msg.what) {
                case 0:
                    String str = VTSource.this.mTAG;
                    Log.d(str, "[HDR] [handleMessage] MSG_OPEN_CAMERA [" + msg.arg1 + "]");
                    String cameraId = (String) msg.obj;
                    if (this.mCameraDevice == null || !this.mCameraDevice.getId().equals(cameraId)) {
                        prepareForOpenCamera(cameraId);
                        this.mRetryCount = 0;
                        VTSource.this.mStopPreviewAndRecord = false;
                        this.mDeviceConditionVariable.close();
                        doOpenCamera(this.mCameraId);
                        this.mDeviceConditionVariable.block();
                        return;
                    }
                    Log.w(VTSource.this.mTAG, "open existing camera, ignore open!!!");
                    return;
                case 1:
                    String str2 = VTSource.this.mTAG;
                    Log.d(str2, "[HDR] [handleMessage] MSG_START_PREVIEW [" + msg.arg1 + "]");
                    Surface newSurface = (Surface) msg.obj;
                    if (this.mCameraDevice == null || newSurface == null || !newSurface.isValid()) {
                        String str3 = VTSource.this.mTAG;
                        Log.w(str3, "[HDR] [handleMessage] start preview with status error, device:" + this.mCameraDevice + ", new surface:" + newSurface);
                        if (newSurface != null && newSurface.isValid()) {
                            Log.d(VTSource.this.mTAG, "[HDR] [handleMessage] Camera closed, store the surface for use later.");
                            VTSource.this.mCachedPreviewSurface = newSurface;
                            return;
                        }
                        return;
                    }
                    if (newSurface.equals(VTSource.this.mCachedPreviewSurface)) {
                        closeSession();
                    }
                    VTSource.this.mCachedPreviewSurface = newSurface;
                    createSession();
                    return;
                case 2:
                    String str4 = VTSource.this.mTAG;
                    Log.d(str4, "[HDR] [handleMessage] MSG_STOP_PREVIEW [" + msg.arg1 + "]");
                    VTSource.this.mCachedPreviewSurface = null;
                    closeSession();
                    createSession();
                    return;
                case 3:
                    String str5 = VTSource.this.mTAG;
                    Log.d(str5, "[HDR] [handleMessage] MSG_UPDATE_RECORD_SURFACE [" + msg.arg1 + "]");
                    Surface newSurface2 = (Surface) msg.obj;
                    if (newSurface2 != null || VTSource.this.mCachedRecordSurface != null) {
                        VTSource.this.mCachedRecordSurface = newSurface2;
                        closeSession();
                        createSession();
                        return;
                    }
                    return;
                case 4:
                    String str6 = VTSource.this.mTAG;
                    Log.d(str6, "[HDR] [handleMessage] MSG_START_RECORDING [" + msg.arg1 + "]");
                    if (this.mCameraDevice == null || this.mCameraCaptureSession == null || VTSource.this.mNeedRecordStream) {
                        String str7 = VTSource.this.mTAG;
                        Log.w(str7, "[HDR] [handleMessage] start recording status error, device:" + this.mCameraDevice + ", session:" + this.mCameraCaptureSession + ", record status:" + VTSource.this.mNeedRecordStream);
                        VTSource.this.mNeedRecordStream = true;
                        return;
                    }
                    VTSource.this.mNeedRecordStream = true;
                    submitRepeatingRequest();
                    return;
                case 5:
                    String str8 = VTSource.this.mTAG;
                    Log.d(str8, "[HDR] [handleMessage] MSG_STOP_RECORDING [" + msg.arg1 + "]");
                    if (VTSource.this.mNeedRecordStream) {
                        VTSource.this.mNeedRecordStream = false;
                        closeSession();
                        createSession();
                        return;
                    }
                    return;
                case 6:
                    String str9 = VTSource.this.mTAG;
                    Log.d(str9, "[HDR] [handleMessage] MSG_SUBMIT_REQUEST [" + msg.arg1 + "]");
                    if (this.mCameraDevice == null || this.mCameraCaptureSession == null) {
                        Log.w(VTSource.this.mTAG, "[HDR] [handleMessage] submitRepeatingRequest illegal state, ignore!");
                        return;
                    } else {
                        submitRepeatingRequest();
                        return;
                    }
                case 7:
                    String str10 = VTSource.this.mTAG;
                    Log.d(str10, "[HDR] [handleMessage] MSG_PERFORM_ZOOM [" + msg.arg1 + "]");
                    if (this.mCameraDevice == null || this.mCameraCaptureSession == null) {
                        Log.w(VTSource.this.mTAG, "[HDR] [handleMessage] perform zoom with null device or session!!!");
                        return;
                    }
                    this.mZoomValue = ((Float) msg.obj).floatValue();
                    submitRepeatingRequest();
                    return;
                case 8:
                    String str11 = VTSource.this.mTAG;
                    Log.d(str11, "[HDR] [handleMessage] MSG_GET_CAMERA_CHARACTERISTICS [" + msg.arg1 + "]");
                    CameraCharacteristics[] characteristicses = (CameraCharacteristics[]) msg.obj;
                    characteristicses[0] = this.mCameraCharacteristics;
                    return;
                case 9:
                    String str12 = VTSource.this.mTAG;
                    Log.d(str12, "[HDR] [handleMessage] MSG_CLOSE_CAMERA [" + msg.arg1 + "]");
                    this.mCameraCaptureSession = null;
                    this.mZoomValue = 1.0f;
                    doCloseCamera();
                    return;
                case 10:
                    String str13 = VTSource.this.mTAG;
                    Log.d(str13, "[HDR] [handleMessage] MSG_RELEASE [" + msg.arg1 + "]");
                    this.mCameraCaptureSession = null;
                    this.mZoomValue = 1.0f;
                    doCloseCamera();
                    this.mSessionUsedSurfaceList.clear();
                    this.mOutputConfigurations.clear();
                    VTSource.this.mCachedRecordSurface = null;
                    VTSource.this.mCachedPreviewSurface = null;
                    this.mRespondThread.quitSafely();
                    return;
                case 11:
                    String str14 = VTSource.this.mTAG;
                    Log.d(str14, "[HDR] [handleMessage] MSG_DEVICE_ORIENTATION [" + msg.arg1 + "]");
                    if (this.mDeviceDegree != ((Integer) msg.obj).intValue()) {
                        String str15 = VTSource.this.mTAG;
                        Log.d(str15, "[HDR] [handleMessage] Change device orientation from " + this.mDeviceDegree + "to " + ((Integer) msg.obj).intValue());
                        this.mDeviceDegree = ((Integer) msg.obj).intValue();
                        return;
                    }
                    return;
                case 12:
                    String str16 = VTSource.this.mTAG;
                    Log.d(str16, "[HDR] [handleMessage] MSG_RESTART_CAMERA [" + msg.arg1 + "]");
                    closeSession();
                    this.mNeedRestart = true;
                    doCloseCamera();
                    return;
                case 13:
                    String str17 = VTSource.this.mTAG;
                    Log.d(str17, "[HDR] [handleMessage] MSG_STOP_RECORDING_PREVIEW [" + msg.arg1 + "]");
                    if (VTSource.this.mNeedRecordStream) {
                        VTSource.this.mNeedRecordStream = false;
                        closeSession();
                        return;
                    }
                    return;
                default:
                    String str18 = VTSource.this.mTAG;
                    Log.d(str18, "[HDR] [handleMessage] what:" + msg.what + " [" + msg.arg1 + "]");
                    return;
            }
        }

        private void createSession() {
            Log.d(VTSource.this.mTAG, "[HDR] [createSession] Start");
            if (this.mCameraDevice == null) {
                Log.w(VTSource.this.mTAG, "[HDR] [createSession] mCameraDevice is null !!!");
                return;
            }
            boolean ret = prepareOutputConfiguration();
            if (this.mSessionUsedSurfaceList.size() <= 0 || !ret) {
                Log.w(VTSource.this.mTAG, "[HDR] [createSession] Session surface list size <=0 or prepareOutputConfiguration fail");
                return;
            }
            this.mSessionConditionVariable.close();
            try {
                this.mCameraDevice.createCaptureSessionByOutputConfigurations(this.mOutputConfigurations, this.mSessionCallback, new Handler(this.mRespondThread.getLooper()));
                this.mSessionConditionVariable.block();
                Log.d(VTSource.this.mTAG, "[HDR] [createSession] Finish");
            } catch (Exception e) {
                String str = VTSource.this.mTAG;
                Log.e(str, "[HDR] [createSession] create preview session with exception:" + e);
                this.mEventCallBack.onError();
            }
        }

        private int getSessionRotationIndex(int rotation) {
            String str = VTSource.this.mTAG;
            Log.d(str, "[HDR] [getSessionRotationIndex] rotation = " + rotation);
            if (rotation == 0) {
                return 0;
            }
            if (rotation == 90) {
                return 1;
            }
            if (rotation == 180) {
                return 2;
            }
            if (rotation != 270) {
                return 0;
            }
            return 3;
        }

        private void closeSession() {
            Log.d(VTSource.this.mTAG, "[HDR] [closeSession] Start");
            if (this.mCameraCaptureSession != null) {
                try {
                    this.mCameraCaptureSession.abortCaptures();
                    this.mCameraCaptureSession.close();
                    this.mCameraCaptureSession = null;
                } catch (CameraAccessException e) {
                    Log.e(VTSource.TAG, "[HDR] [closeSession] exception", e);
                } catch (IllegalStateException e2) {
                    Log.e(VTSource.TAG, "[HDR] [closeSession] exception", e2);
                    e2.printStackTrace();
                }
            } else {
                Log.d(VTSource.this.mTAG, "[HDR] [closeSession] mCameraCaptureSession = NULL");
            }
            Log.d(VTSource.this.mTAG, "[HDR] [closeSession] Finish");
        }

        private Rect calculateCropRegionByZoomValue(float zoomValue) {
            String str = VTSource.this.mTAG;
            Log.d(str, "[HDR] [calculateCropRegionByZoomValue] Start, zoomValue = " + zoomValue);
            PointF center = new PointF(0.5f, 0.5f);
            float maxZoom = ((Float) this.mCameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue();
            Rect sensorArraySize = (Rect) this.mCameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            Log.d(VTSource.this.mTAG, "[HDR] [calculateCropRegionByZoomValue] Finish");
            return getCropRegionForZoom(zoomValue, center, maxZoom, sensorArraySize);
        }

        private Range calculateAeFpsRange() {
            Log.d(VTSource.this.mTAG, "[HDR] [calculateAeFpsRange] Start");
            if (ImsVTProviderUtil.isVideoQualityTestMode()) {
                Range<Integer> preSetFps = new Range<>(30, 30);
                Log.d(VTSource.this.mTAG, "[HDR] [calculateAeFpsRange] for VQ test, Range = [" + preSetFps.getLower() + ", " + preSetFps.getUpper() + "], Finish");
                return preSetFps;
            }
            Range<Integer>[] availableFpsRange = (Range[]) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
            Range<Integer> bestRange = availableFpsRange[0];
            for (Range<Integer> r : availableFpsRange) {
                if (bestRange.getUpper().intValue() < r.getUpper().intValue()) {
                    bestRange = r;
                } else if (bestRange.getUpper() == r.getUpper() && bestRange.getLower().intValue() > r.getLower().intValue()) {
                    bestRange = r;
                }
            }
            Log.d(VTSource.this.mTAG, "[HDR] [calculateAeFpsRange] Finish, Range = [" + bestRange.getLower() + ", " + bestRange.getUpper() + "]");
            return bestRange;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00f3 A[Catch: Exception -> 0x0158, TryCatch #0 {Exception -> 0x0158, blocks: (B:7:0x001c, B:9:0x0038, B:12:0x003f, B:13:0x005e, B:14:0x0069, B:16:0x00ad, B:18:0x00b5, B:20:0x00c3, B:21:0x00cd, B:23:0x00d5, B:25:0x00e3, B:26:0x00ed, B:28:0x00f3, B:31:0x0115, B:32:0x0129, B:34:0x012f), top: B:41:0x001c }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0115 A[Catch: Exception -> 0x0158, TryCatch #0 {Exception -> 0x0158, blocks: (B:7:0x001c, B:9:0x0038, B:12:0x003f, B:13:0x005e, B:14:0x0069, B:16:0x00ad, B:18:0x00b5, B:20:0x00c3, B:21:0x00cd, B:23:0x00d5, B:25:0x00e3, B:26:0x00ed, B:28:0x00f3, B:31:0x0115, B:32:0x0129, B:34:0x012f), top: B:41:0x001c }] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x012f A[Catch: Exception -> 0x0158, TRY_LEAVE, TryCatch #0 {Exception -> 0x0158, blocks: (B:7:0x001c, B:9:0x0038, B:12:0x003f, B:13:0x005e, B:14:0x0069, B:16:0x00ad, B:18:0x00b5, B:20:0x00c3, B:21:0x00cd, B:23:0x00d5, B:25:0x00e3, B:26:0x00ed, B:28:0x00f3, B:31:0x0115, B:32:0x0129, B:34:0x012f), top: B:41:0x001c }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void submitRepeatingRequest() {
            /*
                Method dump skipped, instructions count: 403
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.internal.VTSource.DeviceHandler.submitRepeatingRequest():void");
        }

        private void prepareForOpenCamera(String cameraId) {
            String str = VTSource.this.mTAG;
            Log.d(str, "[HDR] [prepareForOpenCamera] Start, cameraId = " + cameraId);
            if (this.mCameraId != null && !this.mCameraId.equals(cameraId)) {
                closeSession();
                doCloseCamera();
            }
            this.mCameraId = cameraId;
            try {
                this.mCameraCharacteristics = VTSource.this.mCameraManager.getCameraCharacteristics(this.mCameraId);
            } catch (Exception e) {
                String str2 = VTSource.this.mTAG;
                Log.e(str2, "[HDR] [prepareForOpenCamera] before open camera getCameraCharacteristics access exception: " + e);
                this.mEventCallBack.onError();
            }
            Log.d(VTSource.this.mTAG, "[HDR] [prepareForOpenCamera] Finish");
        }

        private void doCloseCamera() {
            Log.d(VTSource.this.mTAG, "[HDR] [doCloseCamera] Start");
            if (this.mCameraDevice != null) {
                this.mCameraDevice.close();
                this.mCameraDevice = null;
            } else {
                Log.d(VTSource.this.mTAG, "[HDR] [doCloseCamera] mCameraDevice = NULL");
            }
            Log.d(VTSource.this.mTAG, "[HDR] [doCloseCamera] Finish");
        }

        private boolean prepareOutputConfiguration() {
            Log.d(VTSource.this.mTAG, "[HDR] [prepareOutputConfiguration] Start");
            this.mSessionUsedSurfaceList.clear();
            this.mOutputConfigurations.clear();
            if (VTSource.this.mCachedPreviewSurface != null) {
                Log.d(VTSource.this.mTAG, "[HDR] [prepareOutputConfiguration][Preview]");
                this.mSessionUsedSurfaceList.add(VTSource.this.mCachedPreviewSurface);
                try {
                    this.mOutputConfigurations.add(new OutputConfiguration(VTSource.this.mCachedPreviewSurface));
                } catch (Exception ex) {
                    String str = VTSource.this.mTAG;
                    Log.e(str, "[HDR] [prepareOutputConfiguration][Preview] new OutputConfiguration with exception: " + ex);
                    this.mSessionUsedSurfaceList.remove(VTSource.this.mCachedPreviewSurface);
                    VTSource.this.mCachedPreviewSurface = null;
                    this.mEventCallBack.onError();
                    Log.d(VTSource.this.mTAG, "[HDR] [prepareOutputConfiguration] Finish");
                    return false;
                }
            }
            if (VTSource.this.mCachedRecordSurface != null) {
                Log.d(VTSource.this.mTAG, "[HDR] [prepareOutputConfiguration][Record]");
                this.mSessionUsedSurfaceList.add(VTSource.this.mCachedRecordSurface);
                try {
                    this.mOutputConfigurations.add(new OutputConfiguration(VTSource.this.mCachedRecordSurface));
                } catch (Exception ex2) {
                    String str2 = VTSource.this.mTAG;
                    Log.e(str2, "[HDR] [prepareOutputConfiguration][Record] new OutputConfiguration with exception: " + ex2);
                    this.mSessionUsedSurfaceList.remove(VTSource.this.mCachedRecordSurface);
                    VTSource.this.mCachedRecordSurface = null;
                    this.mEventCallBack.onError();
                    Log.d(VTSource.this.mTAG, "[HDR] [prepareOutputConfiguration] Finish");
                    return false;
                }
            }
            Log.d(VTSource.this.mTAG, "[HDR] [prepareOutputConfiguration] Finish");
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doOpenCamera(String cameraId) {
            Log.d(VTSource.this.mTAG, "[HDR] [doOpenCamera] Start");
            try {
                VTSource.this.mCameraManager.openCamera(cameraId, this.mDeviceCallback, new Handler(this.mRespondThread.getLooper()));
            } catch (Exception e) {
                String str = VTSource.this.mTAG;
                Log.i(str, "[HDR] [doOpenCamera] open camera with access exception:" + e);
                this.mDeviceConditionVariable.open();
                this.mEventCallBack.onError();
            }
            Log.d(VTSource.this.mTAG, "[HDR] [doOpenCamera] Finish");
        }

        private int getCameraRotation(int degrees, CameraCharacteristics characteristics) {
            int result;
            Log.d(VTSource.this.mTAG, "[HDR] [getCameraRotation] Start");
            int facing = ((Integer) characteristics.get(CameraCharacteristics.LENS_FACING)).intValue();
            int orientation = ((Integer) characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
            String str = VTSource.this.mTAG;
            Log.d(str, "[HDR] [getCameraRotation] degrees: " + degrees + ", facing: " + facing + ", orientation: " + orientation);
            if (facing == 0) {
                if (degrees == 0) {
                    result = 0;
                } else if (degrees == 90) {
                    result = 270;
                } else if (degrees == 180) {
                    result = 180;
                } else if (degrees != 270) {
                    result = 0;
                } else {
                    result = 90;
                }
            } else if (degrees == 0) {
                result = 0;
            } else if (degrees == 90) {
                result = 90;
            } else if (degrees == 180) {
                result = 180;
            } else if (degrees != 270) {
                result = 0;
            } else {
                result = 270;
            }
            String str2 = VTSource.this.mTAG;
            Log.d(str2, "[HDR] [getCameraRotation] Fisnish, Final angle = " + result);
            return result;
        }

        private Rect getCropRegionForZoom(float zoomFactor, PointF center, float maxZoom, Rect activeArray) {
            String str = VTSource.this.mTAG;
            Log.d(str, "[HDR] [getCropRegionForZoom] Start, zoomFactor = " + zoomFactor + ", center = " + center + ", maxZoom = " + maxZoom + ", activeArray = " + activeArray);
            if (zoomFactor < 1.0d) {
                throw new IllegalArgumentException("zoom factor " + zoomFactor + " should be >= 1.0");
            } else if (center.x > 1.0d || center.x < 0.0f) {
                throw new IllegalArgumentException("center.x " + center.x + " should be in range of [0, 1.0]");
            } else if (center.y > 1.0d || center.y < 0.0f) {
                throw new IllegalArgumentException("center.y " + center.y + " should be in range of [0, 1.0]");
            } else if (maxZoom < 1.0d) {
                throw new IllegalArgumentException("max zoom factor " + maxZoom + " should be >= 1.0");
            } else if (activeArray != null) {
                float minCenterLength = Math.min(Math.min(center.x, 1.0f - center.x), Math.min(center.y, 1.0f - center.y));
                float minEffectiveZoom = 0.5f / minCenterLength;
                if (minEffectiveZoom <= maxZoom) {
                    if (zoomFactor < minEffectiveZoom) {
                        String str2 = VTSource.this.mTAG;
                        Log.w(str2, "Requested zoomFactor " + zoomFactor + " > minimal zoomable factor " + minEffectiveZoom + ". It will be overwritten by " + minEffectiveZoom);
                        zoomFactor = minEffectiveZoom;
                    }
                    int cropCenterX = (int) (activeArray.width() * center.x);
                    int cropCenterY = (int) (activeArray.height() * center.y);
                    int cropWidth = (int) (activeArray.width() / zoomFactor);
                    int cropHeight = (int) (activeArray.height() / zoomFactor);
                    Log.d(VTSource.this.mTAG, "[HDR] [getCropRegionForZoom] Finish");
                    return new Rect(cropCenterX - (cropWidth / 2), cropCenterY - (cropHeight / 2), ((cropWidth / 2) + cropCenterX) - 1, ((cropHeight / 2) + cropCenterY) - 1);
                }
                throw new IllegalArgumentException("Requested center " + center.toString() + " has minimal zoomable factor " + minEffectiveZoom + ", which exceeds max zoom factor " + maxZoom);
            } else {
                throw new IllegalArgumentException("activeArray must not be null");
            }
        }
    }

    private boolean waitDone(Handler handler) {
        if (handler == null) {
            return false;
        }
        final ConditionVariable waitDoneCondition = new ConditionVariable();
        Runnable unlockRunnable = new Runnable() { // from class: com.mediatek.ims.internal.VTSource.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (waitDoneCondition) {
                    waitDoneCondition.open();
                }
            }
        };
        synchronized (waitDoneCondition) {
            if (!handler.post(unlockRunnable)) {
                return true;
            }
            waitDoneCondition.block();
            return true;
        }
    }
}
