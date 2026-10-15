package h9;

import h9.n;

/* JADX INFO: compiled from: Result.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class o {
    public static final Object a(Throwable th) {
        t9.m.e(th, "exception");
        return new n.b(th);
    }

    public static final void b(Object obj) throws Throwable {
        if (obj instanceof n.b) {
            throw ((n.b) obj).f30296o;
        }
    }
}
