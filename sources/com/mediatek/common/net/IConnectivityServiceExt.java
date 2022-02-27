package com.mediatek.common.net;

import android.content.Context;
/* loaded from: classes.dex */
public interface IConnectivityServiceExt {
    void UserPrompt();

    boolean ignoreRequest(Object obj);

    void init(Context context);

    boolean isControlBySetting(int i, int i2);
}
