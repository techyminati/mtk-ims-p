package com.mediatek.ims.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemProperties;
import android.telecom.VideoProfile;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.ims.ImsException;
import com.android.internal.os.SomeArgs;
import com.mediatek.ims.ImsCommonUtil;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.internal.ImsVTUsageManager;
import com.mediatek.ims.internal.VTSource;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ExtensionPluginFactory;
import com.mediatek.ims.plugin.impl.ImsCallPluginBase;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ImsVTProviderUtil {
    private static final String EXTRA_PHONE_ID = "phone_id";
    public static final int HIDE_ME_TYPE_DISABLE = 1;
    public static final int HIDE_ME_TYPE_FREEZE = 2;
    public static final int HIDE_ME_TYPE_NONE = 0;
    public static final int HIDE_ME_TYPE_PICTURE = 3;
    public static final int HIDE_YOU_TYPE_DISABLE = 0;
    public static final int HIDE_YOU_TYPE_ENABLE = 1;
    private static final int MSG_BIND = 2;
    private static final int MSG_INIT_REFVTP = 1;
    private static final int MSG_REINIT_REFVTP = 7;
    private static final int MSG_RESET_WRAPPER = 6;
    private static final int MSG_SETUIMODE = 3;
    private static final int MSG_SWITCH_FEATURE = 4;
    private static final int MSG_SWITCH_ROAMING = 5;
    public static final String PROPERTY_MAX_DRAM_SIZE = "ro.vendor.mtk_config_max_dram_size";
    private static final String PROPERTY_NO_CAMERA_MODE = "persist.vendor.vt.no_camera_mode";
    public static final String PROPERTY_RIL_ICCID_SIM = "vendor.ril.iccid.sim";
    public static final String PROPERTY_TEL_LOG = "persist.log.tag.tel_dbg";
    private static final String PROPERTY_VILTE_ENABLE = "persist.vendor.mtk.vilte.enable";
    private static final String PROPERTY_VIWIFI_ENABLE = "persist.vendor.mtk.viwifi.enable";
    private static final int SIM_NUM = TelephonyManager.getDefault().getPhoneCount();
    private static final String TAG = "ImsVT Util";
    public static final int TAG_VILTE_MOBILE = -16777216;
    public static final int TAG_VILTE_WIFI = -15728640;
    public static final int TURN_OFF_CAMERA = -1;
    public static final int UI_MODE_BG = 1;
    public static final int UI_MODE_DESTROY = 65536;
    public static final int UI_MODE_FG = 0;
    public static final int UI_MODE_FULL_SCREEN = 2;
    public static final int UI_MODE_NORMAL_SCREEN = 3;
    public static final int UI_MODE_RESET = 4;
    public static final int UI_MODE_UNCHANGED = -1;
    private static final String VILTE_SUPPORT = "persist.vendor.vilte_support";
    private static final String VIWIFI_SUPPORT = "persist.vendor.viwifi_support";
    public static final int VT_SIM_ID_ABSENT = -1;
    private static ImsVTProviderUtil mInstance;
    public static boolean sIsNoCameraMode;
    public Context mContext;
    private SimStateReceiver mSimStateReceiver;
    private SubscriptionManager mSubscriptionManager;
    private TelephonyManager mTelephonyManager;
    private ImsVTMessagePacker mPacker = new ImsVTMessagePacker();
    private Map<String, Object> mProviderById = new ConcurrentHashMap();
    private Map<String, Object> mLTEDataUsageById = new HashMap();
    private Map<String, Object> mWiFiDataUsageById = new HashMap();
    private Map<String, Object> mPhoneListenerByPhoneId = new HashMap();
    private int[] mSimCardState = new int[SIM_NUM];
    private int[] mSimAppState = new int[SIM_NUM];
    private ConditionVariable[] mSimReadyVariable = new ConditionVariable[SIM_NUM];
    private Map<Integer, PhoneStateListener> mPhoneServicesStateListeners = new ConcurrentHashMap();
    private SubscriptionManager.OnSubscriptionsChangedListener mSubscriptionsChangedlistener = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.mediatek.ims.internal.ImsVTProviderUtil.1
        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            ImsVTProviderUtil.this.updateServiceStateListeners();
        }
    };
    protected HandlerThread mProviderHandlerThread = new HandlerThread("ProviderHandlerThread");
    private Handler mProviderHandler = new Handler(this.mProviderHandlerThread.getLooper()) { // from class: com.mediatek.ims.internal.ImsVTProviderUtil.2
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            SomeArgs args;
            switch (msg.what) {
                case 1:
                    ImsVTProviderUtil.this.setContextAndInitRefVTPInternal((Context) msg.obj);
                    return;
                case 2:
                    args = (SomeArgs) msg.obj;
                    try {
                        ImsVTProvider vtp = (ImsVTProvider) args.arg1;
                        int cid = ((Integer) args.arg2).intValue();
                        int pid = ((Integer) args.arg3).intValue();
                        ImsVTProviderUtil.this.bindInternal(vtp, cid, pid);
                        return;
                    } finally {
                    }
                case 3:
                    args = (SomeArgs) msg.obj;
                    try {
                        ImsVTProvider vtp2 = (ImsVTProvider) args.arg1;
                        int mode = ((Integer) args.arg2).intValue();
                        ImsVTProviderUtil.this.setUIModeInternal(vtp2, mode);
                        return;
                    } finally {
                    }
                case 4:
                    args = (SomeArgs) msg.obj;
                    try {
                        int phoneId = ((Integer) args.arg1).intValue();
                        int feature = ((Integer) args.arg2).intValue();
                        boolean isOn = ((Boolean) args.arg3).booleanValue();
                        ImsVTProviderUtil.this.switchFeatureInternal(phoneId, feature, isOn);
                        return;
                    } finally {
                    }
                case 5:
                    args = (SomeArgs) msg.obj;
                    try {
                        int phoneId2 = ((Integer) args.arg1).intValue();
                        boolean isRoaming = ((Boolean) args.arg2).booleanValue();
                        ImsVTProviderUtil.this.switchRoamingInternal(phoneId2, isRoaming);
                        return;
                    } finally {
                    }
                case 6:
                    args = (SomeArgs) msg.obj;
                    try {
                        ImsVTProvider vtp3 = (ImsVTProvider) args.arg1;
                        ImsVTProviderUtil.this.resetWrapperInternal(vtp3);
                        return;
                    } finally {
                    }
                case 7:
                    if (ImsVTProviderUtil.isVideoCallOnByPlatform()) {
                        Log.d(ImsVTProviderUtil.TAG, "reInitRefVTP, ViLTE on, do natvie ReInit");
                        ImsVTProvider.nInitRefVTP();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private FeatureValueReceiver mFeatureValueReceiver = new FeatureValueReceiver();

    static {
        boolean z = false;
        if (SystemProperties.getInt(PROPERTY_NO_CAMERA_MODE, 0) == 1) {
            z = true;
        }
        sIsNoCameraMode = z;
        mInstance = getInstance();
    }

    /* loaded from: classes.dex */
    public static class Size {
        public int height;
        public int width;

        public Size(int w, int h) {
            this.width = w;
            this.height = h;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Size)) {
                return false;
            }
            Size s = (Size) obj;
            return this.width == s.width && this.height == s.height;
        }

        public int hashCode() {
            return (this.width * 32713) + this.height;
        }
    }

    /* loaded from: classes.dex */
    public class FeatureValueReceiver extends BroadcastReceiver {
        private ImsVTProviderUtil mOwner;
        private ArrayList<Boolean> mViLTEValue = new ArrayList<>();
        private ArrayList<Boolean> mViWifiValue = new ArrayList<>();

        public FeatureValueReceiver() {
            for (int i = 0; i < ImsVTProviderUtil.SIM_NUM; i++) {
                int propValueBit = 0;
                propValueBit = ImsCommonUtil.supportMims() ? i : propValueBit;
                boolean enable = true;
                boolean enable2 = (SystemProperties.getInt("persist.vendor.mtk.vilte.enable", 0) & (1 << propValueBit)) > 0;
                Log.d(ImsVTProviderUtil.TAG, "Getprop [persist.vendor.mtk.vilte.enable][" + i + "]=" + enable2);
                this.mViLTEValue.add(Boolean.valueOf(enable2));
                if ((SystemProperties.getInt("persist.vendor.mtk.viwifi.enable", 0) & (1 << propValueBit)) <= 0) {
                    enable = false;
                }
                Log.d(ImsVTProviderUtil.TAG, "Getprop [persist.vendor.mtk.viwifi.enable][" + i + "]=" + enable);
                this.mViWifiValue.add(Boolean.valueOf(enable));
            }
        }

        public void setOwner(ImsVTProviderUtil owner) {
            this.mOwner = owner;
        }

        public boolean getInitViLTEValue(int phondId) {
            return this.mViLTEValue.get(phondId).booleanValue();
        }

        public boolean getInitViWifiValue(int phondId) {
            return this.mViWifiValue.get(phondId).booleanValue();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null && intent.getAction().equals(ImsConfigContract.ACTION_IMS_FEATURE_CHANGED)) {
                int feature = intent.getIntExtra(ImsConfigContract.EXTRA_CHANGED_ITEM, -1);
                int phoneId = intent.getIntExtra("phone_id", -1);
                int status = intent.getIntExtra("value", -1);
                if (phoneId < 0) {
                    Log.d(ImsVTProviderUtil.TAG, "ignore it for invalid SIM id");
                } else if (feature == 1) {
                    Log.d(ImsVTProviderUtil.TAG, "onRecevied feature changed phoneId: " + phoneId + ", feature: " + feature + ", status: " + status);
                    if (status == 0) {
                        this.mViLTEValue.set(phoneId, Boolean.FALSE);
                    } else if (status == 1) {
                        this.mViLTEValue.set(phoneId, Boolean.TRUE);
                    }
                    this.mOwner.switchFeature(phoneId, ImsVTProviderUtil.TAG_VILTE_MOBILE, this.mViLTEValue.get(phoneId).booleanValue());
                } else if (feature == 3) {
                    Log.d(ImsVTProviderUtil.TAG, "onRecevied feature changed phoneId: " + phoneId + ", feature: " + feature + ", status: " + status);
                    if (status == 0) {
                        this.mViWifiValue.set(phoneId, Boolean.FALSE);
                    } else if (status == 1) {
                        this.mViWifiValue.set(phoneId, Boolean.TRUE);
                    }
                    this.mOwner.switchFeature(phoneId, ImsVTProviderUtil.TAG_VILTE_WIFI, this.mViWifiValue.get(phoneId).booleanValue());
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class VTPhoneStateListener extends PhoneStateListener {
        private Context mContext;
        private ImsVTProviderUtil mOwner;

        public VTPhoneStateListener(Integer subId) {
            super(subId);
        }

        public void setOwner(ImsVTProviderUtil owner) {
            this.mOwner = owner;
        }

        public void setContext(Context context) {
            this.mContext = context;
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            if (serviceState == null) {
                Log.d(ImsVTProviderUtil.TAG, "[onServiceStateChanged] " + this.mSubId + ": serviceState is null");
                return;
            }
            int phondId = SubscriptionManager.getPhoneId(this.mSubId.intValue());
            if (!SubscriptionManager.isValidPhoneId(phondId)) {
                Log.d(ImsVTProviderUtil.TAG, "[onServiceStateChanged] : phondId is invalid");
                return;
            }
            serviceState.getDataRoaming();
            serviceState.getVoiceRoaming();
            TelephonyManager.getDefault().getSimState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SimStateReceiver extends BroadcastReceiver {
        private ImsVTProviderUtil mOwner;

        private SimStateReceiver() {
        }

        public void setOwner(ImsVTProviderUtil owner) {
            this.mOwner = owner;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            int slotId = intent.getIntExtra("phone", -1);
            int simState = intent.getIntExtra("android.telephony.extra.SIM_STATE", 0);
            if (slotId != -1) {
                if (action.equals("android.telephony.action.SIM_CARD_STATE_CHANGED")) {
                    Log.d(ImsVTProviderUtil.TAG, "Received ACTION_SIM_CARD_STATE_CHANGED, slotId:" + slotId + ", simState:" + simState);
                    ImsVTProviderUtil.this.setSimCardState(slotId, simState);
                } else if (action.equals("android.telephony.action.SIM_APPLICATION_STATE_CHANGED")) {
                    Log.d(ImsVTProviderUtil.TAG, "Received ACTION_SIM_APPLICATION_STATE_CHANGED, slotId:" + slotId + ", simState:" + simState);
                    ImsVTProviderUtil.this.setSimAppState(slotId, simState);
                }
                if (ImsVTProviderUtil.this.isSimStateStable(slotId)) {
                    ImsVTProviderUtil.this.mSimReadyVariable[slotId].open();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class ImsVTMessagePacker {
        public ImsVTMessagePacker() {
        }

        public String packFromVdoProfile(VideoProfile videoProfile) {
            StringBuilder flattened = new StringBuilder();
            flattened.append("mVideoState");
            flattened.append("=");
            flattened.append(MtkPhoneConstants.MVNO_TYPE_NONE + videoProfile.getVideoState());
            flattened.append(";");
            flattened.append("mQuality");
            flattened.append("=");
            flattened.append(MtkPhoneConstants.MVNO_TYPE_NONE + videoProfile.getQuality());
            flattened.append(";");
            flattened.deleteCharAt(flattened.length() + (-1));
            Log.d(ImsVTProviderUtil.TAG, "[packFromVdoProfile] profile = " + flattened.toString());
            return flattened.toString();
        }

        public VideoProfile unPackToVdoProfile(String flattened) {
            Log.d(ImsVTProviderUtil.TAG, "[unPackToVdoProfile] flattened = " + flattened);
            StringTokenizer tokenizer = new StringTokenizer(flattened, ";");
            int state = 3;
            int qty = 4;
            while (tokenizer.hasMoreElements()) {
                String kv = tokenizer.nextToken();
                int pos = kv.indexOf(61);
                if (pos != -1) {
                    String k = kv.substring(0, pos);
                    String v = kv.substring(pos + 1);
                    Log.d(ImsVTProviderUtil.TAG, "[unPackToVdoProfile] k = " + k + ", v = " + v);
                    if (k.equals("mVideoState")) {
                        state = Integer.valueOf(v).intValue();
                    } else if (k.equals("mQuality")) {
                        qty = Integer.valueOf(v).intValue();
                    }
                }
            }
            Log.d(ImsVTProviderUtil.TAG, "[unPackToVdoProfile] state = " + state + ", qty = " + qty);
            return new VideoProfile(state, qty);
        }
    }

    private ImsVTProviderUtil() {
        this.mProviderHandlerThread.start();
        this.mFeatureValueReceiver.setOwner(this);
        for (int i = 0; i < SIM_NUM; i++) {
            this.mSimCardState[i] = getImsExtCallUtil().getSimCardState(i);
            this.mSimAppState[i] = getImsExtCallUtil().getSimApplicationState(i);
            this.mSimReadyVariable[i] = new ConditionVariable();
        }
        this.mSimStateReceiver = new SimStateReceiver();
        this.mSimStateReceiver.setOwner(this);
    }

    public static ImsVTProviderUtil getInstance() {
        if (mInstance == null) {
            synchronized (ImsVTProviderUtil.class) {
                mInstance = new ImsVTProviderUtil();
            }
        }
        return mInstance;
    }

    public ImsCallPluginBase getImsExtCallUtil() {
        ExtensionPluginFactory facotry = ExtensionFactory.makeExtensionPluginFactory();
        return facotry.makeImsCallPlugin(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateServiceStateListeners() {
        if (this.mSubscriptionManager == null) {
            Log.d(TAG, "[updateServiceStateListeners] Unexpected error, mSubscriptionManager=null");
        } else if (this.mTelephonyManager == null) {
            Log.d(TAG, "[updateServiceStateListeners] Unexpected error, mTelephonyManager=null");
        } else {
            HashSet<Integer> unUsedSubscriptions = new HashSet<>(this.mPhoneServicesStateListeners.keySet());
            List<SubscriptionInfo> slist = this.mSubscriptionManager.getActiveSubscriptionInfoList();
            if (slist != null) {
                for (SubscriptionInfo subInfoRecord : slist) {
                    int subId = subInfoRecord.getSubscriptionId();
                    if (this.mPhoneServicesStateListeners.get(Integer.valueOf(subId)) == null) {
                        Log.d(TAG, "[updateServiceStateListeners] create ServicesStateListener for " + subId);
                        VTPhoneStateListener listener = new VTPhoneStateListener(Integer.valueOf(subId));
                        this.mTelephonyManager.listen(listener, 1);
                        this.mPhoneServicesStateListeners.put(Integer.valueOf(subId), listener);
                    } else {
                        unUsedSubscriptions.remove(Integer.valueOf(subId));
                    }
                }
            }
            Iterator<Integer> it = unUsedSubscriptions.iterator();
            while (it.hasNext()) {
                Integer key = it.next();
                Log.d(TAG, "[updateServiceStateListeners] remove unused ServicesStateListener for " + key);
                this.mTelephonyManager.listen(this.mPhoneServicesStateListeners.get(key), 0);
                this.mPhoneServicesStateListeners.remove(key);
            }
        }
    }

    public String packFromVdoProfile(VideoProfile VideoProfile) {
        return this.mPacker.packFromVdoProfile(VideoProfile);
    }

    public VideoProfile unPackToVdoProfile(String flattened) {
        return this.mPacker.unPackToVdoProfile(flattened);
    }

    public void usageSet(int Id, long usage, int mode) {
        Log.d(TAG, "[usageSet] id = " + Id + ", usage = " + usage + ", mode = " + mode);
        if (-16777216 == mode) {
            Map<String, Object> map = this.mLTEDataUsageById;
            map.put(MtkPhoneConstants.MVNO_TYPE_NONE + Id, new Long(usage));
        } else if (-15728640 == mode) {
            Map<String, Object> map2 = this.mWiFiDataUsageById;
            map2.put(MtkPhoneConstants.MVNO_TYPE_NONE + Id, new Long(usage));
        }
    }

    public long usageGet(int Id, int mode) {
        Long usage;
        if (-16777216 == mode) {
            Map<String, Object> map = this.mLTEDataUsageById;
            usage = (Long) map.get(MtkPhoneConstants.MVNO_TYPE_NONE + Id);
        } else if (-15728640 != mode) {
            return 0L;
        } else {
            Map<String, Object> map2 = this.mWiFiDataUsageById;
            usage = (Long) map2.get(MtkPhoneConstants.MVNO_TYPE_NONE + Id);
        }
        if (usage != null) {
            Log.d(TAG, "[usageGet] usage = " + usage.longValue() + ", Id = " + Id + ", mode = " + mode);
            return usage.longValue();
        }
        Log.d(TAG, "[usageGet] usage = 0, Id = " + Id + ", mode = " + mode);
        return 0L;
    }

    public void recordAdd(int Id, ImsVTProvider p) {
        Log.d(TAG, "recordAdd id = " + Id + ", size = " + recordSize());
        Map<String, Object> map = this.mProviderById;
        StringBuilder sb = new StringBuilder();
        sb.append(MtkPhoneConstants.MVNO_TYPE_NONE);
        sb.append(Id);
        map.put(sb.toString(), p);
    }

    public void recordRemove(int Id) {
        Log.d(TAG, "recordRemove id = " + Id + ", size = " + recordSize());
        Map<String, Object> map = this.mProviderById;
        StringBuilder sb = new StringBuilder();
        sb.append(MtkPhoneConstants.MVNO_TYPE_NONE);
        sb.append(Id);
        map.remove(sb.toString());
    }

    public void recordRemoveAll() {
        Log.d(TAG, "recordRemoveAll, size = " + recordSize());
        this.mProviderById.clear();
    }

    public ImsVTProvider recordGet(int Id) {
        if (isTelephonyLogEnable()) {
            Log.d(TAG, "recordGet id = " + Id + ", size = " + recordSize());
        }
        Map<String, Object> map = this.mProviderById;
        return (ImsVTProvider) map.get(MtkPhoneConstants.MVNO_TYPE_NONE + Id);
    }

    public int recordPopId() {
        if (this.mProviderById.size() == 0) {
            return ImsVTProvider.VT_PROVIDER_INVALIDE_ID;
        }
        Iterator<Object> it = this.mProviderById.values().iterator();
        if (!it.hasNext()) {
            return ImsVTProvider.VT_PROVIDER_INVALIDE_ID;
        }
        Object p = it.next();
        return ((ImsVTProvider) p).getId();
    }

    public boolean recordContain(int Id) {
        return this.mProviderById.containsKey(Integer.valueOf(Id));
    }

    public int recordSize() {
        return this.mProviderById.size();
    }

    public synchronized void setSimCardState(int simId, int state) {
        if (simId >= 0) {
            if (simId < SIM_NUM) {
                this.mSimCardState[simId] = state;
            }
        }
    }

    public synchronized int getSimCardState(int simId) {
        if (simId >= 0) {
            if (simId < SIM_NUM) {
                return this.mSimCardState[simId];
            }
        }
        return 1;
    }

    public synchronized void setSimAppState(int simId, int state) {
        if (simId >= 0) {
            if (simId < SIM_NUM) {
                this.mSimAppState[simId] = state;
            }
        }
    }

    public synchronized int getSimAppState(int simId) {
        if (simId >= 0) {
            if (simId < SIM_NUM) {
                return this.mSimAppState[simId];
            }
        }
        return 1;
    }

    public boolean isSimStateStable(int simId) {
        int cardState = getSimCardState(simId);
        return cardState == 1 || cardState == 11;
    }

    public void waitSimStateStable(int simId) {
        if (!isSimStateStable(simId)) {
            Log.d(TAG, "waitSimStateStable, simId = " + simId);
            this.mSimReadyVariable[simId].close();
            this.mSimReadyVariable[simId].block();
        }
    }

    public void quitAllThread() {
        if (this.mProviderById.size() != 0) {
            for (Object p : this.mProviderById.values()) {
                Log.d(TAG, "quitThread, id = " + ((ImsVTProvider) p).getId());
                ((ImsVTProvider) p).quitThread();
            }
        }
    }

    public void updateCameraUsage(int Id) {
        Log.d(TAG, "updateCameraUsage");
        if (this.mProviderById.size() != 0) {
            for (Object p : this.mProviderById.values()) {
                if (((ImsVTProvider) p).getId() != Id) {
                    ((ImsVTProvider) p).setCameraInternal(null);
                }
            }
        }
    }

    public boolean isVideoCallOn(int phoneId) {
        return this.mFeatureValueReceiver.getInitViLTEValue(phoneId);
    }

    public static boolean isVideoCallOnByPlatform() {
        return false;
    }

    public static boolean is512mbProject() {
        return SystemProperties.get(PROPERTY_MAX_DRAM_SIZE, "0x40000000").equals("0x20000000");
    }

    public static boolean isVideoQualityTestMode() {
        int labOp = SystemProperties.getInt("persist.vendor.vt.lab_op_code", 0);
        return labOp == 1 || labOp == 9;
    }

    public static boolean isCameraAvailable() {
        VTSource.Resolution[] cams_info = VTSource.getAllCameraResolutions();
        return cams_info != null;
    }

    public static boolean isTelephonyLogEnable() {
        return SystemProperties.get(PROPERTY_TEL_LOG, "0").equals(RadioCapabilitySwitchUtil.IMSI_READY);
    }

    public void setContextAndInitRefVTP(Context context) {
        this.mProviderHandler.obtainMessage(1, context).sendToTarget();
    }

    public void reInitRefVTP() {
        this.mProviderHandler.obtainMessage(7).sendToTarget();
    }

    public void bind(ImsVTProvider p, int CallId, int PhoneId) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = p;
        args.arg2 = Integer.valueOf(CallId);
        args.arg3 = Integer.valueOf(PhoneId);
        this.mProviderHandler.obtainMessage(2, args).sendToTarget();
    }

    public void setUIMode(ImsVTProvider p, int mode) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = p;
        args.arg2 = Integer.valueOf(mode);
        this.mProviderHandler.obtainMessage(3, args).sendToTarget();
    }

    public void switchFeature(int phoneId, int feature, boolean isOn) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = Integer.valueOf(phoneId);
        args.arg2 = Integer.valueOf(feature);
        args.arg3 = Boolean.valueOf(isOn);
        this.mProviderHandler.obtainMessage(4, args).sendToTarget();
    }

    public void switchRoaming(int phoneId, boolean isRoaming) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = Integer.valueOf(phoneId);
        args.arg2 = Boolean.valueOf(isRoaming);
        this.mProviderHandler.obtainMessage(5, args).sendToTarget();
    }

    public void resetWrapper(ImsVTProvider p) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = p;
        this.mProviderHandler.obtainMessage(6, args).sendToTarget();
    }

    public void setContextAndInitRefVTPInternal(Context context) {
        Log.d(TAG, "setContextAndInitRefVTPInternal(), context =" + context);
        this.mContext = context;
        if (sIsNoCameraMode) {
            VTDummySource.setContext(context);
        } else {
            VTSource.setContext(context);
        }
        this.mTelephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        if (this.mFeatureValueReceiver != null) {
            Log.d(TAG, "setContextAndInitRefVTP, register FeatureValueReceiver");
            IntentFilter filter = new IntentFilter();
            filter.addAction(ImsConfigContract.ACTION_IMS_FEATURE_CHANGED);
            this.mContext.registerReceiver(this.mFeatureValueReceiver, filter);
        }
        if (this.mSimStateReceiver != null) {
            Log.d(TAG, "setContextAndInitRefVTP, register SimStateReceiver");
            IntentFilter intentFilter = new IntentFilter("android.telephony.action.SIM_CARD_STATE_CHANGED");
            this.mContext.registerReceiver(this.mSimStateReceiver, intentFilter);
        }
        this.mSubscriptionManager = SubscriptionManager.from(this.mContext);
        this.mSubscriptionManager.addOnSubscriptionsChangedListener(this.mSubscriptionsChangedlistener);
        if (isVideoCallOnByPlatform()) {
            Log.d(TAG, "setContextAndInitRefVTPInternal(), ViLTE on, do natvie init");
            ImsVTProvider.nInitRefVTP();
        }
    }

    public void bindInternal(ImsVTProvider p, int CallId, int PhoneId) {
        Log.d(TAG, "bindInternal(), vtp = " + p + ", id = " + CallId + ", phone id = " + PhoneId);
        if (65536 == p.mMode) {
            Log.d(TAG, "Ignore bind ImsVTProvider because UI_MODE_DESTROY");
        } else if (p == null) {
            Log.d(TAG, "ImsVTProvider == null");
        } else if (!isVideoCallOnByPlatform()) {
            Log.d(TAG, "Trying to bind Ims VT provider when video call is disabled");
        } else {
            int id = CallId;
            int ImsCount = 1;
            try {
                ImsCount = getImsExtCallUtil().getModemMultiImsCount();
            } catch (ImsException e) {
                Log.e(TAG, "getModemMultiImsCount with exception:" + e);
            }
            if (ImsCount > 1) {
                id = (PhoneId << 16) | CallId;
            }
            if (p.getId() == -10000) {
                int wait_time = 0;
                Log.d(TAG, "bind ImsVTProvider check if exist the same id");
                while (true) {
                    if (recordGet(id) == null) {
                        break;
                    }
                    Log.d(TAG, "bind ImsVTProvider the same id exist, wait ...");
                    try {
                        Thread.sleep(400L);
                    } catch (InterruptedException e2) {
                    }
                    wait_time++;
                    if (wait_time > 10) {
                        Log.d(TAG, "bind ImsVTProvider the same id exist, break!");
                        break;
                    }
                }
                p.setId(id);
                p.setSimId(PhoneId);
                ImsVTUsageManager.ImsVTUsage initUsage = new ImsVTUsageManager.ImsVTUsage();
                initUsage.setLteUsage(usageGet(id, TAG_VILTE_MOBILE));
                initUsage.setWifiUsage(usageGet(id, TAG_VILTE_WIFI));
                p.mUsager.setInitUsage(initUsage);
                recordAdd(id, p);
                if (sIsNoCameraMode) {
                    p.mSource = new VTDummySource();
                } else {
                    p.mSource = new VTSource(2, p.getId(), p);
                }
                p.mSource.setReplacePicture(ImsVTProvider.REPLACE_PICTURE_PATH);
                ImsVTProvider.nInitialization(id, p.getSimId());
                p.mInitComplete = true;
            }
        }
    }

    public void setUIModeInternal(ImsVTProvider p, int mode) {
        if (p != null) {
            p.onSetUIMode(mode);
        }
    }

    public void switchFeatureInternal(int phoneId, int feature, boolean isOn) {
        Log.d(TAG, "switchFeatureInternal, feature = " + feature + "isOn = " + isOn);
        if (this.mProviderById.size() != 0) {
            for (Object p : this.mProviderById.values()) {
                if (phoneId == ((ImsVTProvider) p).getSimId()) {
                    Log.d(TAG, "switchFeatureInternal, id = " + ((ImsVTProvider) p).getId());
                    ((ImsVTProvider) p).onSwitchFeature(feature, isOn);
                }
            }
        }
    }

    public void switchRoamingInternal(int phoneId, boolean isRoaming) {
        Log.d(TAG, "switchRoamingInternal, phoneId = " + phoneId + "isRoaming = " + isRoaming);
        if (this.mProviderById.size() != 0) {
            for (Object p : this.mProviderById.values()) {
                if (phoneId == ((ImsVTProvider) p).getSimId()) {
                    Log.d(TAG, "switchRoamingInternal, id = " + ((ImsVTProvider) p).getId());
                    ((ImsVTProvider) p).onSwitchRoaming(isRoaming);
                }
            }
        }
    }

    public void resetWrapperInternal(ImsVTProvider p) {
        if (p != null) {
            p.onResetWrapper();
        }
    }
}
