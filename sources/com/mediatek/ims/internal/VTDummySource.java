package com.mediatek.ims.internal;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.net.Uri;
import android.util.Log;
import android.view.Surface;
import com.mediatek.ims.internal.VTSource;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class VTDummySource extends VTSource {
    private static final String TAG = "VT SRC_Dummy";

    public static void setContext(Context context) {
        Log.d(TAG, "[STC] [setContext] context:" + context);
        sContext = context;
    }

    public static VTSource.Resolution[] getAllCameraResolutions() {
        Log.d(TAG, "[STC] [getAllCameraResolutions] Start");
        if (sCameraResolutions == null) {
            ArrayList<VTSource.Resolution> sensorResolutions = new ArrayList<>();
            try {
                VTSource.Resolution resolution = new VTSource.Resolution();
                resolution.mId = 0;
                resolution.mMaxWidth = 5344;
                resolution.mMaxHeight = 5344;
                resolution.mDegree = 90;
                resolution.mFacing = 1;
                Log.w(TAG, "[getAllCameraResolutions] " + resolution);
                sensorResolutions.add(resolution);
                VTSource.Resolution resolution2 = new VTSource.Resolution();
                resolution2.mId = 1;
                resolution2.mMaxWidth = 3264;
                resolution2.mMaxHeight = 3264;
                resolution2.mDegree = 270;
                resolution2.mFacing = 0;
                Log.w(TAG, "[getAllCameraResolutions] " + resolution2);
                sensorResolutions.add(resolution2);
            } catch (Exception e) {
                Log.e(TAG, "[STC] [getAllCameraResolutions] getCameraIdList with exception:" + e);
            }
            if (sensorResolutions.size() > 0) {
                sCameraResolutions = new VTSource.Resolution[sensorResolutions.size()];
                sCameraResolutions = (VTSource.Resolution[]) sensorResolutions.toArray(sCameraResolutions);
            }
            Log.d(TAG, "[STC] [getAllCameraResolutions] resolution size:" + sensorResolutions.size());
        }
        Log.d(TAG, "[STC] [getAllCameraResolutions] Finish");
        return sCameraResolutions;
    }

    public VTDummySource() {
        Log.d(TAG, "[INT] [VTDummySource] Finish");
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void setReplacePicture(Uri uri) {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void open(String cameraId) {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void close() {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void release() {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void setRecordSurface(Surface surface) {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void setPreviewSurface(Surface surface) {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void setZoom(float zoomValue) {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public CameraCharacteristics getCameraCharacteristics() {
        return null;
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void startRecording() {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void stopRecording() {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void stopRecordingAndPreview() {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void hideMe() {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void showMe() {
    }

    @Override // com.mediatek.ims.internal.VTSource
    public void setDeviceOrientation(int degree) {
    }
}
