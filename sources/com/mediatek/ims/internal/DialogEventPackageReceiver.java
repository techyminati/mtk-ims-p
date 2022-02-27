package com.mediatek.ims.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.telephony.Rlog;
import android.telephony.ims.ImsExternalCallState;
import com.mediatek.ims.ImsCommonUtil;
import com.mediatek.ims.ImsConstants;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class DialogEventPackageReceiver {
    private static final String TAG = "DialogEventPackageReceiver";
    private Listener mListener;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.internal.DialogEventPackageReceiver.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!intent.getAction().equals(ImsConstants.ACTION_IMS_DIALOG_EVENT_PACKAGE)) {
                return;
            }
            if (!ImsCommonUtil.supportMdAutoSetupIms()) {
                DialogEventPackageReceiver.this.processDepIntent(intent);
                return;
            }
            ArrayList<ImsExternalCallState> dialogList = intent.getParcelableArrayListExtra(ImsConstants.EXTRA_DEP_CONTENT);
            Iterator<ImsExternalCallState> it = dialogList.iterator();
            while (it.hasNext()) {
                ImsExternalCallState dialog = it.next();
                Rlog.d(DialogEventPackageReceiver.TAG, "ACTION_IMS_DIALOG_EVENT_PACKAGE content:" + dialog.toString());
            }
            DialogEventPackageReceiver.this.mListener.onStateChanged(dialogList);
        }
    };
    private DialogEventPackageParser mParser = new DepXmlPullParser();

    /* loaded from: classes.dex */
    public interface Listener {
        void onStateChanged(List<ImsExternalCallState> list);
    }

    /* loaded from: classes.dex */
    public static abstract class ListenerBase implements Listener {
        @Override // com.mediatek.ims.internal.DialogEventPackageReceiver.Listener
        public void onStateChanged(List<ImsExternalCallState> list) {
        }
    }

    public DialogEventPackageReceiver(Context context, Listener listener) {
        registerForBroadcast(context);
        this.mListener = listener;
        Rlog.d(TAG, TAG);
    }

    private void registerForBroadcast(Context context) {
        IntentFilter filter = new IntentFilter();
        filter.addAction(ImsConstants.ACTION_IMS_DIALOG_EVENT_PACKAGE);
        context.registerReceiver(this.mReceiver, filter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDepIntent(Intent intent) {
        String content = intent.getStringExtra(ImsConstants.EXTRA_DEP_CONTENT);
        Rlog.d(TAG, "ACTION_IMS_DIALOG_EVENT_PACKAGE " + content);
        InputStream in = new ByteArrayInputStream(content.getBytes(StandardCharsets.UTF_8));
        try {
            DialogInfo dialogInfo = this.mParser.parse(in);
            List<ImsExternalCallState> dialogList = ExternalCallStateFactory.getInstance().makeExternalCallStates(dialogInfo);
            this.mListener.onStateChanged(dialogList);
        } catch (IOException e) {
            Rlog.d(TAG, "processDepIntent has IOException " + e);
        } catch (XmlPullParserException e2) {
            Rlog.d(TAG, "processDepIntent has XmlPullParserException " + e2);
        }
    }
}
