package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.e0;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e0 f31858a = new e0("LOCK_FAIL");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e0 f31859b = new e0("UNLOCK_FAIL");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final e0 f31860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final e0 f31861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f31862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f31863f;

    static {
        e0 e0Var = new e0("LOCKED");
        f31860c = e0Var;
        e0 e0Var2 = new e0("UNLOCKED");
        f31861d = e0Var2;
        f31862e = new a(e0Var);
        f31863f = new a(e0Var2);
    }

    public static final b a(boolean z10) {
        return new c(z10);
    }

    public static /* synthetic */ b b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }
}
