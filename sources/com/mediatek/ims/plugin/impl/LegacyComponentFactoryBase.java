package com.mediatek.ims.plugin.impl;

import android.content.Context;
import android.telephony.ims.stub.ImsUtImplBase;
import com.mediatek.ims.ImsService;
import com.mediatek.ims.feature.MtkImsUtImplBase;
import com.mediatek.ims.plugin.LegacyComponentFactory;
/* loaded from: classes.dex */
public class LegacyComponentFactoryBase implements LegacyComponentFactory {
    @Override // com.mediatek.ims.plugin.LegacyComponentFactory
    public ImsUtImplBase makeImsUt(Context context, int phoneId, ImsService imsService) {
        return null;
    }

    @Override // com.mediatek.ims.plugin.LegacyComponentFactory
    public MtkImsUtImplBase makeMtkImsUt(Context context, int phoneId, ImsService imsService) {
        return null;
    }
}
