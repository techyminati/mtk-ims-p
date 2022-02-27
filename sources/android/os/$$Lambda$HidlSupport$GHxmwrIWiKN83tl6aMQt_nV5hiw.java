package android.os;

import java.util.function.ToIntFunction;
/* compiled from: lambda */
/* renamed from: android.os.-$$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw implements ToIntFunction {
    public static final /* synthetic */ $$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw INSTANCE = new $$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw();

    private /* synthetic */ $$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw() {
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int deepHashCode;
        deepHashCode = HidlSupport.deepHashCode(obj);
        return deepHashCode;
    }
}
