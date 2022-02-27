package com.mediatek.ims;

import android.net.Uri;
import android.os.Build;
import android.os.SystemProperties;
import android.telephony.PhoneNumberUtils;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.text.TextUtils;
import com.mediatek.ims.ImsCallInfo;
import com.mediatek.ims.internal.ImsXuiManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ImsServiceCallTracker {
    private static final int CALL_MSG_TYPE_ACTIVE = 132;
    private static final int CALL_MSG_TYPE_ALERT = 2;
    private static final int CALL_MSG_TYPE_DISCONNECTED = 133;
    private static final int CALL_MSG_TYPE_HELD = 131;
    private static final int CALL_MSG_TYPE_ID_ASSIGN = 130;
    private static final int CALL_MSG_TYPE_MT = 0;
    private static final int IMS_VIDEO = 21;
    private static final int IMS_VIDEO_CONF = 23;
    private static final int IMS_VIDEO_CONF_PARTS = 25;
    private static final int IMS_VOICE = 20;
    private static final int IMS_VOICE_CONF = 22;
    private static final int IMS_VOICE_CONF_PARTS = 24;
    private static final int INVALID_CALL = -1;
    private static final String LOG_TAG = "ImsServiceCT";
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final boolean SENLOG = TextUtils.equals(Build.TYPE, "user");
    private static final boolean TELDBG;
    private static HashMap<Integer, ImsServiceCallTracker> mImsServiceCTs;
    private int mPhoneId;
    private boolean mEnableVolteForImsEcc = false;
    private ConcurrentHashMap<String, ImsCallInfo> mCallConnections = new ConcurrentHashMap<>();

    static {
        boolean z = false;
        if (SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1) {
            z = true;
        }
        TELDBG = z;
        mImsServiceCTs = new HashMap<>();
    }

    public static ImsServiceCallTracker getInstance(int phoneId) {
        if (mImsServiceCTs.get(Integer.valueOf(phoneId)) == null) {
            mImsServiceCTs.put(Integer.valueOf(phoneId), new ImsServiceCallTracker(phoneId));
        }
        return mImsServiceCTs.get(Integer.valueOf(phoneId));
    }

    private ImsServiceCallTracker(int phoneId) {
        this.mPhoneId = phoneId;
    }

    public boolean getEnableVolteForImsEcc() {
        return this.mEnableVolteForImsEcc;
    }

    public void setEnableVolteForImsEcc(boolean enable) {
        this.mEnableVolteForImsEcc = enable;
    }

    public ImsCallInfo getCallInfo(String callId) {
        ImsCallInfo callInfo = this.mCallConnections.get(callId);
        if (callInfo != null) {
            logWithPhoneId("getCallInfo(callId) : callID: " + callInfo.mCallId + " call num: " + callInfo.mCallNum + " call State: " + callInfo.mState);
        } else {
            logWithPhoneId("getCallInfo(callId) : callID: " + callId + " is null");
        }
        return callInfo;
    }

    public ImsCallInfo getCallInfo(ImsCallInfo.State state) {
        for (Map.Entry<String, ImsCallInfo> entry : this.mCallConnections.entrySet()) {
            ImsCallInfo callInfo = entry.getValue();
            logWithPhoneId("getCallInfo(state) : callID: " + callInfo.mCallId + " call num: " + callInfo.mCallNum + " call State: " + callInfo.mState);
            if (callInfo.mState == state) {
                return callInfo;
            }
        }
        return null;
    }

    public void removeCallConnection(String callId) {
        if (callId != null) {
            this.mCallConnections.remove(callId);
        }
    }

    public ImsCallSessionProxy getFgCall() {
        for (Map.Entry<String, ImsCallInfo> entry : this.mCallConnections.entrySet()) {
            ImsCallInfo callInfo = entry.getValue();
            if (ImsCallInfo.State.ACTIVE == callInfo.mState) {
                return callInfo.mCallSession;
            }
        }
        return null;
    }

    public ImsCallSessionProxy getConferenceHostCall() {
        for (Map.Entry<String, ImsCallInfo> entry : this.mCallConnections.entrySet()) {
            ImsCallInfo callInfo = entry.getValue();
            if (callInfo.mIsConferenceHost) {
                return callInfo.mCallSession;
            }
        }
        return null;
    }

    public int getCurrentCallCount() {
        if (this.mCallConnections == null) {
            return 0;
        }
        return this.mCallConnections.size();
    }

    public int getParticipantCallId(String callNumber) {
        int participantCallId = -1;
        Iterator<Map.Entry<String, ImsCallInfo>> it = this.mCallConnections.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ImsCallInfo> entry = it.next();
            ImsCallInfo callInfo = entry.getValue();
            if (callNumber.equals(callInfo.mCallNum)) {
                participantCallId = Integer.parseInt(callInfo.mCallId);
                break;
            }
        }
        logWithPhoneId("getParticipantCallId() : participantCallId = " + participantCallId);
        return participantCallId;
    }

    public boolean isVoiceCall(int mode) {
        if (20 == mode || 22 == mode || 24 == mode) {
            return true;
        }
        return false;
    }

    public boolean isVideoCall(int mode) {
        if (21 == mode || 23 == mode || 25 == mode) {
            return true;
        }
        return false;
    }

    public boolean isConferenceCall(int mode) {
        if (22 == mode || 24 == mode || 23 == mode || 25 == mode) {
            return true;
        }
        return false;
    }

    public boolean isConferenceCallHost(int mode) {
        if (22 == mode || 23 == mode) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isInCall() {
        /*
            r5 = this;
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.mediatek.ims.ImsCallInfo> r0 = r5.mCallConnections
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L_0x000a:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x002c
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getValue()
            com.mediatek.ims.ImsCallInfo r2 = (com.mediatek.ims.ImsCallInfo) r2
            com.mediatek.ims.ImsCallInfo$State r3 = com.mediatek.ims.ImsCallInfo.State.ACTIVE
            com.mediatek.ims.ImsCallInfo$State r4 = r2.mState
            if (r3 == r4) goto L_0x002a
            com.mediatek.ims.ImsCallInfo$State r3 = com.mediatek.ims.ImsCallInfo.State.HOLDING
            com.mediatek.ims.ImsCallInfo$State r4 = r2.mState
            if (r3 != r4) goto L_0x0029
            goto L_0x002a
        L_0x0029:
            goto L_0x000a
        L_0x002a:
            r0 = 1
            return r0
        L_0x002c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.ImsServiceCallTracker.isInCall():boolean");
    }

    public boolean isInCall(ImsCallInfo callInfo) {
        if (ImsCallInfo.State.ACTIVE == callInfo.mState || ImsCallInfo.State.HOLDING == callInfo.mState) {
            return true;
        }
        return false;
    }

    public boolean isEccExist() {
        for (Map.Entry<String, ImsCallInfo> entry : this.mCallConnections.entrySet()) {
            ImsCallInfo callInfo = entry.getValue();
            if (callInfo.mIsEcc && isInCall(callInfo)) {
                return true;
            }
        }
        return false;
    }

    public boolean isVideoCallExist() {
        for (Map.Entry<String, ImsCallInfo> entry : this.mCallConnections.entrySet()) {
            ImsCallInfo callInfo = entry.getValue();
            if (callInfo.mIsVideo && isInCall(callInfo)) {
                return true;
            }
        }
        return false;
    }

    public boolean isSelfAddress(String addr) {
        Uri[] selfUri = ImsXuiManager.getInstance().getSelfIdentifyUri(this.mPhoneId);
        if (selfUri == null) {
            return false;
        }
        for (Uri uri : selfUri) {
            String address = uri.getSchemeSpecificPart();
            String[] numberParts = address.split("[@;:]");
            if (numberParts.length != 0) {
                logWithPhoneId("isSelfAddress() selfId: " + sensitiveEncode(numberParts[0]) + " addr: " + sensitiveEncode(addr));
                if (PhoneNumberUtils.compareLoosely(addr, numberParts[0])) {
                    return true;
                }
            }
        }
        return false;
    }

    public ArrayList<String> getSelfAddressList() {
        Uri[] selfUri = ImsXuiManager.getInstance().getSelfIdentifyUri(this.mPhoneId);
        if (selfUri == null) {
            return null;
        }
        ArrayList<String> selfAddressList = new ArrayList<>();
        for (Uri uri : selfUri) {
            String address = uri.getSchemeSpecificPart();
            String[] numberParts = address.split("[@;:]");
            if (numberParts.length != 0) {
                logWithPhoneId("isSelfAddress() selfId: " + sensitiveEncode(numberParts[0]));
                selfAddressList.add(numberParts[0]);
            }
        }
        return selfAddressList;
    }

    public void processCallInfoIndication(String[] callInfo, ImsCallSessionProxy callSession, ImsCallProfile profile) {
        String callId = callInfo[0];
        int msgType = Integer.parseInt(callInfo[1]);
        int callMode = TextUtils.isEmpty(callInfo[5]) ? -1 : Integer.parseInt(callInfo[5]);
        String callNum = callInfo[6];
        boolean isConference = false;
        if (isConferenceCall(callMode)) {
            isConference = true;
        }
        boolean isConferenceHost = false;
        if (isConferenceCallHost(callMode)) {
            isConferenceHost = true;
        }
        boolean isVideo = false;
        if (isVideoCall(callMode)) {
            isVideo = true;
        }
        boolean isEcc = false;
        if (profile.getServiceType() == 2) {
            isEcc = true;
        }
        if (msgType == 0) {
            logWithPhoneId("processCallInfoIndication() : CALL_MSG_TYPE_MT => callId = " + callId + ", isConference = " + isConference + ", isConferenceHost = " + isConferenceHost + ", isVideo = " + isVideo + ", isEcc = " + isEcc);
            ImsCallInfo.State state = ImsCallInfo.State.INCOMING;
            this.mCallConnections.put(callId, new ImsCallInfo(callId, callNum, isConference, isConferenceHost, isVideo, isEcc, state, callSession));
        } else if (msgType != 2) {
            switch (msgType) {
                case 130:
                    logWithPhoneId("processCallInfoIndication() : CALL_MSG_TYPE_ID_ASSIGN => callId = " + callId + ", isConference = " + isConference + ", isConferenceHost = " + isConferenceHost + ", isVideo = " + isVideo + ", isEcc = " + isEcc);
                    ImsCallInfo.State state2 = ImsCallInfo.State.ALERTING;
                    this.mCallConnections.put(callId, new ImsCallInfo(callId, callNum, isConference, isConferenceHost, isVideo, isEcc, state2, callSession));
                    break;
                case 131:
                    logWithPhoneId("processCallInfoIndication() : CALL_MSG_TYPE_HELD => callId = " + callId + "isConference = " + isConference + "isVideo = " + isVideo + "isEcc = " + isEcc);
                    ImsCallInfo imsCallInfo = this.mCallConnections.get(callId);
                    if (imsCallInfo != null) {
                        imsCallInfo.mState = ImsCallInfo.State.HOLDING;
                        imsCallInfo.mIsConference = isConference;
                        this.mCallConnections.put(callId, imsCallInfo);
                        return;
                    }
                    return;
                case 132:
                    logWithPhoneId("processCallInfoIndication() : CALL_MSG_TYPE_ACTIVE => callId = " + callId + "isConference = " + isConference + "isVideo = " + isVideo + "isEcc = " + isEcc);
                    ImsCallInfo imsCallInfo2 = this.mCallConnections.get(callId);
                    if (imsCallInfo2 != null) {
                        imsCallInfo2.mState = ImsCallInfo.State.ACTIVE;
                        imsCallInfo2.mIsConference = isConference;
                        this.mCallConnections.put(callId, imsCallInfo2);
                        return;
                    }
                    return;
                case 133:
                    logWithPhoneId("processCallInfoIndication() : CALL_MSG_TYPE_DISCONNECTED => callId = " + callId + "isConference = " + isConference + "isVideo = " + isVideo + "isEcc = " + isEcc);
                    this.mCallConnections.remove(callId);
                    break;
            }
        } else {
            logWithPhoneId("processCallInfoIndication() : CALL_MSG_TYPE_ALERT => callId = " + callId + "isConference = " + isConference + "isVideo = " + isVideo + "isEcc = " + isEcc);
            ImsCallInfo imsCallInfo3 = this.mCallConnections.get(callId);
            if (imsCallInfo3 != null) {
                imsCallInfo3.mIsConference = isConference;
                this.mCallConnections.put(callId, imsCallInfo3);
            }
        }
    }

    private void logWithPhoneId(String msg) {
        if (TELDBG) {
            Rlog.d(LOG_TAG, "[PhoneId = " + this.mPhoneId + "] " + msg);
        }
    }

    private String sensitiveEncode(String msg) {
        if (!SENLOG || TELDBG) {
            return msg;
        }
        return "[hidden]";
    }
}
