package com.android.ims;

import com.android.ims.MmTelFeatureConnection;
import java.util.function.Consumer;
/* compiled from: lambda */
/* renamed from: com.android.ims.-$$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0 implements Consumer {
    public static final /* synthetic */ $$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0 INSTANCE = new $$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0();

    private /* synthetic */ $$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0() {
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((MmTelFeatureConnection.IFeatureUpdate) obj).notifyStateChanged();
    }
}
