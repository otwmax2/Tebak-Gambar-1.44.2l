package kotlinx.coroutines.scheduling;

import da.i0;
import da.n1;
import java.util.concurrent.Executor;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.internal.h0;

/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends n1 implements Executor {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final b f31820r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final i0 f31821s = m.f31840q.w(h0.d("kotlinx.coroutines.io.parallelism", y9.l.a(64, f0.a()), 0, 0, 12, null));

    private b() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        m(k9.h.f31635o, runnable);
    }

    @Override // da.i0
    public void m(k9.g gVar, Runnable runnable) {
        f31821s.m(gVar, runnable);
    }

    @Override // da.i0
    public String toString() {
        return "Dispatchers.IO";
    }
}
