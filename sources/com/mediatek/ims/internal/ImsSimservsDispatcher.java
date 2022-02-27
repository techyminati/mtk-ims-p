package com.mediatek.ims.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.ims.ImsManager;
import com.mediatek.ims.ImsAdapter;
import com.mediatek.ims.ImsConstants;
import com.mediatek.ims.ImsEventDispatcher;
import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
public class ImsSimservsDispatcher implements ImsEventDispatcher.VaEventDispatcher {
    private static final boolean DUMP_TRANSACTION = true;
    private static final int IMC_MAX_XUI_LEN = 512;
    private static final String TAG = "ImsSimservsDispatcher";
    private static ImsSimservsDispatcher sInstance;
    private Context mContext;
    private Handler mHandler;
    private Thread mHandlerThread = new Thread() { // from class: com.mediatek.ims.internal.ImsSimservsDispatcher.1
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            ImsSimservsDispatcher.this.mHandler = new Handler() { // from class: com.mediatek.ims.internal.ImsSimservsDispatcher.1.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    if (msg.obj instanceof ImsAdapter.VaEvent) {
                        ImsAdapter.VaEvent event = (ImsAdapter.VaEvent) msg.obj;
                        ImsSimservsDispatcher.log("ImsSimservsDispatcher receives request [" + msg.what + ", " + event.getDataLen() + "]");
                        if (msg.what != 900401) {
                            ImsSimservsDispatcher.log("ImsSimservsDispatcher receives unhandled message [" + msg.what + "]");
                            return;
                        }
                        ImsSimservsDispatcher.this.handleXuiUpdate(event);
                    }
                }
            };
            Looper.loop();
        }
    };
    private ContactsContract.CommonDataKinds.Phone mPhone;
    private ImsAdapter.VaSocketIO mSocket;

    public ImsSimservsDispatcher(Context context, ImsAdapter.VaSocketIO io) {
        this.mContext = context;
        this.mSocket = io;
        sInstance = this;
        this.mHandlerThread.start();
    }

    public static ImsSimservsDispatcher getInstance() {
        return sInstance;
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void enableRequest(int phoneId) {
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void disableRequest(int phoneId) {
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void vaEventCallback(ImsAdapter.VaEvent event) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(event.getRequestID(), event));
    }

    public void setSocket(ImsAdapter.VaSocketIO socket) {
        this.mSocket = socket;
    }

    private void sendVaEvent(ImsAdapter.VaEvent event) {
        log("ImsSimservsDispatcher send event [" + event.getRequestID() + ", " + event.getDataLen() + "]");
        this.mSocket.writeEvent(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleXuiUpdate(ImsAdapter.VaEvent event) {
        int length = event.getInt();
        byte[] byteArray = event.getBytes(length);
        String xui = null;
        int phoneId = event.getPhoneId();
        if (byteArray == null) {
            log("handleXuiUpdate event.getBytes() = null");
            return;
        }
        try {
            xui = new String(byteArray, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        log("handleXuiUpdate xui=" + xui);
        ImsXuiManager xuim = ImsXuiManager.getInstance();
        xuim.setXui(phoneId, xui);
        if (this.mContext != null) {
            Intent intent = new Intent(ImsConstants.SELF_IDENTIFY_UPDATE);
            intent.putExtra(ImsManager.EXTRA_PHONE_ID, phoneId);
            this.mContext.sendStickyBroadcast(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String text) {
        Log.d("@M_ImsSimservsDispatcher", "[ims] ImsSimservsDispatcher " + text);
    }
}
