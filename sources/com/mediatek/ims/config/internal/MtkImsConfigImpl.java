package com.mediatek.ims.config.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.text.TextUtils;
import com.android.ims.ImsConfigListener;
import com.android.ims.ImsException;
import com.android.ims.internal.IImsConfig;
import com.mediatek.ims.ImsCommonUtil;
import com.mediatek.ims.internal.IMtkImsConfig;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.util.HashMap;
/* loaded from: classes.dex */
public class MtkImsConfigImpl extends IMtkImsConfig.Stub {
    private static final boolean DEBUG;
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final String TAG = "MtkImsConfigImpl";
    private ImsConfigAdapter mConfigAdapter;
    private Context mContext;
    private final IImsConfig mImsConfig;
    private int mPhoneId;
    private ImsCommandsInterface mRilAdapter;
    private HashMap<Integer, Boolean> mImsCapabilitiesIsCache = new HashMap<>();
    private HashMap<Integer, Integer> mImsCapabilities = new HashMap<>();

    static {
        boolean z = true;
        if (!TextUtils.equals(Build.TYPE, "eng") && SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        DEBUG = z;
    }

    public MtkImsConfigImpl(Context context, ImsCommandsInterface imsRilAdapter, IImsConfig imsConfig, ImsConfigAdapter adapter, int phoneId) {
        this.mContext = context;
        this.mPhoneId = phoneId;
        this.mRilAdapter = imsRilAdapter;
        this.mImsConfig = imsConfig;
        this.mConfigAdapter = adapter;
        this.mImsCapabilities.put(0, 1);
        this.mImsCapabilities.put(1, 0);
        this.mImsCapabilities.put(2, 0);
        this.mImsCapabilitiesIsCache.put(0, false);
        this.mImsCapabilitiesIsCache.put(1, false);
        this.mImsCapabilitiesIsCache.put(2, false);
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public int getProvisionedValue(int item) {
        try {
            int result = this.mImsConfig.getProvisionedValue(item);
            Rlog.i(TAG, "getProvisionedValue(" + item + ") : " + result + " on phone" + this.mPhoneId + " from binder pid " + Binder.getCallingPid() + ", binder uid " + Binder.getCallingUid() + ", process pid " + Process.myPid() + ", process uid " + Process.myUid());
            return result;
        } catch (RemoteException e) {
            Rlog.e(TAG, "getProvisionedValue(" + item + ") remote failed!");
            throw new RuntimeException(e);
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public String getProvisionedStringValue(int item) {
        try {
            String result = this.mImsConfig.getProvisionedStringValue(item);
            Rlog.i(TAG, "getProvisionedStringValue(" + item + ") : " + result + " on phone " + this.mPhoneId + " from binder pid " + Binder.getCallingPid() + ", binder uid " + Binder.getCallingUid() + ", process pid " + Process.myPid() + ", process uid " + Process.myUid());
            return result;
        } catch (RemoteException e) {
            Rlog.e(TAG, "getProvisionedStringValue(" + item + ") remote failed!");
            throw new RuntimeException(e);
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public int setProvisionedValue(int item, int value) {
        try {
            return this.mImsConfig.setProvisionedValue(item, value);
        } catch (RemoteException e) {
            Rlog.e(TAG, "setProvisionedValue(" + item + ") remote failed!");
            return 1;
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public int setProvisionedStringValue(int item, String value) {
        try {
            return this.mImsConfig.setProvisionedStringValue(item, value);
        } catch (RemoteException e) {
            Rlog.e(TAG, "setProvisionedValue(" + item + ") remote failed!");
            return 1;
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void getFeatureValue(int feature, int network, ImsConfigListener listener) {
        try {
            Rlog.i(TAG, "getFeatureValue(" + feature + ", " + network + ") : on phone " + this.mPhoneId);
            this.mImsConfig.getFeatureValue(feature, network, listener);
        } catch (RemoteException e) {
            Rlog.e(TAG, "getFeatureValue(" + feature + ") remote failed!");
            throw new RuntimeException(e);
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void setFeatureValue(int feature, int network, int value, ImsConfigListener listener) {
        try {
            this.mImsConfig.setFeatureValue(feature, network, value, listener);
        } catch (RemoteException e) {
            Rlog.e(TAG, "setFeatureValue(" + feature + ") remote failed!");
            throw new RuntimeException(e);
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void setMultiFeatureValues(int[] feature, int[] network, int[] value, ImsConfigListener listener) {
        int isLast;
        try {
            try {
                if (!ImsCommonUtil.supportMims() && ImsCommonUtil.getMainCapabilityPhoneId() != this.mPhoneId) {
                    Rlog.i(TAG, "setFeatureValue is not allow on non main capability phoneId:" + this.mPhoneId + " in non MIMS project");
                    throw new ImsException("Do not setFeatureValue for non MIMS not main capability phoneId: " + this.mPhoneId, 102);
                }
                for (int i = 0; i < feature.length; i++) {
                    try {
                        try {
                            if (!ImsCommonUtil.supportMdAutoSetupIms()) {
                                this.mConfigAdapter.mStorage.setFeatureValue(feature[i], network[i], value[i]);
                                switch (feature[i]) {
                                    case 0:
                                        int oldVoLTEValue = ImsConfigUtils.getFeaturePropValue(ImsConfigUtils.PROPERTY_VOLTE_ENALBE, this.mPhoneId);
                                        if (value[i] != oldVoLTEValue) {
                                            if (value[i] == 1) {
                                                this.mRilAdapter.turnOnVolte(null);
                                                break;
                                            } else {
                                                this.mRilAdapter.turnOffVolte(null);
                                                break;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int oldViLTEValue = ImsConfigUtils.getFeaturePropValue(ImsConfigUtils.PROPERTY_VILTE_ENALBE, this.mPhoneId);
                                        if (value[i] != oldViLTEValue) {
                                            if (value[i] == 1) {
                                                this.mRilAdapter.turnOnVilte(null);
                                                break;
                                            } else {
                                                this.mRilAdapter.turnOffVilte(null);
                                                break;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int oldWfcValue = ImsConfigUtils.getFeaturePropValue(ImsConfigUtils.PROPERTY_WFC_ENALBE, this.mPhoneId);
                                        if (value[i] != oldWfcValue) {
                                            if (value[i] == 1) {
                                                this.mRilAdapter.turnOnWfc(null);
                                                break;
                                            } else {
                                                this.mRilAdapter.turnOffWfc(null);
                                                break;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int oldViWifiValue = ImsConfigUtils.getFeaturePropValue(ImsConfigUtils.PROPERTY_VIWIFI_ENALBE, this.mPhoneId);
                                        if (value[i] != oldViWifiValue) {
                                            if (value[i] == 1) {
                                                this.mRilAdapter.turnOnViwifi(null);
                                                break;
                                            } else {
                                                this.mRilAdapter.turnOffViwifi(null);
                                                break;
                                            }
                                        }
                                        break;
                                }
                            } else {
                                if (i == feature.length - 1) {
                                    isLast = 1;
                                } else {
                                    isLast = 0;
                                }
                                if (value[i] == 1 && RadioCapabilitySwitchUtil.IMSI_READY.equals(SystemProperties.get("persist.vendor.mtk_dynamic_ims_switch"))) {
                                    int resCap = this.mConfigAdapter.getImsResCapability(feature[i]);
                                    if (resCap != 1) {
                                        Rlog.i(TAG, "setMultiFeatureValues, modify the value in ImsConfig.");
                                        value[i] = 0;
                                    }
                                }
                                Rlog.i(TAG, "setMultiFeatureValues i:" + i + " feature: " + feature[i] + " network: " + network[i] + " value: " + value[i] + " isLast: " + isLast);
                                this.mConfigAdapter.mController.setFeatureValue(feature[i], network[i], value[i], isLast);
                            }
                            if (listener != null) {
                                listener.onSetFeatureResponse(feature[i], network[i], value[i], 0);
                            }
                        } catch (ImsException e) {
                            Rlog.e(TAG, "setFeatureValue(" + feature[i] + ") failed, code: " + e.getCode());
                            if (listener != null) {
                                listener.onSetFeatureResponse(feature[i], network[i], 0, 1);
                            }
                        }
                    } catch (RemoteException e2) {
                        Rlog.e(TAG, "setMultiFeatureValues onSetFeatureResponse remote failed!");
                        throw new RuntimeException(e2);
                    }
                }
            } catch (RemoteException e3) {
                Rlog.e(TAG, "setMultiFeatureValues onSetFeatureResponse remote failed!");
                throw new RuntimeException(e3);
            }
        } catch (ImsException e4) {
            Rlog.e(TAG, "setMultiFeatureValues failed, code: " + e4.getCode());
            if (listener != null) {
                for (int i2 = 0; i2 < feature.length; i2++) {
                    listener.onSetFeatureResponse(feature[i2], network[i2], 0, 1);
                }
            }
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void getVideoQuality(ImsConfigListener listener) {
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void setVideoQuality(int quality, ImsConfigListener listener) {
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void setImsResCapability(int feature, int value) {
        this.mImsCapabilities.put(Integer.valueOf(feature), Integer.valueOf(value));
        this.mImsCapabilitiesIsCache.put(Integer.valueOf(feature), true);
        try {
            if (DEBUG) {
                Rlog.i(TAG, "setImsResCapability(" + feature + ") : " + value + " on phone " + this.mPhoneId + " from binder pid " + Binder.getCallingPid() + ", binder uid " + Binder.getCallingUid());
            }
            this.mConfigAdapter.setImsResCapability(feature, value);
        } catch (ImsException e) {
            Rlog.e(TAG, "setImsResCapability(" + feature + ") failed, code: " + e.getCode());
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public int getImsResCapability(int feature) {
        int value;
        try {
            if (this.mImsCapabilitiesIsCache.get(Integer.valueOf(feature)).booleanValue()) {
                value = this.mImsCapabilities.get(Integer.valueOf(feature)).intValue();
            } else {
                value = this.mConfigAdapter.getImsResCapability(feature);
            }
            if (!(value == 1 || value == 0)) {
                throw new ImsException(" result value:" + value + " incorrect!", 101);
            }
            return value;
        } catch (ImsException e) {
            Rlog.e(TAG, "getImsResCapability(" + feature + ") failed, code: " + e.getCode());
            return this.mImsCapabilities.get(Integer.valueOf(feature)).intValue();
        }
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void setWfcMode(int mode) {
        Rlog.i(TAG, "setWfcMode(" + mode + ")");
        int rilWfcMode = 1;
        switch (mode) {
            case 0:
                rilWfcMode = 3;
                break;
            case 1:
                rilWfcMode = 2;
                break;
            case 2:
                rilWfcMode = 1;
                break;
            default:
                Rlog.i(TAG, "setWfcMode mapping error, value is invalid!");
                break;
        }
        this.mConfigAdapter.sendWfcProfileInfo(rilWfcMode);
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public void setVoltePreference(int mode) {
        this.mConfigAdapter.setVoltePreference(mode);
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public int[] setModemImsCfg(String[] keys, String[] values, int phoneId) {
        Rlog.i(TAG, "setModemImsCfg phoneId:" + phoneId);
        int[] result = this.mConfigAdapter.setModemImsCfg(keys, values, 0);
        return result;
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public int[] setModemImsWoCfg(String[] keys, String[] values, int phoneId) {
        Rlog.i(TAG, "setModemImsWoCfg phoneId:" + phoneId);
        int[] result = this.mConfigAdapter.setModemImsCfg(keys, values, 1);
        return result;
    }

    @Override // com.mediatek.ims.internal.IMtkImsConfig
    public int[] setModemImsIwlanCfg(String[] keys, String[] values, int phoneId) {
        Rlog.i(TAG, "setModemImsIwlanCfg phoneId:" + phoneId);
        int[] result = this.mConfigAdapter.setModemImsCfg(keys, values, 2);
        return result;
    }
}
