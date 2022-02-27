package com.mediatek.ims.feature;

import android.annotation.SystemApi;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.mediatek.ims.internal.IMtkImsUt;
import com.mediatek.ims.internal.IMtkImsUtListener;
import com.mediatek.internal.telephony.MtkPhoneConstants;
@SystemApi
/* loaded from: classes.dex */
public class MtkImsUtImplBase {
    private IMtkImsUt.Stub mServiceImpl = new IMtkImsUt.Stub() { // from class: com.mediatek.ims.feature.MtkImsUtImplBase.1
        @Override // com.mediatek.ims.internal.IMtkImsUt
        public void setListener(IMtkImsUtListener listener) throws RemoteException {
            MtkImsUtImplBase.this.setListener(new MtkImsUtListener(listener));
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public String getUtIMPUFromNetwork() {
            return MtkImsUtImplBase.this.getUtIMPUFromNetwork();
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public void setupXcapUserAgentString(String userAgent) {
            MtkImsUtImplBase.this.setupXcapUserAgentString(userAgent);
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public int queryCallForwardInTimeSlot(int condition) {
            return MtkImsUtImplBase.this.queryCallForwardInTimeSlot(condition);
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public int updateCallForwardInTimeSlot(int action, int condition, String number, int timeSeconds, long[] timeSlot) {
            return MtkImsUtImplBase.this.updateCallForwardInTimeSlot(action, condition, number, timeSeconds, timeSlot);
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public int updateCallBarringForServiceClass(String password, int cbType, int enable, String[] barrList, int serviceClass) {
            return MtkImsUtImplBase.this.updateCallBarringForServiceClass(password, cbType, enable, barrList, serviceClass);
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public void processECT(Message result, Messenger target) {
            MtkImsUtImplBase.this.explicitCallTransfer(result, target);
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public boolean isSupportCFT() {
            return MtkImsUtImplBase.this.isSupportCFT();
        }

        @Override // com.mediatek.ims.internal.IMtkImsUt
        public String getXcapConflictErrorMessage() {
            return MtkImsUtImplBase.this.getXcapConflictErrorMessage();
        }
    };

    public int transact(Bundle ssInfo) {
        return -1;
    }

    public int queryCallForwardInTimeSlot(int condition) {
        return -1;
    }

    public int updateCallForwardInTimeSlot(int action, int condition, String number, int timeSeconds, long[] timeSlot) {
        return -1;
    }

    public int updateCallBarringForServiceClass(String password, int cbType, int enable, String[] barrList, int serviceClass) {
        return -1;
    }

    public void explicitCallTransfer(Message result, Messenger target) {
    }

    public boolean isSupportCFT() {
        return false;
    }

    public String getXcapConflictErrorMessage() {
        return MtkPhoneConstants.MVNO_TYPE_NONE;
    }

    public void setListener(MtkImsUtListener listener) {
    }

    public String getUtIMPUFromNetwork() {
        return MtkPhoneConstants.MVNO_TYPE_NONE;
    }

    public void setupXcapUserAgentString(String userAgent) {
    }

    public IMtkImsUt getInterface() {
        return this.mServiceImpl;
    }
}
