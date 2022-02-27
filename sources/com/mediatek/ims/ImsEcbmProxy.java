package com.mediatek.ims;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.SystemProperties;
import android.telephony.CarrierConfigManager;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsEcbmImplBase;
import com.android.ims.ImsManager;
import com.mediatek.ims.common.ImsCarrierConfigConstants;
import com.mediatek.ims.common.SubscriptionManagerHelper;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public class ImsEcbmProxy extends ImsEcbmImplBase {
    protected static final int EVENT_ON_ENTER_ECBM = 1;
    protected static final int EVENT_ON_EXIT_ECBM = 2;
    protected static final int EVENT_ON_NO_ECBM = 3;
    private static final String LOG_TAG = "ImsEcbmProxy";
    private static final boolean MTK_VZW_SUPPORT = "OP12".equals(SystemProperties.get("persist.vendor.operator.optr", "OM"));
    private Context mContext;
    private boolean mHandleExitEcbmInd;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.mediatek.ims.ImsEcbmProxy.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ImsEcbmProxy.this.enteredEcbm();
                    return;
                case 2:
                    if (ImsEcbmProxy.this.mHandleExitEcbmInd) {
                        ImsEcbmProxy.this.mHandleExitEcbmInd = false;
                        ImsEcbmProxy.this.exitedEcbm();
                        ImsEcbmProxy.this.tryTurnOffVolteAfterE911();
                        return;
                    }
                    return;
                case 3:
                    ImsEcbmProxy.this.tryTurnOffVolteAfterE911();
                    return;
                default:
                    return;
            }
        }
    };
    private ImsCommandsInterface mImsRILAdapter;
    private ImsServiceCallTracker mImsServiceCT;
    private int mPhoneId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsEcbmProxy(Context context, ImsCommandsInterface adapter, int phoneId) {
        logWithPhoneId("new EcbmProxy");
        this.mContext = context;
        this.mImsRILAdapter = adapter;
        this.mPhoneId = phoneId;
        this.mImsServiceCT = ImsServiceCallTracker.getInstance(this.mPhoneId);
        if (this.mImsRILAdapter != null) {
            this.mImsRILAdapter.registerForOnEnterECBM(this.mHandler, 1, null);
            this.mImsRILAdapter.registerForOnExitECBM(this.mHandler, 2, null);
            this.mImsRILAdapter.registerForOnNoECBM(this.mHandler, 3, null);
        }
    }

    public void exitEmergencyCallbackMode() {
        if (this.mImsRILAdapter != null) {
            logWithPhoneId("request exit ECBM");
            this.mHandleExitEcbmInd = true;
            this.mImsRILAdapter.requestExitEmergencyCallbackMode(null);
            return;
        }
        logWithPhoneId("request exit ECBM failed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryTurnOffVolteAfterE911() {
        if (this.mImsServiceCT.getEnableVolteForImsEcc()) {
            ImsManager imsManager = ImsManager.getInstance(this.mContext, this.mPhoneId);
            imsManager.setEnhanced4gLteModeSetting(false);
            this.mImsServiceCT.setEnableVolteForImsEcc(false);
        }
    }

    private boolean isImsEcbmSupported() {
        boolean res = false;
        int subId = SubscriptionManagerHelper.getSubIdUsingPhoneId(this.mPhoneId);
        CarrierConfigManager configMgr = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        PersistableBundle carrierConfig = configMgr.getConfigForSubId(subId);
        boolean isImsEcbmSupportedByCarrier = carrierConfig.getBoolean(ImsCarrierConfigConstants.MTK_KEY_CARRIER_IMS_ECBM_SUPPORTED);
        if (isImsEcbmSupportedByCarrier || MTK_VZW_SUPPORT) {
            res = true;
        }
        logWithPhoneId("isImsEcbmSupported(): " + res);
        return res;
    }

    private void logWithPhoneId(String msg) {
        Rlog.d(LOG_TAG, "[PhoneId = " + this.mPhoneId + "] " + msg);
    }
}
