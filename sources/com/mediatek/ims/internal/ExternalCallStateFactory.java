package com.mediatek.ims.internal;

import android.net.Uri;
import android.telephony.ims.ImsExternalCallState;
import android.text.TextUtils;
import com.mediatek.ims.internal.DialogInfo;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class ExternalCallStateFactory {
    private static ExternalCallStateFactory sInstance;

    public static ExternalCallStateFactory getInstance() {
        if (sInstance == null) {
            sInstance = new ExternalCallStateFactory();
        }
        return sInstance;
    }

    public List<ImsExternalCallState> makeExternalCallStates(DialogInfo dialogInfo) {
        List<ImsExternalCallState> result = new LinkedList<>();
        List<DialogInfo.Dialog> dialogs = dialogInfo.getDialogs();
        for (DialogInfo.Dialog dialog : dialogs) {
            ImsExternalCallState exCallState = new ImsExternalCallState(dialog.getDialogId(), getAddress(dialog), isPullable(dialog), getCallState(dialog), getCallType(dialog), isCallHeld(dialog));
            result.add(exCallState);
        }
        return result;
    }

    private Uri getAddress(DialogInfo.Dialog dialog) {
        if (dialog == null) {
            return Uri.parse(MtkPhoneConstants.MVNO_TYPE_NONE);
        }
        String address = dialog.getTargetUri();
        if (!TextUtils.isEmpty(address)) {
            return Uri.parse(address);
        }
        return Uri.parse(dialog.getIdentity());
    }

    private boolean isPullable(DialogInfo.Dialog dialog) {
        return dialog != null && !dialog.getExclusive() && !isCallHeld(dialog) && !isVideoCallInBackground(dialog);
    }

    private int getCallState(DialogInfo.Dialog dialog) {
        if (dialog != null && "confirmed".equalsIgnoreCase(dialog.getState())) {
            return 1;
        }
        return 2;
    }

    private int getCallType(DialogInfo.Dialog dialog) {
        int callType = 2;
        if (dialog == null) {
            return 2;
        }
        List<DialogInfo.MediaAttribute> mediaAttributes = dialog.getMediaAttributes();
        for (DialogInfo.MediaAttribute mediaAttribute : mediaAttributes) {
            if (!"audio".equalsIgnoreCase(mediaAttribute.getMediaType()) && !mediaAttribute.isDowngradedVideo()) {
                if ("inactive".equalsIgnoreCase(mediaAttribute.getMediaDirection())) {
                    callType = 7;
                } else if ("sendrecv".equalsIgnoreCase(mediaAttribute.getMediaDirection())) {
                    callType = 4;
                } else if ("sendonly".equalsIgnoreCase(mediaAttribute.getMediaDirection())) {
                    callType = 5;
                } else if ("recvonly".equalsIgnoreCase(mediaAttribute.getMediaDirection())) {
                    callType = 6;
                }
            }
        }
        return callType;
    }

    private boolean isCallHeld(DialogInfo.Dialog dialog) {
        if (dialog == null) {
            return false;
        }
        return ("+sip.rendering".equalsIgnoreCase(dialog.getPname()) && "no".equalsIgnoreCase(dialog.getPval())) || isCallHeld(dialog.getMediaAttributes());
    }

    private boolean isCallHeld(List<DialogInfo.MediaAttribute> mediaAttributes) {
        if (mediaAttributes == null) {
            return false;
        }
        for (DialogInfo.MediaAttribute mediaAttribute : mediaAttributes) {
            if ("audio".equalsIgnoreCase(mediaAttribute.getMediaType()) && !"sendrecv".equalsIgnoreCase(mediaAttribute.getMediaDirection())) {
                return true;
            }
        }
        return false;
    }

    private boolean isVideoCallInBackground(DialogInfo.Dialog dialog) {
        if (dialog == null) {
            return false;
        }
        List<DialogInfo.MediaAttribute> mediaAttributes = dialog.getMediaAttributes();
        for (DialogInfo.MediaAttribute mediaAttribute : mediaAttributes) {
            if ("video".equalsIgnoreCase(mediaAttribute.getMediaType()) && "inactive".equalsIgnoreCase(mediaAttribute.getMediaDirection())) {
                return true;
            }
        }
        return false;
    }
}
