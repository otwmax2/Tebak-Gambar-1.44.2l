package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: AsyncTimeout.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends v {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f33340h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f33341i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    static a f33342j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f33343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private a f33344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f33345g;

    /* JADX INFO: renamed from: okio.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AsyncTimeout.java */
    /* JADX INFO: loaded from: classes2.dex */
    class C0216a implements t {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ t f33346o;

        C0216a(t tVar) {
            this.f33346o = tVar;
        }

        @Override // okio.t
        public void a2(okio.c cVar, long j10) throws IOException {
            w.b(cVar.f33354p, 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 <= 0) {
                    return;
                }
                q qVar = cVar.f33353o;
                while (true) {
                    if (j11 >= 65536) {
                        break;
                    }
                    j11 += (long) (qVar.f33397c - qVar.f33396b);
                    if (j11 >= j10) {
                        j11 = j10;
                        break;
                    }
                    qVar = qVar.f33400f;
                }
                a.this.k();
                try {
                    try {
                        this.f33346o.a2(cVar, j11);
                        j10 -= j11;
                        a.this.m(true);
                    } catch (IOException e10) {
                        throw a.this.l(e10);
                    }
                } catch (Throwable th) {
                    a.this.m(false);
                    throw th;
                }
            }
        }

        @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a.this.k();
            try {
                try {
                    this.f33346o.close();
                    a.this.m(true);
                } catch (IOException e10) {
                    throw a.this.l(e10);
                }
            } catch (Throwable th) {
                a.this.m(false);
                throw th;
            }
        }

        @Override // okio.t, java.io.Flushable
        public void flush() throws IOException {
            a.this.k();
            try {
                try {
                    this.f33346o.flush();
                    a.this.m(true);
                } catch (IOException e10) {
                    throw a.this.l(e10);
                }
            } catch (Throwable th) {
                a.this.m(false);
                throw th;
            }
        }

        @Override // okio.t
        public v timeout() {
            return a.this;
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f33346o + ")";
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.java */
    /* JADX INFO: loaded from: classes2.dex */
    class b implements u {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ u f33348o;

        b(u uVar) {
            this.f33348o = uVar;
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                try {
                    this.f33348o.close();
                    a.this.m(true);
                } catch (IOException e10) {
                    throw a.this.l(e10);
                }
            } catch (Throwable th) {
                a.this.m(false);
                throw th;
            }
        }

        @Override // okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            a.this.k();
            try {
                try {
                    long j11 = this.f33348o.read(cVar, j10);
                    a.this.m(true);
                    return j11;
                } catch (IOException e10) {
                    throw a.this.l(e10);
                }
            } catch (Throwable th) {
                a.this.m(false);
                throw th;
            }
        }

        @Override // okio.u
        public v timeout() {
            return a.this;
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f33348o + ")";
        }
    }

    /* JADX INFO: compiled from: AsyncTimeout.java */
    /* JADX INFO: loaded from: classes2.dex */
    private static final class c extends Thread {
        c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
        
            r1.t();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<okio.a> r0 = okio.a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                okio.a r1 = okio.a.i()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                okio.a r2 = okio.a.f33342j     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                okio.a.f33342j = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.t()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L1d
            L1c:
                throw r1
            L1d:
                goto L1c
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.a.c.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f33340h = millis;
        f33341i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    @Nullable
    static a i() throws InterruptedException {
        a aVar = f33342j.f33344f;
        if (aVar == null) {
            long jNanoTime = System.nanoTime();
            a.class.wait(f33340h);
            if (f33342j.f33344f != null || System.nanoTime() - jNanoTime < f33341i) {
                return null;
            }
            return f33342j;
        }
        long jP = aVar.p(System.nanoTime());
        if (jP > 0) {
            long j10 = jP / 1000000;
            a.class.wait(j10, (int) (jP - (1000000 * j10)));
            return null;
        }
        f33342j.f33344f = aVar.f33344f;
        aVar.f33344f = null;
        return aVar;
    }

    private static synchronized boolean j(a aVar) {
        a aVar2 = f33342j;
        while (aVar2 != null) {
            a aVar3 = aVar2.f33344f;
            if (aVar3 == aVar) {
                aVar2.f33344f = aVar.f33344f;
                aVar.f33344f = null;
                return false;
            }
            aVar2 = aVar3;
        }
        return true;
    }

    private long p(long j10) {
        return this.f33345g - j10;
    }

    private static synchronized void q(a aVar, long j10, boolean z10) {
        if (f33342j == null) {
            f33342j = new a();
            new c().start();
        }
        long jNanoTime = System.nanoTime();
        if (j10 != 0 && z10) {
            aVar.f33345g = Math.min(j10, aVar.c() - jNanoTime) + jNanoTime;
        } else if (j10 != 0) {
            aVar.f33345g = j10 + jNanoTime;
        } else {
            if (!z10) {
                throw new AssertionError();
            }
            aVar.f33345g = aVar.c();
        }
        long jP = aVar.p(jNanoTime);
        a aVar2 = f33342j;
        while (true) {
            a aVar3 = aVar2.f33344f;
            if (aVar3 == null || jP < aVar3.p(jNanoTime)) {
                break;
            } else {
                aVar2 = aVar2.f33344f;
            }
        }
        aVar.f33344f = aVar2.f33344f;
        aVar2.f33344f = aVar;
        if (aVar2 == f33342j) {
            a.class.notify();
        }
    }

    public final void k() {
        if (this.f33343e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jH = h();
        boolean zE = e();
        if (jH != 0 || zE) {
            this.f33343e = true;
            q(this, jH, zE);
        }
    }

    final IOException l(IOException iOException) throws IOException {
        return !n() ? iOException : o(iOException);
    }

    final void m(boolean z10) throws IOException {
        if (n() && z10) {
            throw o(null);
        }
    }

    public final boolean n() {
        if (!this.f33343e) {
            return false;
        }
        this.f33343e = false;
        return j(this);
    }

    protected IOException o(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final t r(t tVar) {
        return new C0216a(tVar);
    }

    public final u s(u uVar) {
        return new b(uVar);
    }

    protected void t() {
    }
}
