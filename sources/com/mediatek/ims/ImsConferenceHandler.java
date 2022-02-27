package com.mediatek.ims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.SystemProperties;
import android.telephony.CarrierConfigManager;
import android.telephony.PhoneNumberUtils;
import android.telephony.Rlog;
import android.telephony.ims.ImsConferenceState;
import android.text.TextUtils;
import com.mediatek.ims.DefaultConferenceHandler;
import com.mediatek.ims.common.ImsCarrierConfigConstants;
import com.mediatek.ims.common.SubscriptionManagerHelper;
import com.mediatek.ims.internal.ConferenceCallMessageHandler;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
/* loaded from: classes.dex */
public class ImsConferenceHandler extends DefaultConferenceHandler {
    private static final String ANONYMOUS_URI = "sip:anonymous@anonymous.invalid";
    private static final int CEP_TIMEOUT = 5000;
    private static final int CONFERENCE_STATE_ACTIVE = 1;
    private static final int CONFERENCE_STATE_CLOSED = 0;
    private static final String CONF_HOST = "host";
    private static final boolean DBG = true;
    private static final int EVENT_CLOSE_CONFERENCE = 1;
    private static final int EVENT_TRY_UPDATE_WITH_LOCAL_CACHE = 0;
    private static final String LOG_TAG = "ImsConferenceHandler";
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final boolean SENLOG = TextUtils.equals(Build.TYPE, "user");
    private static final boolean TELDBG;
    private static final String USER_ENTITY = "user-entity";
    private static final boolean VDBG = false;
    private static DefaultConferenceHandler mConfHdler;
    private static DefaultConferenceHandler.Listener mListener;
    private String mAddingParticipant;
    private Context mContext;
    private String mLatestRemovedParticipant;
    private String mRemovingParticipant;
    private LinkedHashMap mConfParticipants = new LinkedHashMap();
    private List<Bundle> mUnknowParticipants = new ArrayList();
    private ArrayList<String> mLocalParticipants = new ArrayList<>();
    private int mConfCallId = -1;
    private int mCepVersion = -1;
    private int mPhoneId = -1;
    private int mConfState = 0;
    private boolean mIsFirstCep = DBG;
    private String mHostAddr = null;
    private boolean mIsCepNotified = false;
    private boolean mRestoreParticipantsAddr = false;
    private boolean mRemoveParticipantsByUserEntity = false;
    private LinkedHashMap mConfParticipantsAddr = new LinkedHashMap();
    private Handler mHandler = new Handler() { // from class: com.mediatek.ims.ImsConferenceHandler.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Rlog.d(ImsConferenceHandler.LOG_TAG, "handleMessage: " + msg.what);
            switch (msg.what) {
                case 0:
                    if (ImsConferenceHandler.this.mIsCepNotified) {
                        Rlog.d(ImsConferenceHandler.LOG_TAG, "CEP is notified, no need to update with local cache");
                        return;
                    } else {
                        ImsConferenceHandler.this.updateConferenceStateWithLocalCache();
                        return;
                    }
                case 1:
                    ImsConferenceHandler.this.closeConferenceInternal(msg.arg1);
                    return;
                default:
                    return;
            }
        }
    };
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.ImsConferenceHandler.2
        private ConferenceCallMessageHandler parseXmlPackage(int len, String data) {
            try {
                InputStream inStream = new ByteArrayInputStream(data.getBytes(StandardCharsets.UTF_8));
                SAXParserFactory factory = SAXParserFactory.newInstance();
                SAXParser saxParse = factory.newSAXParser();
                ConferenceCallMessageHandler xmlData = new ConferenceCallMessageHandler();
                saxParse.parse(inStream, xmlData);
                return xmlData;
            } catch (Exception ex) {
                Rlog.d(ImsConferenceHandler.LOG_TAG, "Parsing exception: " + ex.toString());
                ImsConferenceHandler.this.updateConferenceStateWithLocalCache();
                return null;
            }
        }

        private Bundle packUserInfo(ConferenceCallMessageHandler.User user) {
            String entity = user.getEntity();
            String userAddr = ImsConferenceHandler.this.getUserNameFromSipTelUriString(entity);
            Bundle userInfo = new Bundle();
            userInfo.putString("user", userAddr);
            userInfo.putString("display-text", user.getDisplayText());
            userInfo.putString("endpoint", user.getEndPoint());
            userInfo.putString("status", user.getStatus());
            userInfo.putString(ImsConferenceHandler.USER_ENTITY, entity);
            return userInfo;
        }

        private void fullUpdateParticipants(List<ConferenceCallMessageHandler.User> users) {
            Rlog.d(ImsConferenceHandler.LOG_TAG, "reset all users as participants :" + users.size());
            ImsConferenceHandler.this.mUnknowParticipants.clear();
            ImsConferenceHandler.this.mConfParticipants.clear();
            int counter = 0;
            for (ConferenceCallMessageHandler.User user : users) {
                String entity = user.getEntity();
                String userAddr = ImsConferenceHandler.this.getUserNameFromSipTelUriString(entity);
                Bundle userInfo = packUserInfo(user);
                Rlog.d(ImsConferenceHandler.LOG_TAG, "handle user: " + ImsConferenceHandler.this.sensitiveEncode(entity) + " addr: " + ImsConferenceHandler.this.sensitiveEncode(userAddr));
                if (counter != 0 || !ImsConferenceHandler.this.getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_CONF_FIRST_PARTICIPANT_AS_HOST_SUPPORTED) || users.size() <= ImsConferenceHandler.this.mLocalParticipants.size() || ImsConferenceHandler.this.mHostAddr != null) {
                    counter++;
                    if (userAddr == null || userAddr.trim().length() == 0) {
                        ImsConferenceHandler.this.mUnknowParticipants.add(userInfo);
                        Rlog.d(ImsConferenceHandler.LOG_TAG, "add unknow participants");
                    } else {
                        ImsConferenceHandler.this.mConfParticipants.put(userAddr, userInfo);
                    }
                } else {
                    Rlog.d(ImsConferenceHandler.LOG_TAG, "Handle 1st user as host for this case.");
                    counter++;
                }
            }
        }

        private void partialUpdateParticipants(List<ConferenceCallMessageHandler.User> users) {
            Rlog.d(ImsConferenceHandler.LOG_TAG, "partial update participants");
            for (ConferenceCallMessageHandler.User user : users) {
                String entity = user.getEntity();
                String userAddr = ImsConferenceHandler.this.getUserNameFromSipTelUriString(entity);
                if (ImsConferenceHandler.this.mRestoreParticipantsAddr) {
                    userAddr = getPairedAddressFromCache(userAddr);
                }
                Bundle userInfo = packUserInfo(user);
                Rlog.d(ImsConferenceHandler.LOG_TAG, "handle user: " + ImsConferenceHandler.this.sensitiveEncode(entity) + " addr: " + ImsConferenceHandler.this.sensitiveEncode(userAddr));
                String status = user.getStatus();
                if (userAddr == null || userAddr.trim().length() == 0) {
                    if (status.equals("connected")) {
                        ImsConferenceHandler.this.mUnknowParticipants.add(userInfo);
                        Rlog.d(ImsConferenceHandler.LOG_TAG, "add unknow participants");
                    } else if (status.equals(ConferenceCallMessageHandler.STATUS_DISCONNECTED) && ImsConferenceHandler.this.mUnknowParticipants.size() > 0) {
                        ImsConferenceHandler.this.mUnknowParticipants.remove(ImsConferenceHandler.this.mUnknowParticipants.size() - 1);
                        Rlog.d(ImsConferenceHandler.LOG_TAG, "remove unknow participants");
                    }
                } else if (!status.equals(ConferenceCallMessageHandler.STATUS_DIALING_OUT)) {
                    ImsConferenceHandler.this.mConfParticipants.put(userAddr, userInfo);
                }
            }
        }

        private boolean isEmptyConference() {
            int userCount = ImsConferenceHandler.this.mUnknowParticipants.size();
            for (Map.Entry<String, Bundle> entry : ImsConferenceHandler.this.mConfParticipants.entrySet()) {
                String userHandle = entry.getKey();
                Bundle confInfo = entry.getValue();
                String status = confInfo.getString("status");
                if (!status.equals(ConferenceCallMessageHandler.STATUS_DISCONNECTED) && !ImsConferenceHandler.this.isSelfAddress(userHandle)) {
                    userCount++;
                }
            }
            if (userCount == 0) {
                return ImsConferenceHandler.DBG;
            }
            return false;
        }

        private void handleImsConfCallMessage(int len, String data) {
            if (ImsConferenceHandler.this.mConfCallId == -1) {
                Rlog.e(ImsConferenceHandler.LOG_TAG, "ImsConference is closed");
            } else if (data == null || data.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                Rlog.e(ImsConferenceHandler.LOG_TAG, "Failed to handleImsConfCallMessage due to data is empty");
            } else {
                Rlog.d(ImsConferenceHandler.LOG_TAG, "handleVoLteConfCallMessage, data length = " + data.length());
                ConferenceCallMessageHandler xmlData = parseXmlPackage(len, data);
                if (xmlData == null) {
                    Rlog.e(ImsConferenceHandler.LOG_TAG, "can't create xmlData object, update conf state with local cache");
                    ImsConferenceHandler.this.updateConferenceStateWithLocalCache();
                    return;
                }
                if (ImsConferenceHandler.this.mHostAddr == null) {
                    ImsConferenceHandler.this.mHostAddr = ImsConferenceHandler.this.getUserNameFromSipTelUriString(xmlData.getHostInfo());
                }
                int cepState = xmlData.getCEPState();
                boolean isPartialCEP = cepState == 2 ? ImsConferenceHandler.DBG : false;
                Rlog.d(ImsConferenceHandler.LOG_TAG, "isPartialCEP: " + isPartialCEP);
                int version = xmlData.getVersion();
                if (!isPartialCEP) {
                    if (ImsConferenceHandler.this.mCepVersion <= version || ImsConferenceHandler.this.mCepVersion == -1) {
                        ImsConferenceHandler.this.mCepVersion = version;
                    } else {
                        Rlog.e(ImsConferenceHandler.LOG_TAG, "version is less than local version" + ImsConferenceHandler.this.mCepVersion + "," + version);
                        return;
                    }
                }
                List<ConferenceCallMessageHandler.User> users = xmlData.getUsers();
                int userCount = xmlData.getUserCount();
                switch (cepState) {
                    case 1:
                        fullUpdateParticipants(users);
                        break;
                    case 2:
                        partialUpdateParticipants(users);
                        break;
                    default:
                        if (userCount != -1 && userCount != users.size()) {
                            partialUpdateParticipants(users);
                            break;
                        } else {
                            fullUpdateParticipants(users);
                            break;
                        }
                        break;
                }
                if (!isEmptyConference() || !ImsConferenceHandler.this.shouldAutoTerminateConf() || ImsConferenceHandler.this.mIsFirstCep) {
                    if (ImsConferenceHandler.this.mRestoreParticipantsAddr) {
                        restoreParticipantsAddressByLocalCache();
                    }
                    ImsConferenceHandler.this.notifyConfStateUpdate();
                    updateLocalCache();
                    ImsConferenceHandler.this.mIsFirstCep = false;
                    return;
                }
                Rlog.d(ImsConferenceHandler.LOG_TAG, "no participants, terminate the conference");
                if (ImsConferenceHandler.mListener != null) {
                    ImsConferenceHandler.mListener.onAutoTerminate();
                }
            }
        }

        private String getPairedAddressFromCache(String addr) {
            Iterator it = ImsConferenceHandler.this.mLocalParticipants.iterator();
            while (it.hasNext()) {
                String cache = (String) it.next();
                if (PhoneNumberUtils.compareLoosely(addr, cache)) {
                    Rlog.d(ImsConferenceHandler.LOG_TAG, "getPairedAddressFromCache: " + cache);
                    ImsConferenceHandler.this.mConfParticipantsAddr.put(cache, addr);
                    return cache;
                }
            }
            if (ImsConferenceHandler.this.mLatestRemovedParticipant == null || !PhoneNumberUtils.compareLoosely(addr, ImsConferenceHandler.this.mLatestRemovedParticipant)) {
                return addr;
            }
            Rlog.d(ImsConferenceHandler.LOG_TAG, "getPairedAddressFromLatestRemoved: " + ImsConferenceHandler.this.mLatestRemovedParticipant);
            return ImsConferenceHandler.this.mLatestRemovedParticipant;
        }

        private void updateLocalCache() {
            for (Map.Entry<String, Bundle> entry : ImsConferenceHandler.this.mConfParticipants.entrySet()) {
                Bundle confInfo = entry.getValue();
                String status = confInfo.getString("status");
                String addr = confInfo.getString("user");
                if (status.equals(ConferenceCallMessageHandler.STATUS_DISCONNECTED)) {
                    ImsConferenceHandler.this.mLocalParticipants.remove(addr);
                }
            }
        }

        private void restoreParticipantsAddressByLocalCache() {
            ArrayList<String> restoreCandidate = new ArrayList<>(ImsConferenceHandler.this.mLocalParticipants);
            LinkedHashMap restoreList = new LinkedHashMap();
            LinkedHashMap participants = new LinkedHashMap(ImsConferenceHandler.this.mConfParticipants);
            for (Map.Entry<String, Bundle> entry : participants.entrySet()) {
                String userHandle = entry.getKey();
                Bundle confInfo = entry.getValue();
                String restoreAddr = getPairedAddressFromCache(userHandle);
                if (ImsConferenceHandler.this.isSelfAddress(userHandle) || restoreCandidate.remove(restoreAddr)) {
                    confInfo.putString("user", restoreAddr);
                    ImsConferenceHandler.this.mConfParticipants.put(userHandle, confInfo);
                    Rlog.d(ImsConferenceHandler.LOG_TAG, "restore participant: " + userHandle + " to: " + ImsConferenceHandler.this.sensitiveEncode(restoreAddr));
                } else {
                    restoreList.put(userHandle, confInfo);
                    Rlog.d(ImsConferenceHandler.LOG_TAG, "wait for restore: " + ImsConferenceHandler.this.sensitiveEncode(restoreAddr));
                }
            }
            Iterator<Map.Entry<String, Bundle>> resIterator = restoreList.entrySet().iterator();
            ArrayList<String> restoreUnknowCandidates = new ArrayList<>(restoreCandidate);
            int i = 0;
            int restoreIndex = 0;
            while (resIterator.hasNext() && restoreCandidate.size() > restoreIndex) {
                Map.Entry<String, Bundle> entry2 = resIterator.next();
                String userHandle2 = entry2.getKey();
                Bundle confInfo2 = entry2.getValue();
                String restoreAddr2 = restoreCandidate.get(restoreIndex);
                if (restoreUnknowCandidates.size() > 0) {
                    restoreUnknowCandidates.remove(i);
                }
                String status = confInfo2.getString("status");
                if (!status.equals(ConferenceCallMessageHandler.STATUS_DISCONNECTED)) {
                    ImsConferenceHandler.this.mConfParticipantsAddr.put(restoreAddr2, userHandle2);
                    confInfo2.putString("user", restoreAddr2);
                    ImsConferenceHandler.this.mConfParticipants.put(userHandle2, confInfo2);
                    Rlog.d(ImsConferenceHandler.LOG_TAG, "restore participant: " + userHandle2 + " to: " + ImsConferenceHandler.this.sensitiveEncode(restoreAddr2));
                    restoreIndex++;
                    i = 0;
                }
            }
            restoreUnknowParticipants(restoreUnknowCandidates);
        }

        private void restoreUnknowParticipants(ArrayList<String> restoreUnknowCandidates) {
            List<Bundle> restoredUnknowParticipants = new ArrayList<>(ImsConferenceHandler.this.mUnknowParticipants);
            int restoreIndex = 0;
            for (Bundle userInfo : ImsConferenceHandler.this.mUnknowParticipants) {
                if (restoreUnknowCandidates.size() <= restoreIndex) {
                    restoredUnknowParticipants.add(userInfo);
                } else {
                    String restoreAddr = restoreUnknowCandidates.get(restoreIndex);
                    userInfo.putString("user", restoreAddr);
                    ImsConferenceHandler.this.mConfParticipants.put(restoreAddr, userInfo);
                    if (restoredUnknowParticipants.size() > 0) {
                        restoredUnknowParticipants.remove(0);
                    }
                    Rlog.d(ImsConferenceHandler.LOG_TAG, "restore unknow participants(" + restoreIndex + ") to: " + restoreAddr);
                    restoreIndex++;
                }
            }
            ImsConferenceHandler.this.mUnknowParticipants = restoredUnknowParticipants;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Rlog.d(ImsConferenceHandler.LOG_TAG, "received broadcast " + action);
            if (ImsConstants.ACTION_IMS_CONFERENCE_CALL_INDICATION.equals(action)) {
                String data = intent.getStringExtra(ImsConstants.EXTRA_MESSAGE_CONTENT);
                if (data != null && !data.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                    ImsConferenceHandler.this.mIsCepNotified = ImsConferenceHandler.DBG;
                    handleImsConfCallMessage(data.length(), data);
                    return;
                }
                return;
            }
            Rlog.e(ImsConferenceHandler.LOG_TAG, "can't handle conference message since no call ID. Abnormal Case");
        }
    };

    static {
        boolean z = false;
        if (SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1) {
            z = true;
        }
        TELDBG = z;
    }

    public static DefaultConferenceHandler getInstance() {
        if (mConfHdler == null) {
            if (ImsCommonUtil.supportMdAutoSetupIms()) {
                mConfHdler = new DefaultConferenceHandler();
            } else {
                mConfHdler = new ImsConferenceHandler();
            }
        }
        return mConfHdler;
    }

    private ImsConferenceHandler() {
        Rlog.d(LOG_TAG, "ImsConferenceHandler()");
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void startConference(Context ctx, DefaultConferenceHandler.Listener listener, String callId, int phoneId) {
        if (this.mContext != null) {
            Rlog.d(LOG_TAG, "startConference() failed, a conference is ongoing");
            return;
        }
        Rlog.d(LOG_TAG, "startConference()");
        mListener = listener;
        this.mContext = ctx;
        IntentFilter filter = new IntentFilter();
        filter.addAction(ImsConstants.ACTION_IMS_CONFERENCE_CALL_INDICATION);
        this.mContext.registerReceiver(this.mBroadcastReceiver, filter);
        this.mConfCallId = Integer.parseInt(callId);
        this.mPhoneId = phoneId;
        this.mIsFirstCep = DBG;
        this.mConfState = 1;
        this.mRestoreParticipantsAddr = getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_RESTORE_ADDRESS_FOR_IMS_CONFERENCE_PARTICIPANTS);
        this.mRemoveParticipantsByUserEntity = getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_OPERATE_IMS_CONFERENCE_PARTICIPANTS_BY_USER_ENTITY);
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void closeConference(String callId) {
        Rlog.d(LOG_TAG, "closeConference() " + callId);
        if (callId != null && this.mConfCallId == Integer.parseInt(callId)) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, Integer.parseInt(callId), 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeConferenceInternal(int callId) {
        Rlog.d(LOG_TAG, "closeConferenceInternal()");
        this.mConfState = 0;
        mListener = null;
        if (this.mContext != null) {
            this.mContext.unregisterReceiver(this.mBroadcastReceiver);
            this.mContext = null;
        }
        this.mLocalParticipants.clear();
        this.mAddingParticipant = null;
        this.mRemovingParticipant = null;
        this.mConfCallId = -1;
        this.mCepVersion = -1;
        this.mPhoneId = -1;
        this.mHostAddr = null;
        this.mConfParticipants.clear();
        this.mConfParticipantsAddr.clear();
        this.mUnknowParticipants.clear();
        this.mIsCepNotified = false;
        this.mHandler.removeMessages(0);
        this.mLatestRemovedParticipant = null;
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public boolean isConferenceActive() {
        if (this.mConfState == 1) {
            return DBG;
        }
        return false;
    }

    private String normalizeNumberFromCLIR(String number) {
        return number.replace("*31#", MtkPhoneConstants.MVNO_TYPE_NONE).replace("#31#", MtkPhoneConstants.MVNO_TYPE_NONE);
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void firstMerge(String num_1, String num_2) {
        this.mLocalParticipants.clear();
        this.mLocalParticipants.add(normalizeNumberFromCLIR(num_1));
        this.mLocalParticipants.add(normalizeNumberFromCLIR(num_2));
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void addLocalCache(String[] participants) {
        if (participants != null) {
            this.mLocalParticipants.clear();
            for (String participant : participants) {
                this.mLocalParticipants.add(normalizeNumberFromCLIR(participant));
            }
        }
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void tryAddParticipant(String addr) {
        this.mAddingParticipant = normalizeNumberFromCLIR(addr);
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void tryRemoveParticipant(String addr) {
        this.mRemovingParticipant = normalizeNumberFromCLIR(addr);
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void modifyParticipantComplete() {
        boolean isFirstMerge = this.mAddingParticipant == null && this.mRemovingParticipant == null;
        if (this.mAddingParticipant != null && !this.mLocalParticipants.contains(this.mAddingParticipant)) {
            this.mLocalParticipants.add(this.mAddingParticipant);
        }
        if (this.mRemovingParticipant != null) {
            this.mLocalParticipants.remove(this.mRemovingParticipant);
            this.mLatestRemovedParticipant = this.mRemovingParticipant;
        }
        this.mAddingParticipant = null;
        this.mRemovingParticipant = null;
        Rlog.d(LOG_TAG, "modifyParticipantComplete: " + sensitiveEncode(this.mLocalParticipants.toString()));
        if (getBooleanFromCarrierConfig(ImsCarrierConfigConstants.MTK_KEY_CONFERENCE_MANAGEMENT_SUPPORTED)) {
            this.mHandler.sendEmptyMessageDelayed(0, 5000L);
        }
        if (this.mIsCepNotified && isFirstMerge) {
            Rlog.d(LOG_TAG, "CEP is notify before merge complete, notify again");
            notifyConfStateUpdate();
        }
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public void modifyParticipantFailed() {
        this.mAddingParticipant = null;
        this.mRemovingParticipant = null;
        this.mLatestRemovedParticipant = null;
        Rlog.d(LOG_TAG, "modifyParticipantFailed: " + sensitiveEncode(this.mLocalParticipants.toString()));
    }

    @Override // com.mediatek.ims.DefaultConferenceHandler
    public String getConfParticipantUri(String addr) {
        String confParticipantUri;
        if (addr == null) {
            return ANONYMOUS_URI;
        }
        if (this.mRestoreParticipantsAddr && this.mRemoveParticipantsByUserEntity && addr.isEmpty() && (confParticipantUri = (String) this.mConfParticipantsAddr.get(addr)) != null) {
            Rlog.d(LOG_TAG, "removeParticipants confParticipantUri: " + sensitiveEncode(confParticipantUri) + " addr: " + sensitiveEncode(addr));
            addr = confParticipantUri;
        }
        Bundle confInfo = (Bundle) this.mConfParticipants.get(addr);
        if (confInfo == null) {
            return addr;
        }
        String participantUri = confInfo.getString(USER_ENTITY);
        if (participantUri == null || !participantUri.startsWith("sip:")) {
            participantUri = addr;
        }
        Rlog.d(LOG_TAG, "removeParticipants uri: " + sensitiveEncode(participantUri) + " addr: " + sensitiveEncode(addr));
        return participantUri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateConferenceStateWithLocalCache() {
        Rlog.d(LOG_TAG, "updateConferenceStateWithLocalCache()");
        if (this.mLocalParticipants.size() != 0 || !shouldAutoTerminateConf()) {
            ImsConferenceState confState = new ImsConferenceState();
            Iterator<String> it = this.mLocalParticipants.iterator();
            while (it.hasNext()) {
                String addr = it.next();
                Bundle userInfo = createFakeInfo(addr);
                confState.mParticipants.put(addr, userInfo);
                Rlog.d(LOG_TAG, "submit participants:  uri: " + sensitiveEncode(addr));
            }
            if (mListener != null) {
                mListener.onParticipantsUpdate(confState);
                return;
            }
            return;
        }
        if (mListener != null) {
            mListener.onAutoTerminate();
        }
        Rlog.d(LOG_TAG, "no participants");
    }

    private Bundle createFakeInfo(String addr) {
        Bundle userInfo = new Bundle();
        userInfo.putString("user", addr);
        userInfo.putString("display-text", addr);
        userInfo.putString("endpoint", addr);
        userInfo.putString("status", "connected");
        return userInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyConfStateUpdate() {
        Rlog.d(LOG_TAG, "notifyConfStateUpdate()");
        ImsConferenceState confState = new ImsConferenceState();
        for (Map.Entry<String, Bundle> entry : this.mConfParticipants.entrySet()) {
            confState.mParticipants.put(entry.getKey(), entry.getValue());
            Rlog.d(LOG_TAG, "submit participants: " + sensitiveEncode(entry.getKey()));
        }
        int key = 0;
        for (Bundle userInfo : this.mUnknowParticipants) {
            confState.mParticipants.put(Integer.toString(key), userInfo);
            Rlog.d(LOG_TAG, "submit unknow participants: " + sensitiveEncode(Integer.toString(key)));
            key++;
        }
        if (mListener != null) {
            mListener.onParticipantsUpdate(confState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldAutoTerminateConf() {
        Rlog.d(LOG_TAG, "shouldTerminate:" + DBG);
        return DBG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUserNameFromSipTelUriString(String uriString) {
        String userName;
        if (uriString == null) {
            return null;
        }
        Uri uri = Uri.parse(uriString);
        String address = uri.getSchemeSpecificPart();
        if (address == null || (userName = PhoneNumberUtils.getUsernameFromUriNumber(address)) == null) {
            return null;
        }
        int pIndex = userName.indexOf(59);
        int wIndex = userName.indexOf(44);
        if (pIndex >= 0 && wIndex >= 0) {
            return userName.substring(0, Math.min(pIndex, wIndex));
        }
        if (pIndex >= 0) {
            return userName.substring(0, pIndex);
        }
        if (wIndex >= 0) {
            return userName.substring(0, wIndex);
        }
        return userName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String sensitiveEncode(String msg) {
        if (!SENLOG || TELDBG) {
            return msg;
        }
        return "[hidden]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSelfAddress(String addr) {
        if (!PhoneNumberUtils.compareLoosely(this.mHostAddr, addr)) {
            return ImsServiceCallTracker.getInstance(this.mPhoneId).isSelfAddress(addr);
        }
        Rlog.d(LOG_TAG, "isSelfAddress(): true, meet host info in xml");
        return DBG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getBooleanFromCarrierConfig(String key) {
        int subId = SubscriptionManagerHelper.getSubIdUsingPhoneId(this.mPhoneId);
        CarrierConfigManager configMgr = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        PersistableBundle carrierConfig = configMgr.getConfigForSubId(subId);
        boolean result = carrierConfig.getBoolean(key);
        Rlog.d(LOG_TAG, "getBooleanFromCarrierConfig() key: " + key + " result: " + result);
        return result;
    }
}
