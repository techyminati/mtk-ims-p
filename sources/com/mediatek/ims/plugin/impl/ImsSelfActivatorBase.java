package com.mediatek.ims.plugin.impl;

import android.content.Context;
import android.os.Handler;
import android.telephony.ims.ImsCallProfile;
import com.mediatek.ims.ImsCallSessionProxy;
import com.mediatek.ims.ImsService;
import com.mediatek.ims.plugin.ImsSelfActivator;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public class ImsSelfActivatorBase implements ImsSelfActivator {
    private static final String TAG = "ImsSelfActivatorBase";
    private Context mContext;

    public ImsSelfActivatorBase(Context context, Handler handler, ImsCallSessionProxy callSessionProxy, ImsCommandsInterface imsRILAdapter, ImsService imsService, int phoneId) {
        this.mContext = context;
    }

    @Override // com.mediatek.ims.plugin.ImsSelfActivator
    public boolean shouldProcessSelfActivation(int phoneId) {
        return false;
    }

    @Override // com.mediatek.ims.plugin.ImsSelfActivator
    public void doSelfActivationDial(String dialString, ImsCallProfile callProfile, boolean isEcc) {
    }

    @Override // com.mediatek.ims.plugin.ImsSelfActivator
    public void close() {
    }
}
