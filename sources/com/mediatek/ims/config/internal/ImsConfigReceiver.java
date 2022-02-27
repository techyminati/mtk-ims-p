package com.mediatek.ims.config.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.ims.ImsManager;
import com.mediatek.ims.ImsCommonUtil;
import com.mediatek.ims.common.ImsCarrierConfigConstants;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ImsManagerOemPlugin;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
/* loaded from: classes.dex */
public class ImsConfigReceiver extends BroadcastReceiver {
    private static final String ACTION_CXP_NOTIFY_FEATURE = "com.mediatek.common.carrierexpress.cxp_notify_feature";
    private static final boolean DEBUG;
    private static final String PROPERTY_MTK_RCS_UA_SUPPORT = "persist.vendor.mtk_rcs_ua_support";
    private static final String PROPERTY_MTK_VILTE_SUPPORT = "persist.vendor.vilte_support";
    private static final String PROPERTY_MTK_VIWIFI_SUPPORT = "persist.vendor.viwifi_support";
    private static final String PROPERTY_MTK_VOLTE_SUPPORT = "persist.vendor.volte_support";
    private static final String PROPERTY_MTK_WFC_SUPPORT = "persist.vendor.mtk_wfc_support";
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final String TAG = "ImsConfigReceiver";
    private Handler mHandler;
    private final int mPhoneId;
    private ImsCommandsInterface mRilAdapter;
    private int mMainPhoneId = -1;
    private ImsManagerOemPlugin mImsManagerOemPlugin = null;

    static {
        boolean z = true;
        if (!TextUtils.equals(Build.TYPE, "eng") && SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        DEBUG = z;
    }

    public ImsConfigReceiver(Handler handler, int phoneId, ImsCommandsInterface imsRilAdapter) {
        this.mPhoneId = phoneId;
        this.mHandler = handler;
        this.mRilAdapter = imsRilAdapter;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0107, code lost:
        if (r1.equals("ABSENT") != false) goto L_0x0147;
     */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r11, android.content.Intent r12) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.config.internal.ImsConfigReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }

    private void updateFeatureSupportProperty(Bundle bundle) {
        boolean isWfcOn = bundle.getString(PROPERTY_MTK_WFC_SUPPORT, "0").equals(RadioCapabilitySwitchUtil.IMSI_READY);
        if (isWfcOn) {
            this.mRilAdapter.turnOnWfc(null);
        } else {
            this.mRilAdapter.turnOffWfc(null);
        }
        boolean isVolteOn = bundle.getString(PROPERTY_MTK_VOLTE_SUPPORT, "0").equals(RadioCapabilitySwitchUtil.IMSI_READY);
        if (isVolteOn) {
            this.mRilAdapter.turnOnVolte(null);
        } else {
            this.mRilAdapter.turnOffVolte(null);
        }
        boolean isVilteOn = bundle.getString(PROPERTY_MTK_VILTE_SUPPORT, "0").equals(RadioCapabilitySwitchUtil.IMSI_READY);
        if (isVilteOn) {
            this.mRilAdapter.turnOnVilte(null);
        } else {
            this.mRilAdapter.turnOffVilte(null);
        }
        boolean isViWiFiOn = bundle.getString(PROPERTY_MTK_VIWIFI_SUPPORT, "0").equals(RadioCapabilitySwitchUtil.IMSI_READY);
        if (isViWiFiOn) {
            this.mRilAdapter.turnOnViwifi(null);
        } else {
            this.mRilAdapter.turnOffViwifi(null);
        }
        boolean isRcsUaOn = bundle.getString(PROPERTY_MTK_RCS_UA_SUPPORT, "0").equals(RadioCapabilitySwitchUtil.IMSI_READY);
        if (isRcsUaOn) {
            this.mRilAdapter.turnOnRcsUa(null);
        } else {
            this.mRilAdapter.turnOffRcsUa(null);
        }
    }

    private void handleCarrierConfigChanged(Context context, Intent intent) {
        int phoneId = intent.getIntExtra("phone", -1);
        if (phoneId == this.mPhoneId) {
            TelephonyManager tm = TelephonyManager.getDefault();
            if (tm == null || tm.hasIccCard(phoneId)) {
                resetWfcModeFlag("ACTION_CARRIER_CONFIG_CHANGED");
                boolean removeWfcPrefMode = ImsConfigUtils.getBooleanCarrierConfig(context, ImsCarrierConfigConstants.MTK_KEY_WFC_REMOVE_PREFERENCE_MODE_BOOL, phoneId);
                boolean wfcModeEditable = ImsConfigUtils.getBooleanCarrierConfig(context, "editable_wfc_mode_bool", phoneId);
                Log.d(TAG, "KEY_WFC_REMOVE_PREFERENCE_MODE_BOOL = " + removeWfcPrefMode);
                Log.d(TAG, "KEY_EDITABLE_WFC_MODE_BOOL = " + wfcModeEditable);
                if (removeWfcPrefMode || !wfcModeEditable) {
                    int wfcMode = ImsConfigUtils.getIntCarrierConfig(context, "carrier_default_wfc_ims_mode_int", phoneId);
                    Log.d(TAG, "ACTION_CARRIER_CONFIG_CHANGED: set wfc mode = " + wfcMode + ", phoneId:" + phoneId);
                    if (ImsCommonUtil.supportMims() || ImsCommonUtil.getMainPhoneIdForSingleIms() == phoneId) {
                        ImsManager.getInstance(context, phoneId).setWfcMode(wfcMode);
                    } else {
                        Log.d(TAG, "no set wfc mode due to mims: " + ImsCommonUtil.supportMims() + ", main phone id:" + ImsCommonUtil.getMainPhoneIdForSingleIms());
                    }
                }
                int operatorCode = ImsConfigUtils.getIntCarrierConfig(context, ImsCarrierConfigConstants.KEY_OPERATOR_ID_INT, phoneId);
                this.mHandler.removeMessages(1);
                Message msg = new Message();
                Log.d(TAG, "carrier config changed, operatorCode = " + operatorCode + " on phone " + phoneId);
                msg.what = 1;
                msg.obj = Integer.valueOf(operatorCode);
                this.mHandler.sendMessage(msg);
                return;
            }
            Log.e(TAG, "No need to reload config storage");
        }
    }

    private void resetWfcModeFlag(String reason) {
        this.mHandler.removeMessages(8);
        Message msg = new Message();
        Log.d(TAG, "resetWfcModeFlag, reason: " + reason);
        msg.what = 8;
        this.mHandler.sendMessage(msg);
    }

    private void forceToSendWfcMode() {
        this.mHandler.removeMessages(10);
        Message msg = new Message();
        msg.what = 10;
        this.mHandler.sendMessage(msg);
    }

    private void updateImsServiceConfig(Context context, int phoneId) {
        if (this.mImsManagerOemPlugin == null) {
            this.mImsManagerOemPlugin = ExtensionFactory.makeOemPluginFactory().makeImsManagerPlugin(context);
        }
        if (ImsCommonUtil.supportMims() || phoneId == RadioCapabilitySwitchUtil.getMainCapabilityPhoneId()) {
            this.mImsManagerOemPlugin.updateImsServiceConfig(context, phoneId, true);
        } else if (DEBUG) {
            Log.d(TAG, "Do not update if phoneId is not main capability");
        }
    }
}
