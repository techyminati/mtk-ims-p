package com.mediatek.ims;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telephony.Rlog;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.ims.ImsManager;
import com.android.internal.telephony.CommandException;
import com.mediatek.ims.OperatorUtils;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class MtkSuppServExt extends Handler {
    private static final boolean DBG = true;
    private static final int EVENT_IMS_REGISTRATION_INFO = 1;
    private static final int EVENT_IMS_UT_EVENT_QUERY_XCAP = 0;
    private static final int EVENT_ON_VOLTE_SUBSCRIPTION = 6;
    private static final int EVENT_RADIO_NOT_AVAILABLE = 3;
    private static final int EVENT_RADIO_OFF = 4;
    private static final int EVENT_RADIO_ON = 5;
    private static final int EVENT_RESET_SS = 2;
    private static final String ICCID_KEY = "iccid_key";
    private static final String LOG_TAG = "SuppServExt";
    private static final boolean SDBG;
    private static final String SETTING_UT_CAPABILITY = "ut_capability";
    private static final String SETTING_VOLTE_SERVICE_SUBSCRIPTION = "volte_subscription";
    private static final String SYS_PROP_QUERY_VOLTE_SUB = "persist.vendor.suppserv.query_volte_sub";
    private static final String SYS_PROP_SUB_ID_KEY = "persist.vendor.suppserv.presubid";
    private static final int TASK_QUERY_XCAP = 0;
    private static final int TASK_RESET_AND_QUERY_XCAP = 1;
    private static final int TASK_SET_UT_CAPABILITY = 3;
    private static final int TASK_SET_VOLTE_SUBSCRIPTION_DIRECLY = 2;
    private static final int UT_CAPABILITY_DISABLE = 2;
    private static final int UT_CAPABILITY_ENABLE = 1;
    private static final int UT_CAPABILITY_UNKNOWN = 0;
    private static final boolean VDBG = SystemProperties.get("ro.build.type").equals("eng");
    private static final int VOLTE_SERVICE_DISABLE = 2;
    private static final int VOLTE_SERVICE_ENABLE = 1;
    private static final int VOLTE_SERVICE_UNKNOWN = 0;
    private static int toto;
    private Context mContext;
    private ImsManager mImsManager;
    private ImsCommandsInterface mImsRILAdapter;
    private ImsService mImsService;
    private int mPhoneId;
    private SuppServTaskDriven mSuppServTaskDriven;
    private MtkSuppServExt mSuppServExt = null;
    private boolean mSimLoaded = false;
    private boolean mQueryXcapDone = false;
    private String mOldIccId = MtkPhoneConstants.MVNO_TYPE_NONE;
    private boolean mSimIsChangedAfterBoot = false;
    private int mRadioState = ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE.ordinal();
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.MtkSuppServExt.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.ACTION_SUBINFO_RECORD_UPDATED")) {
                MtkSuppServExt.this.handleSubinfoUpdate();
            } else if (action.equals("android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE")) {
                MtkSuppServExt.this.mQueryXcapDone = false;
                Task task = new Task(0, false, "Radio capability done");
                MtkSuppServExt.this.mSuppServTaskDriven.appendTask(task);
            } else if (action.equals("android.intent.action.AIRPLANE_MODE")) {
                boolean bAirplaneModeOn = intent.getBooleanExtra("state", false);
                MtkSuppServExt mtkSuppServExt = MtkSuppServExt.this;
                mtkSuppServExt.logd("ACTION_AIRPLANE_MODE_CHANGED, bAirplaneModeOn = " + bAirplaneModeOn);
                if (bAirplaneModeOn) {
                    MtkSuppServExt.this.mQueryXcapDone = false;
                }
            } else if (action.equals("android.telephony.action.SIM_APPLICATION_STATE_CHANGED")) {
                int simStatus = intent.getIntExtra("android.telephony.extra.SIM_STATE", 0);
                int subId = intent.getIntExtra("subscription", -1);
                MtkSuppServExt mtkSuppServExt2 = MtkSuppServExt.this;
                mtkSuppServExt2.logd("ACTION_SIM_APPLICATION_STATE_CHANGED: " + simStatus + ", subId: " + subId);
                if (subId == MtkSuppServExt.getSubIdUsingPhoneId(MtkSuppServExt.this.mPhoneId)) {
                    if (10 != simStatus) {
                        MtkSuppServExt.this.setSimLoaded(false);
                        return;
                    }
                    MtkSuppServExt.this.setSimLoaded(MtkSuppServExt.DBG);
                    Task task2 = new Task(0, false, "SIM loaded.");
                    MtkSuppServExt.this.mSuppServTaskDriven.appendTask(task2);
                }
            }
        }
    };

    static {
        SDBG = SystemProperties.get("ro.build.type").equals("user") ? false : DBG;
        toto = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Task {
        private boolean mExtraBool;
        private int mExtraInt;
        private String mExtraMsg;
        private int mTaskId;

        public Task(int taskId, boolean b, String extraMsg) {
            this.mTaskId = -1;
            this.mExtraBool = false;
            this.mExtraInt = -1;
            this.mExtraMsg = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mTaskId = taskId;
            this.mExtraBool = b;
            this.mExtraMsg = extraMsg;
        }

        public Task(int taskId, String extraMsg) {
            this.mTaskId = -1;
            this.mExtraBool = false;
            this.mExtraInt = -1;
            this.mExtraMsg = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mTaskId = taskId;
            this.mExtraMsg = extraMsg;
        }

        public Task(int taskId, int extraInt, String extraMsg) {
            this.mTaskId = -1;
            this.mExtraBool = false;
            this.mExtraInt = -1;
            this.mExtraMsg = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mTaskId = taskId;
            this.mExtraInt = extraInt;
            this.mExtraMsg = extraMsg;
        }

        public int getTaskId() {
            return this.mTaskId;
        }

        public int getExtraInt() {
            return this.mExtraInt;
        }

        public boolean getExtraBoolean() {
            return this.mExtraBool;
        }

        public String getExtraMsg() {
            return this.mExtraMsg;
        }

        public String toString() {
            return "Task ID: " + this.mTaskId + ", ExtraBool: " + this.mExtraBool + ", ExtraInt: " + this.mExtraInt + ", ExtraMsg: " + this.mExtraMsg;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SuppServTaskDriven extends Handler {
        private static final int EVENT_DONE = 0;
        private static final int EVENT_EXEC_NEXT = 1;
        private static final int STATE_DOING = 1;
        private static final int STATE_DONE = 2;
        private static final int STATE_NO_PENDING = 0;
        private ArrayList<Task> mPendingTask = new ArrayList<>();
        private Object mTaskLock = new Object();
        private Object mStateLock = new Object();
        private int mState = 0;

        public SuppServTaskDriven() {
        }

        public SuppServTaskDriven(Looper looper) {
            super(looper);
        }

        public void appendTask(Task task) {
            synchronized (this.mTaskLock) {
                this.mPendingTask.add(task);
            }
            Message msg = obtainMessage(1);
            msg.sendToTarget();
        }

        private int getState() {
            int i;
            synchronized (this.mStateLock) {
                i = this.mState;
            }
            return i;
        }

        private void setState(int state) {
            synchronized (this.mStateLock) {
                this.mState = state;
            }
        }

        private Task getCurrentPendingTask() {
            synchronized (this.mTaskLock) {
                if (this.mPendingTask.size() == 0) {
                    return null;
                }
                return this.mPendingTask.get(0);
            }
        }

        private void removePendingTask(int index) {
            synchronized (this.mTaskLock) {
                if (this.mPendingTask.size() > 0) {
                    this.mPendingTask.remove(index);
                }
            }
        }

        public void clearPendingTask() {
            synchronized (this.mTaskLock) {
                this.mPendingTask.clear();
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public void exec() {
            Task task = getCurrentPendingTask();
            if (task == null) {
                setState(0);
            } else if (getState() != 1) {
                setState(1);
                int taskId = task.getTaskId();
                if (MtkSuppServExt.VDBG) {
                    MtkSuppServExt.this.logd(task.toString());
                }
                switch (taskId) {
                    case 0:
                        break;
                    case 1:
                        MtkSuppServExt.this.mQueryXcapDone = false;
                        break;
                    case 2:
                        int currentVolteStatus = MtkSuppServExt.this.getVolteSubscriptionFromSettings();
                        int newVolteStatus = task.getExtraInt();
                        MtkSuppServExt mtkSuppServExt = MtkSuppServExt.this;
                        mtkSuppServExt.logd("TASK_SET_VOLTE_SUBSCRIPTION_DIRECLY, currentVolteStatus: " + currentVolteStatus + " newVolteStatus: " + newVolteStatus);
                        if (currentVolteStatus != newVolteStatus) {
                            MtkSuppServExt.this.setVolteSubscriptionToSettings(newVolteStatus);
                        }
                        MtkSuppServExt.this.mQueryXcapDone = MtkSuppServExt.DBG;
                        MtkSuppServExt.this.taskDone();
                        return;
                    case 3:
                        int currentUtStatus = MtkSuppServExt.this.getUtCapabilityFromSettings();
                        int newUtStatus = task.getExtraInt();
                        MtkSuppServExt mtkSuppServExt2 = MtkSuppServExt.this;
                        mtkSuppServExt2.logd("TASK_SET_UT_CAPABILITY, currentUtStatus: " + currentUtStatus + " newUtStatus: " + newUtStatus);
                        if (currentUtStatus != newUtStatus) {
                            MtkSuppServExt.this.setUtCapabilityToSettings(newUtStatus);
                        }
                        MtkSuppServExt.this.mQueryXcapDone = MtkSuppServExt.DBG;
                        MtkSuppServExt.this.taskDone();
                        return;
                    default:
                        MtkSuppServExt.this.taskDone();
                        return;
                }
                boolean force = task.getExtraBoolean();
                String extraMsg = task.getExtraMsg();
                MtkSuppServExt.this.startHandleXcapQueryProcess(force, extraMsg);
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    removePendingTask(0);
                    setState(2);
                    break;
                case 1:
                    break;
                default:
                    return;
            }
            exec();
        }

        private String stateToString(int state) {
            switch (state) {
                case 0:
                    return "STATE_NO_PENDING";
                case 1:
                    return "STATE_DOING";
                case 2:
                    return "STATE_DONE";
                default:
                    return "UNKNOWN_STATE";
            }
        }

        private String eventToString(int event) {
            switch (event) {
                case 0:
                    return "EVENT_DONE";
                case 1:
                    return "EVENT_EXEC_NEXT";
                default:
                    return "UNKNOWN_EVENT";
            }
        }
    }

    private boolean checkNeedQueryXcap() {
        if ("0".equals(SystemProperties.get(SYS_PROP_QUERY_VOLTE_SUB, "0"))) {
            return false;
        }
        if (isOp(OperatorUtils.OPID.OP01) || isOp(OperatorUtils.OPID.OP09)) {
            return DBG;
        }
        return false;
    }

    private boolean isOp(OperatorUtils.OPID id) {
        return OperatorUtils.isOperator(OperatorUtils.getSimOperatorNumericForPhone(this.mPhoneId), id);
    }

    public MtkSuppServExt(Context context, int phoneId, ImsService imsService, Looper looper) {
        super(looper);
        this.mPhoneId = 1;
        this.mImsManager = null;
        this.mSuppServTaskDriven = null;
        this.mContext = context;
        this.mPhoneId = phoneId;
        this.mImsService = imsService;
        this.mImsRILAdapter = this.mImsService.getImsRILAdapter(phoneId);
        this.mSuppServTaskDriven = new SuppServTaskDriven(looper);
        this.mImsManager = ImsManager.getInstance(context, phoneId);
        checkImsInService();
        registerBroadcastReceiver();
        registerEvent();
        logd("MtkSuppServExt init done.");
    }

    private void checkImsInService() {
        if (this.mImsService.getImsServiceState(this.mPhoneId) == 0) {
            this.mQueryXcapDone = DBG;
            setVolteSubscriptionToSettings(1);
        }
    }

    private void registerBroadcastReceiver() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.ACTION_SUBINFO_RECORD_UPDATED");
        filter.addAction("android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE");
        filter.addAction("android.intent.action.AIRPLANE_MODE");
        filter.addAction("android.telephony.action.SIM_APPLICATION_STATE_CHANGED");
        this.mContext.registerReceiver(this.mBroadcastReceiver, filter);
    }

    private void registerEvent() {
        this.mImsRILAdapter.registerForImsRegistrationInfo(this, 1, null);
        this.mImsRILAdapter.registerForNotAvailable(this, 3, null);
        this.mImsRILAdapter.registerForOff(this, 4, null);
        this.mImsRILAdapter.registerForOn(this, 5, null);
        this.mImsRILAdapter.registerForVolteSubscription(this, 6, null);
    }

    private void unRegisterEvent() {
        this.mImsRILAdapter.unregisterForImsRegistrationInfo(this);
        this.mImsRILAdapter.unregisterForNotAvailable(this);
        this.mImsRILAdapter.unregisterForOff(this);
        this.mImsRILAdapter.unregisterForOn(this);
        this.mImsRILAdapter.unregisterForVolteSubscription(this);
    }

    private void unRegisterBroadReceiver() {
        this.mContext.unregisterReceiver(this.mBroadcastReceiver);
    }

    public void dispose() {
        unRegisterBroadReceiver();
    }

    private boolean checkInitCriteria(StringBuilder criteriaFailReason) {
        if (!checkNeedQueryXcap()) {
            criteriaFailReason.append("No need to support for this operator, ");
            return false;
        } else if (!isDataEnabled()) {
            criteriaFailReason.append("Data is not enabled, ");
            return false;
        } else if (!isSubInfoReady()) {
            criteriaFailReason.append("SubInfo not ready, ");
            return false;
        } else if (!getSimLoaded()) {
            criteriaFailReason.append("Sim not loaded, ");
            return false;
        } else if (this.mQueryXcapDone) {
            criteriaFailReason.append("No need query, ");
            return false;
        } else if (!this.mSimIsChangedAfterBoot) {
            criteriaFailReason.append("Sim not changed, ");
            return false;
        } else if (this.mRadioState != ImsCommandsInterface.RadioState.RADIO_ON.ordinal()) {
            criteriaFailReason.append("radio not available, ");
            return false;
        } else {
            criteriaFailReason.append("All Criteria ready.");
            return DBG;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startHandleXcapQueryProcess(boolean forceQuery, String reason) {
        StringBuilder criteriaFailReason = new StringBuilder();
        boolean checkCriteria = checkInitCriteria(criteriaFailReason);
        logd("startHandleXcapQueryProcess(), forceQuery: " + forceQuery + ", reason: " + reason + ", checkCriteria: " + checkCriteria + ", criteriaFailReason: " + criteriaFailReason.toString());
        if (!checkCriteria) {
            taskDone();
            return;
        }
        this.mSimIsChangedAfterBoot = false;
        startXcapQuery();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void taskDone() {
        Message ssmsg = this.mSuppServTaskDriven.obtainMessage(0);
        ssmsg.sendToTarget();
    }

    private boolean isSubInfoReady() {
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        int subId = getSubIdUsingPhoneId(this.mPhoneId);
        String iccid = tm.getSimSerialNumber(subId);
        if (!TextUtils.isEmpty(iccid)) {
            return DBG;
        }
        return false;
    }

    private boolean isDataEnabled() {
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        int subId = getSubIdUsingPhoneId(this.mPhoneId);
        return tm.getDataEnabled(subId);
    }

    private void startXcapQuery() {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            Message msg = obtainMessage(0, null);
            this.mImsRILAdapter.getXcapStatus(msg);
            return;
        }
        taskDone();
    }

    private boolean getSimLoaded() {
        logi("mSimLoaded: " + this.mSimLoaded);
        return this.mSimLoaded;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSimLoaded(boolean value) {
        logi("Set mSimLoaded: " + value);
        this.mSimLoaded = value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSubinfoUpdate() {
        if (isSubInfoReady()) {
            handleSuppServInit();
        }
    }

    private void handleSuppServInit() {
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        int subId = getSubIdUsingPhoneId(this.mPhoneId);
        String iccid = tm.getSimSerialNumber(subId);
        if (!TextUtils.isEmpty(iccid)) {
            handleSuppServIfSimChanged();
            handleXcapQueryIfSimChangedOrBootup(iccid);
        }
    }

    private void handleSuppServIfSimChanged() {
        int oldSubId = getPreviousSubId();
        int subId = getSubIdUsingPhoneId(this.mPhoneId);
        logw("handleSuppServIfSimChanged mySubId " + getSubIdUsingPhoneId(this.mPhoneId) + " old subid : " + oldSubId);
        if (subId >= 0 && oldSubId != subId) {
            saveSubId(subId);
            resetSuppServ();
        }
    }

    private void handleXcapQueryIfSimChangedOrBootup(String iccid) {
        logw("handleXcapQueryIfSimChangedOrBootup mySubId " + getSubIdUsingPhoneId(this.mPhoneId) + " old iccid : " + Rlog.pii(SDBG, this.mOldIccId) + " new iccid : " + Rlog.pii(SDBG, iccid));
        if (!iccid.equals(this.mOldIccId)) {
            this.mOldIccId = iccid;
            this.mSimIsChangedAfterBoot = DBG;
            this.mSuppServTaskDriven.clearPendingTask();
            setVolteSubscriptionDirectly(0, "Reset VoLTE subscription status");
            setUtCapabilityDirectly(0, "Reset Ut capabatility status");
            Task task = new Task(1, false, "Sim Changed or Bootup");
            this.mSuppServTaskDriven.appendTask(task);
        } else if (VDBG) {
            logd("handleXcapQueryIfSimChangedOrBootup: Same SIM.");
        }
    }

    private void setVolteSubscriptionDirectly(int status, String msgStr) {
        Task task = new Task(2, status, msgStr);
        this.mSuppServTaskDriven.appendTask(task);
    }

    private void setUtCapabilityDirectly(int status, String msgStr) {
        Task task = new Task(3, status, msgStr);
        this.mSuppServTaskDriven.appendTask(task);
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        logd("handleMessage: " + toEventString(msg.what) + "(" + msg.what + ")");
        AsyncResult ar = (AsyncResult) msg.obj;
        switch (msg.what) {
            case 0:
                int imsServiceState = this.mImsService.getImsServiceState(this.mPhoneId);
                logd("imsServiceState: " + imsServiceState);
                if (ar.exception == null || this.mImsService.getImsServiceState(this.mPhoneId) == 0) {
                    logd("EVENT_IMS_UT_EVENT_QUERY_XCAP, query successfully");
                } else if (ar.exception instanceof CommandException) {
                    commandExceptionToVolteServiceStatus((CommandException) ar.exception);
                    logd("EVENT_IMS_UT_EVENT_QUERY_XCAP, get CommandException");
                } else {
                    logd("EVENT_IMS_UT_EVENT_QUERY_XCAP, get ImsException");
                }
                this.mQueryXcapDone = DBG;
                taskDone();
                return;
            case 1:
                int status = ((int[]) ar.result)[0];
                logd("EVENT_IMS_REGISTRATION_INFO: " + status);
                if (status == 1) {
                    setVolteSubscriptionDirectly(1, "Ims registered.");
                    return;
                }
                return;
            case 2:
                logd("EVENT_RESET_SS Done");
                return;
            case 3:
                this.mRadioState = ImsCommandsInterface.RadioState.RADIO_UNAVAILABLE.ordinal();
                return;
            case 4:
                this.mRadioState = ImsCommandsInterface.RadioState.RADIO_OFF.ordinal();
                return;
            case 5:
                this.mRadioState = ImsCommandsInterface.RadioState.RADIO_ON.ordinal();
                Task task = new Task(0, false, "Radio on");
                this.mSuppServTaskDriven.appendTask(task);
                return;
            case 6:
                int volteSubstatus = ((int[]) ar.result)[0];
                logd(" EVENT_ON_VOLTE_SUBSCRIPTION, volteSubstatus = " + volteSubstatus);
                if (volteSubstatus == 1) {
                    setVolteSubscriptionDirectly(1, "Receive VoLTE Subscription URC");
                    setUtCapabilityDirectly(1, "Receive VoLTE Subscription URC");
                    return;
                } else if (volteSubstatus == 2) {
                    setVolteSubscriptionDirectly(2, "Receive VoLTE Subscription URC");
                    setUtCapabilityDirectly(2, "Receive VoLTE Subscription URC");
                    return;
                } else {
                    return;
                }
            default:
                logd("Unhandled msg: " + msg.what);
                return;
        }
    }

    private int commandExceptionToVolteServiceStatus(CommandException commandException) {
        CommandException.Error err = commandException.getCommandError();
        logd("commandException: " + err);
        if (err == CommandException.Error.OEM_ERROR_2) {
            return 2;
        }
        if (err == CommandException.Error.OEM_ERROR_4 || err == CommandException.Error.OEM_ERROR_1) {
            return 1;
        }
        if (err == CommandException.Error.REQUEST_NOT_SUPPORTED) {
            return 2;
        }
        return 0;
    }

    public boolean isSupportCFT() {
        int status = getVolteSubscriptionFromSettings();
        logd("isSupportCFT: getVolteSubscriptionFromSettings = " + status);
        if (isOp(OperatorUtils.OPID.OP01)) {
            return DBG;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getVolteSubscriptionFromSettings() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        int status = Settings.Global.getInt(contentResolver, SETTING_VOLTE_SERVICE_SUBSCRIPTION + this.mPhoneId, 0);
        return status;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVolteSubscriptionToSettings(int status) {
        logd("setVolteSubscriptionToSettings: " + status);
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Settings.Global.putInt(contentResolver, SETTING_VOLTE_SERVICE_SUBSCRIPTION + this.mPhoneId, status);
    }

    public int getUtCapabilityFromSettings() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        int status = Settings.Global.getInt(contentResolver, SETTING_UT_CAPABILITY + this.mPhoneId, 0);
        return status;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUtCapabilityToSettings(int status) {
        logd("setUtCapabilityToSettings: " + status);
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Settings.Global.putInt(contentResolver, SETTING_UT_CAPABILITY + this.mPhoneId, status);
        this.mImsService.notifyUtCapabilityChange(this.mPhoneId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSubIdUsingPhoneId(int phoneId) {
        int[] values = SubscriptionManager.getSubId(phoneId);
        if (values == null || values.length <= 0) {
            return SubscriptionManager.getDefaultSubscriptionId();
        }
        return values[0];
    }

    private void saveSubId(int subId) {
        toto = subId;
    }

    private int getPreviousSubId() {
        if (toto != -1) {
            return toto;
        }
        String subId = TelephonyManager.getTelephonyProperty(this.mPhoneId, SYS_PROP_SUB_ID_KEY, "-1");
        if (subId.isEmpty()) {
            return -1;
        }
        try {
            return Integer.parseInt(subId);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private void saveIccidtoSp(String iccid) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        SharedPreferences.Editor editor = sp.edit();
        editor.putString(ICCID_KEY + this.mPhoneId, iccid);
        if (!editor.commit()) {
            loge("Failed to commit iccid preference");
        }
    }

    private String getIccIdFromSp() {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        String iccid = sp.getString(ICCID_KEY + this.mPhoneId, MtkPhoneConstants.MVNO_TYPE_NONE);
        logd("getIccIdFromSp: " + iccid);
        return iccid;
    }

    private void resetSuppServ() {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            Message msg = obtainMessage(2, null);
            this.mImsRILAdapter.resetSuppServ(msg);
        }
    }

    private String toEventString(int event) {
        switch (event) {
            case 0:
                return "EVENT_IMS_UT_EVENT_QUERY_XCAP";
            case 1:
                return "EVENT_IMS_REGISTRATION_INFO";
            case 2:
                return "EVENT_RESET_SS";
            case 3:
                return "EVENT_RADIO_NOT_AVAILABLE";
            case 4:
                return "EVENT_RADIO_OFF";
            case 5:
                return "EVENT_RADIO_ON";
            case 6:
                return "EVENT_ON_VOLTE_SUBSCRIPTION";
            default:
                return "UNKNOWN_IMS_EVENT_ID";
        }
    }

    private void loge(String s) {
        Rlog.e(LOG_TAG, "[" + this.mPhoneId + "]" + s);
    }

    private void logw(String s) {
        Rlog.w(LOG_TAG, "[" + this.mPhoneId + "]" + s);
    }

    private void logi(String s) {
        Rlog.i(LOG_TAG, "[" + this.mPhoneId + "]" + s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String s) {
        Rlog.d(LOG_TAG, "[" + this.mPhoneId + "]" + s);
    }

    private void logv(String s) {
        Rlog.v(LOG_TAG, "[" + this.mPhoneId + "]" + s);
    }
}
