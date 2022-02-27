package com.mediatek.ims.internal.op;

import android.content.Context;
/* loaded from: classes.dex */
public interface OpImsServiceFactory {
    OpImsCallSessionProxy makeOpImsCallSessionProxy();

    OpImsService makeOpImsService();

    OpImsServiceCall makeOpImsServiceCall(Context context, int i);
}
