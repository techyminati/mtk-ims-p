package com.mediatek.ims.internal;

import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class DialogInfo {
    private List<Dialog> mDialogs = new LinkedList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean addDialog(Dialog dialog) {
        return this.mDialogs.add(dialog);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Dialog> getDialogs() {
        return this.mDialogs;
    }

    /* loaded from: classes.dex */
    public static class Dialog {
        private int mDialogId;
        private boolean mExclusive;
        private Local mLocal;
        private String mState;

        public Dialog(int dialogId, boolean exclusive, String state, Local local) {
            this.mExclusive = true;
            this.mState = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mLocal = new Local();
            this.mDialogId = dialogId;
            this.mExclusive = exclusive;
            this.mState = state;
            this.mLocal = local;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getDialogId() {
            return this.mDialogId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean getExclusive() {
            return this.mExclusive;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getState() {
            return this.mState;
        }

        Local getLocal() {
            return this.mLocal;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getIdentity() {
            return this.mLocal.getIdentity();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getTargetUri() {
            return this.mLocal.getTargetUri();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<MediaAttribute> getMediaAttributes() {
            return this.mLocal.getMediaAttributes();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getPname() {
            return this.mLocal.getPname();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getPval() {
            return this.mLocal.getPval();
        }
    }

    /* loaded from: classes.dex */
    public static class Local {
        private String mIdentity = MtkPhoneConstants.MVNO_TYPE_NONE;
        private String mTargetUri = MtkPhoneConstants.MVNO_TYPE_NONE;
        private List<MediaAttribute> mMediaAttributes = new LinkedList();
        private Param mParam = new Param();

        public void setIdentity(String identity) {
            this.mIdentity = identity;
        }

        String getIdentity() {
            return this.mIdentity;
        }

        public void setTargetUri(String targetUri) {
            this.mTargetUri = targetUri;
        }

        String getTargetUri() {
            return this.mTargetUri;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean addMediaAttribute(MediaAttribute mediaAttribute) {
            return this.mMediaAttributes.add(mediaAttribute);
        }

        List<MediaAttribute> getMediaAttributes() {
            return this.mMediaAttributes;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setParam(Param param) {
            this.mParam = param;
        }

        String getPname() {
            return this.mParam.getPname();
        }

        String getPval() {
            return this.mParam.getPval();
        }
    }

    /* loaded from: classes.dex */
    public static class MediaAttribute {
        private String mMediaDirection;
        private String mMediaType;
        private boolean mPort0;

        public MediaAttribute(String mediaType, String mediaDirection, boolean port0) {
            this.mMediaType = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mMediaDirection = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mPort0 = false;
            this.mMediaType = mediaType;
            this.mMediaDirection = mediaDirection;
            this.mPort0 = port0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getMediaType() {
            return this.mMediaType;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getMediaDirection() {
            return this.mMediaDirection;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isDowngradedVideo() {
            return this.mPort0;
        }
    }

    /* loaded from: classes.dex */
    public static class Param {
        private String mPnam;
        private String mPval;

        public Param() {
            this.mPnam = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mPval = MtkPhoneConstants.MVNO_TYPE_NONE;
        }

        public Param(String pname, String pval) {
            this.mPnam = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mPval = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.mPnam = pname;
            this.mPval = pval;
        }

        String getPname() {
            return this.mPnam;
        }

        String getPval() {
            return this.mPval;
        }
    }
}
