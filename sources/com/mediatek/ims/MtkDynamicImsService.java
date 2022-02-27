package com.mediatek.ims;

import android.annotation.SystemApi;
import android.content.Intent;
import android.os.IBinder;
import android.telephony.Rlog;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsService;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsConfigImplBase;
import android.telephony.ims.stub.ImsFeatureConfiguration;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import android.util.SparseArray;
import com.mediatek.ims.config.MtkImsConfigImpl;
import com.mediatek.ims.feature.MtkMmTelFeature;
@SystemApi
/* loaded from: classes.dex */
public class MtkDynamicImsService extends ImsService {
    private static final String LOG_TAG = "MtkDynamicImsService";
    protected final SparseArray<MmTelFeature> mMmTel = new SparseArray<>();
    protected final SparseArray<ImsConfigImplBase> mImsConfig = new SparseArray<>();
    protected final SparseArray<ImsRegistrationImplBase> mImsReg = new SparseArray<>();

    public IBinder onBind(Intent intent) {
        if (!"android.telephony.ims.ImsService".equals(intent.getAction())) {
            return null;
        }
        log("MtkDynamicImsService Bound.");
        return this.mImsServiceController;
    }

    public boolean onUnbind(Intent intent) {
        logi("onUnbind...");
        for (int i = 0; i < TelephonyManager.getDefault().getPhoneCount(); i++) {
            MtkMmTelFeature feature = (MtkMmTelFeature) this.mMmTel.get(i);
            if (feature != null) {
                feature.close();
                this.mMmTel.delete(i);
            }
            MtkImsRegistrationImpl reg = this.mImsReg.get(i);
            if (reg != null) {
                reg.close();
                this.mImsReg.delete(i);
            }
        }
        return MtkDynamicImsService.super.onUnbind(intent);
    }

    public ImsFeatureConfiguration querySupportedImsFeatures() {
        ImsFeatureConfiguration.Builder builder = new ImsFeatureConfiguration.Builder();
        for (int i = 0; i < TelephonyManager.getDefault().getPhoneCount(); i++) {
            builder.addFeature(i, 1);
            builder.addFeature(i, 0);
        }
        log("Supported Ims Features: " + builder.build());
        return builder.build();
    }

    public void readyForFeatureCreation() {
    }

    public void enableIms(int slotId) {
        MtkMmTelFeature feature = (MtkMmTelFeature) this.mMmTel.get(slotId);
        if (feature != null && SubscriptionManager.isValidPhoneId(slotId)) {
            feature.enableIms(slotId);
        }
    }

    public void disableIms(int slotId) {
        MtkMmTelFeature feature = (MtkMmTelFeature) this.mMmTel.get(slotId);
        if (feature != null && SubscriptionManager.isValidPhoneId(slotId)) {
            feature.disableIms(slotId);
        }
    }

    public MmTelFeature createMmTelFeature(int slotId) {
        MmTelFeature feature = this.mMmTel.get(slotId);
        if (feature == null && SubscriptionManager.isValidPhoneId(slotId)) {
            feature = new MtkMmTelFeature(slotId);
            this.mMmTel.put(slotId, feature);
        }
        log("[" + slotId + "] createMmTelFeature " + feature);
        return feature;
    }

    public ImsConfigImplBase getConfig(int slotId) {
        MtkMmTelFeature feature;
        ImsConfigImplBase config = this.mImsConfig.get(slotId);
        if (config == null && SubscriptionManager.isValidPhoneId(slotId) && (feature = (MtkMmTelFeature) this.mMmTel.get(slotId)) != null) {
            config = new MtkImsConfigImpl(feature.getConfigInterface());
            this.mImsConfig.put(slotId, config);
        }
        log("[" + slotId + "] getConfig " + config);
        return config;
    }

    public ImsRegistrationImplBase getRegistration(int slotId) {
        ImsRegistrationImplBase reg = this.mImsReg.get(slotId);
        if (reg == null && SubscriptionManager.isValidPhoneId(slotId)) {
            reg = new MtkImsRegistrationImpl(slotId);
            this.mImsReg.put(slotId, reg);
        }
        log("[" + slotId + "] getRegistration " + reg);
        return reg;
    }

    private static void log(String msg) {
        Rlog.i(LOG_TAG, msg);
    }

    private static void logi(String msg) {
        Rlog.i(LOG_TAG, msg);
    }

    private static void loge(String msg) {
        Rlog.e(LOG_TAG, msg);
    }
}
