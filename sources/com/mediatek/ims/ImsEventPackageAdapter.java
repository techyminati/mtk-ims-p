package com.mediatek.ims;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.telephony.Rlog;
import android.telephony.ims.ImsExternalCallState;
import com.mediatek.ims.ril.ImsCommandsInterface;
import java.util.ArrayList;
import java.util.Iterator;
import vendor.mediatek.hardware.radio.V3_0.Dialog;
/* loaded from: classes.dex */
public class ImsEventPackageAdapter {
    static final int EVENT_IMS_DIALOG_INDICATION = 1;
    static final int EVENT_LTE_MESSAGE_WAITING = 0;
    private static final String LOG_TAG = "ImsEventPackageAdapter";
    private static final String TAG_DOUBLE_QUOTE = "<ascii_34>";
    private static final String TAG_NEXT_LINE = "<ascii_10>";
    private static final String TAG_RETURN = "<ascii_13>";
    private static final int TYPE_CONFERENCE_EVT_PKG = 1;
    private static final int TYPE_DIALOG_EVT_PKG = 2;
    private static final int TYPE_MWI = 3;
    private String mCEPData;
    private Context mContext;
    private String mDEPData;
    private MyHandler mHandler;
    private ImsCommandsInterface mImsRilAdapter;
    private String mMWIData;
    private int mPhoneId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsEventPackageAdapter(Context ctx, Handler handler, ImsCommandsInterface imsRilAdapter, int phoneId) {
        Rlog.d(LOG_TAG, "ImsEventPackageAdapter()");
        this.mHandler = new MyHandler(handler.getLooper());
        this.mImsRilAdapter = imsRilAdapter;
        this.mContext = ctx;
        this.mPhoneId = phoneId;
        this.mImsRilAdapter.registerForLteMsgWaiting(this.mHandler, 0, null);
        this.mImsRilAdapter.registerForImsDialog(this.mHandler, 1, null);
    }

    public void close() {
        this.mImsRilAdapter.unregisterForLteMsgWaiting(this.mHandler);
        this.mImsRilAdapter.unregisterForImsDialog(this.mHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLetMessageWaiting(String[] msg) {
        Rlog.d(LOG_TAG, "handleLetMessageWaiting()");
        int[] intData = new int[4];
        boolean isFirstPkt = false;
        for (int i = 0; i < 4; i++) {
            try {
                intData[i] = Integer.parseInt(msg[i]);
            } catch (NumberFormatException e) {
                Rlog.d(LOG_TAG, "handleLetMessageWaiting failed: invalid params");
                return;
            }
        }
        int i2 = intData[0];
        int urcIdx = intData[2];
        int totalUrcCount = intData[3];
        String rawData = msg[4];
        if (msg.length >= 6) {
            int phoneId = Integer.parseInt(msg[5]);
            if (this.mPhoneId != phoneId) {
                Rlog.d(LOG_TAG, "handleLetMessageWaiting ignore, not the correct phone id");
                return;
            }
        }
        if (urcIdx == 1) {
            isFirstPkt = true;
        }
        this.mMWIData = concatData(isFirstPkt, this.mMWIData, rawData);
        if (urcIdx == totalUrcCount && this.mContext != null) {
            this.mMWIData = recoverDataFromAsciiTag(this.mMWIData);
            Intent intent = new Intent(ImsConstants.ACTION_LTE_MESSAGE_WAITING_INDICATION);
            intent.putExtra(ImsConstants.EXTRA_LTE_MWI_BODY, this.mMWIData);
            intent.putExtra(ImsConstants.EXTRA_PHONE_ID, this.mPhoneId);
            this.mContext.sendBroadcast(intent);
        }
    }

    private String concatData(boolean isFirst, String origData, String appendData) {
        if (isFirst) {
            return appendData;
        }
        return origData.concat(appendData);
    }

    private String recoverDataFromAsciiTag(String data) {
        return data.replaceAll(TAG_RETURN, "\r").replaceAll(TAG_DOUBLE_QUOTE, "\"").replaceAll(TAG_NEXT_LINE, "\n");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDialogEventPackage(ArrayList<Dialog> dialogList) {
        Rlog.d(LOG_TAG, "handleDialogEventPackage()");
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<Dialog> it = dialogList.iterator();
        while (it.hasNext()) {
            Dialog dialog = it.next();
            Uri addr = Uri.parse(dialog.address);
            ImsExternalCallState exCallState = new ImsExternalCallState(dialog.dialogId, addr, dialog.isPullable, dialog.callState, dialog.callType, dialog.isCallHeld);
            arrayList.add(exCallState);
            Rlog.d(LOG_TAG, "handleDialogEventPackage exCallState:" + dialog.dialogId + dialog.address + dialog.isPullable + dialog.callState + dialog.callType + dialog.isCallHeld);
        }
        Intent intent = new Intent(ImsConstants.ACTION_IMS_DIALOG_EVENT_PACKAGE);
        intent.putParcelableArrayListExtra(ImsConstants.EXTRA_DEP_CONTENT, arrayList);
        this.mContext.sendBroadcast(intent);
    }

    /* loaded from: classes.dex */
    private class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Rlog.d(ImsEventPackageAdapter.LOG_TAG, "MsgId: " + msg.what);
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar.exception != null) {
                Rlog.d(ImsEventPackageAdapter.LOG_TAG, "message error");
                return;
            }
            switch (msg.what) {
                case 0:
                    ImsEventPackageAdapter.this.handleLetMessageWaiting((String[]) ar.result);
                    return;
                case 1:
                    ImsEventPackageAdapter.this.handleDialogEventPackage((ArrayList) ar.result);
                    break;
            }
            Rlog.d(ImsEventPackageAdapter.LOG_TAG, "Unregistered event");
        }
    }
}
