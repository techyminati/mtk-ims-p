package android.os;

import java.util.function.ToIntFunction;
/* compiled from: lambda */
/* renamed from: android.os.-$$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA implements ToIntFunction {
    public static final /* synthetic */ $$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA INSTANCE = new $$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA();

    private /* synthetic */ $$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA() {
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int deepHashCode;
        deepHashCode = HidlSupport.deepHashCode(obj);
        return deepHashCode;
    }
}
