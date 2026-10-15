package da;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: classes2.dex */
final class f<T> extends a<T> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Thread f28796q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final h1 f28797r;

    public f(k9.g gVar, Thread thread, h1 h1Var) {
        super(gVar, true, true);
        this.f28796q = thread;
        this.f28797r = h1Var;
    }

    @Override // da.e2
    protected void J(Object obj) {
        if (t9.m.a(Thread.currentThread(), this.f28796q)) {
            return;
        }
        Thread thread = this.f28796q;
        c.a();
        LockSupport.unpark(thread);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T N0() throws Throwable {
        c.a();
        try {
            h1 h1Var = this.f28797r;
            if (h1Var != null) {
                h1.K(h1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    h1 h1Var2 = this.f28797r;
                    long jN = h1Var2 != null ? h1Var2.N() : Long.MAX_VALUE;
                    if (i0()) {
                        c.a();
                        T t10 = (T) f2.h(e0());
                        a0Var = t10 instanceof a0 ? (a0) t10 : null;
                        if (a0Var == null) {
                            return t10;
                        }
                        throw a0Var.f28774a;
                    }
                    c.a();
                    LockSupport.parkNanos(this, jN);
                } finally {
                    h1 h1Var3 = this.f28797r;
                    if (h1Var3 != null) {
                        h1.z(h1Var3, false, 1, null);
                    }
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            M(interruptedException);
            throw interruptedException;
        } catch (Throwable th) {
            c.a();
            throw th;
        }
    }

    @Override // da.e2
    protected boolean j0() {
        return true;
    }
}
