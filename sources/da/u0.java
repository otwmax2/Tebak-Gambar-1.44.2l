package da;

import da.i1;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: DefaultExecutor.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class u0 extends i1 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final u0 f28863v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final long f28864w;

    static {
        Long l10;
        u0 u0Var = new u0();
        f28863v = u0Var;
        h1.K(u0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f28864w = timeUnit.toNanos(l10.longValue());
    }

    private u0() {
    }

    private final synchronized void m0() {
        if (t0()) {
            debugStatus = 3;
            f0();
            notifyAll();
        }
    }

    private final synchronized Thread n0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private final boolean p0() {
        return debugStatus == 4;
    }

    private final boolean t0() {
        int i10 = debugStatus;
        return i10 == 2 || i10 == 3;
    }

    private final synchronized boolean v0() {
        if (t0()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    private final void y0() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // da.j1
    protected Thread Q() {
        Thread thread = _thread;
        return thread == null ? n0() : thread;
    }

    @Override // da.j1
    protected void R(long j10, i1.a aVar) {
        y0();
    }

    @Override // da.i1
    public void Y(Runnable runnable) {
        if (p0()) {
            y0();
        }
        super.Y(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zC0;
        s2.f28858a.d(this);
        c.a();
        try {
            if (!v0()) {
                if (zC0) {
                    return;
                } else {
                    return;
                }
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jN = N();
                if (jN == Long.MAX_VALUE) {
                    c.a();
                    long jNanoTime = System.nanoTime();
                    if (j10 == Long.MAX_VALUE) {
                        j10 = f28864w + jNanoTime;
                    }
                    long j11 = j10 - jNanoTime;
                    if (j11 <= 0) {
                        _thread = null;
                        m0();
                        c.a();
                        if (c0()) {
                            return;
                        }
                        Q();
                        return;
                    }
                    jN = y9.l.d(jN, j11);
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (jN > 0) {
                    if (t0()) {
                        _thread = null;
                        m0();
                        c.a();
                        if (c0()) {
                            return;
                        }
                        Q();
                        return;
                    }
                    c.a();
                    LockSupport.parkNanos(this, jN);
                }
            }
        } finally {
            _thread = null;
            m0();
            c.a();
            if (!c0()) {
                Q();
            }
        }
    }

    @Override // da.i1, da.h1
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
