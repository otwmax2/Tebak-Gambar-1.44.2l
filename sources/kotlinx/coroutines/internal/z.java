package kotlinx.coroutines.internal;

import da.t0;

/* JADX INFO: compiled from: Atomic.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class z {
    public abstract c<?> a();

    public final boolean b(z zVar) {
        c<?> cVarA;
        c<?> cVarA2 = a();
        return (cVarA2 == null || (cVarA = zVar.a()) == null || cVarA2.f() >= cVarA.f()) ? false : true;
    }

    public abstract Object c(Object obj);

    public String toString() {
        return t0.a(this) + '@' + t0.b(this);
    }
}
