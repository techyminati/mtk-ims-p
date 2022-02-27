package com.mediatek.ims;

import android.content.Context;
import android.telephony.Rlog;
import android.telephony.ims.ImsConferenceState;
/* loaded from: classes.dex */
public class DefaultConferenceHandler {
    private static final String LOG_TAG = "ImsConferenceHandler";

    /* loaded from: classes.dex */
    public static abstract class Listener {
        public void onParticipantsUpdate(ImsConferenceState confState) {
        }

        public void onAutoTerminate() {
        }
    }

    public DefaultConferenceHandler() {
        Rlog.d(LOG_TAG, "DefaultConferenceHandler()");
    }

    public void startConference(Context ctx, Listener listener, String callId, int phoneId) {
    }

    public void closeConference(String callId) {
    }

    public boolean isConferenceActive() {
        return true;
    }

    public void firstMerge(String num_1, String num_2) {
    }

    public void addLocalCache(String[] participants) {
    }

    public void tryAddParticipant(String addr) {
    }

    public void tryRemoveParticipant(String addr) {
    }

    public void modifyParticipantComplete() {
    }

    public void modifyParticipantFailed() {
    }

    public String getConfParticipantUri(String addr) {
        return addr;
    }
}
