package com.mediatek.ims;
/* loaded from: classes.dex */
public class SipMessage {
    public static final String CALL_COMPLETED_ELSEWHERE_HEADER = "call completed elsewhere";
    public static final String CALL_DECLINED_HEADER = "declined";
    public static final String CALL_MAXIMUM_ALREADY_REACHED = "Simultaneous Call Limit Has Already Been Reached";
    public static final String CALL_REJECTED_HEADER = "call rejected by";
    public static final int CODE_FOR_REQUEST = 0;
    public static final int CODE_SESSION_INVITE_FAILED_REMOTE_BUSY = 486;
    public static final int CODE_SESSION_PROGRESS = 183;
    public static final String COMPETION_ELSEWHERE_HEADER = "Call Completion Elsewhere";
    public static final int DIR_RECEIVE = 1;
    public static final int DIR_SEND = 0;
    public static final int METHOD_BYE = 7;
    public static final int METHOD_CANCEL = 4;
    public static final int METHOD_INVITE = 1;
    public static final String NO_RTP_TIMEOUT_HEADER = "rtp-rtcp timeout";
    public static final String PULLED_AWAY_HEADER = "Call Has Been Pulled by Another Device";
    public static final String REMOTE_DECLINE_HEADER = "Another device sent All Devices Busy response";
    public static final int TYPE_REQUEST = 0;
    public static final int TYPE_RESPONSE = 1;
    public static final String VIDEO_CALL_NOT_AVAILABLE_HEADER = "Video call is currently not available";
    public static final String VIDEO_CALL_UNAVAILABLE_HEADER = "Video calling is unavailable";
    private int mCode;
    private int mDir;
    private int mMethod;
    private String mReasonHeader;
    private int mType;

    public SipMessage(String[] msg) {
        this.mReasonHeader = null;
        this.mDir = Integer.parseInt(msg[1]);
        this.mType = Integer.parseInt(msg[2]);
        this.mMethod = Integer.parseInt(msg[3]);
        this.mCode = Integer.parseInt(msg[4]);
        this.mReasonHeader = msg[5];
    }

    public int getDir() {
        return this.mDir;
    }

    public int getType() {
        return this.mType;
    }

    public int getMethod() {
        return this.mMethod;
    }

    public int getCode() {
        return this.mCode;
    }

    public String getReasonHeader() {
        return this.mReasonHeader;
    }

    public boolean isRejectedByOthers() {
        return this.mDir == 1 && this.mType == 0 && this.mMethod == 4 && this.mCode == 0 && this.mReasonHeader != null && this.mReasonHeader.toLowerCase().contains(CALL_REJECTED_HEADER);
    }
}
