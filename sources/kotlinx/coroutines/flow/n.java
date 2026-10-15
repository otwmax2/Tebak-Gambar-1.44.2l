package kotlinx.coroutines.flow;

import kotlinx.coroutines.internal.e0;

/* JADX INFO: compiled from: StateFlow.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e0 f31704a = new e0("NONE");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e0 f31705b = new e0("PENDING");

    public static final <T> k<T> a(T t10) {
        if (t10 == null) {
            t10 = (T) ga.h.f30046a;
        }
        return new m(t10);
    }
}
