package da;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class o1 extends n1 implements x0 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Executor f28843r;

    public o1(Executor executor) {
        this.f28843r = executor;
        kotlinx.coroutines.internal.e.a(z());
    }

    private final void x(k9.g gVar, RejectedExecutionException rejectedExecutionException) {
        b2.c(gVar, m1.a("The task was rejected", rejectedExecutionException));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executorZ = z();
        ExecutorService executorService = executorZ instanceof ExecutorService ? (ExecutorService) executorZ : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof o1) && ((o1) obj).z() == z();
    }

    public int hashCode() {
        return System.identityHashCode(z());
    }

    @Override // da.i0
    public void m(k9.g gVar, Runnable runnable) {
        try {
            Executor executorZ = z();
            c.a();
            executorZ.execute(runnable);
        } catch (RejectedExecutionException e10) {
            c.a();
            x(gVar, e10);
            d1.b().m(gVar, runnable);
        }
    }

    @Override // da.i0
    public String toString() {
        return z().toString();
    }

    public Executor z() {
        return this.f28843r;
    }
}
