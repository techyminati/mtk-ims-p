package com.mediatek.ims.internal;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.text.TextUtils;
import com.mediatek.ims.ImsAdapter;
import com.mediatek.ims.ImsEventDispatcher;
/* loaded from: classes.dex */
public class CallControlDispatcher implements ImsEventDispatcher.VaEventDispatcher {
    private static final int IMC_PROGRESS_NOTIFY_CONFERENCE = 257;
    private static final int IMC_PROGRESS_NOTIFY_DIALOG = 256;
    private static final int IMC_PROGRESS_NOTIFY_MWI = 258;
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final boolean SENLOG = TextUtils.equals(Build.TYPE, "user");
    private static final String TAG = "[CallControlDispatcher]";
    private static final boolean TELDBG;
    private Context mContext;
    private ImsAdapter.VaSocketIO mSocket;

    static {
        boolean z = false;
        if (SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1) {
            z = true;
        }
        TELDBG = z;
    }

    public CallControlDispatcher(Context context, ImsAdapter.VaSocketIO IO) {
        this.mContext = context;
        this.mSocket = IO;
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void enableRequest(int phoneId) {
        Rlog.d(TAG, "enableRequest()");
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void disableRequest(int phoneId) {
        Rlog.d(TAG, "disableRequest()");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00b2 A[Catch: Exception -> 0x0133, TryCatch #0 {Exception -> 0x0133, blocks: (B:2:0x0000, B:4:0x0029, B:7:0x002e, B:8:0x006a, B:9:0x00ac, B:11:0x00b2, B:12:0x00d0, B:13:0x00f7, B:14:0x011e), top: B:18:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00d0 A[Catch: Exception -> 0x0133, TryCatch #0 {Exception -> 0x0133, blocks: (B:2:0x0000, B:4:0x0029, B:7:0x002e, B:8:0x006a, B:9:0x00ac, B:11:0x00b2, B:12:0x00d0, B:13:0x00f7, B:14:0x011e), top: B:18:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00f7 A[Catch: Exception -> 0x0133, TryCatch #0 {Exception -> 0x0133, blocks: (B:2:0x0000, B:4:0x0029, B:7:0x002e, B:8:0x006a, B:9:0x00ac, B:11:0x00b2, B:12:0x00d0, B:13:0x00f7, B:14:0x011e), top: B:18:0x0000 }] */
    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void vaEventCallback(com.mediatek.ims.ImsAdapter.VaEvent r12) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.internal.CallControlDispatcher.vaEventCallback(com.mediatek.ims.ImsAdapter$VaEvent):void");
    }

    private int getDataLength(byte[] data, int originLen) {
        int i = 0;
        while (i < originLen) {
            if (data[i] == 0) {
                return i;
            }
            i++;
        }
        return i;
    }
}
