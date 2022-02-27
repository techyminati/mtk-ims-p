package com.mediatek.ims.feature;

import android.annotation.SystemApi;
import android.os.RemoteException;
import android.util.Log;
import com.mediatek.ims.MtkImsCallForwardInfo;
import com.mediatek.ims.internal.IMtkImsUtListener;
@SystemApi
/* loaded from: classes.dex */
public class MtkImsUtListener {
    private static final String LOG_TAG = "MtkImsUtListener";
    private IMtkImsUtListener mServiceInterface;

    public void onUtConfigurationCallForwardInTimeSlotQueried(int id, MtkImsCallForwardInfo[] cfInfo) {
        try {
            this.mServiceInterface.utConfigurationCallForwardInTimeSlotQueried(null, id, cfInfo);
        } catch (RemoteException e) {
            Log.w(LOG_TAG, "onSupplementaryServiceIndication: remote exception");
        }
    }

    public MtkImsUtListener(IMtkImsUtListener serviceInterface) {
        this.mServiceInterface = serviceInterface;
    }
}
