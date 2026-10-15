package t2;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: RequestFutureTarget.java */
/* JADX INFO: loaded from: classes.dex */
public class e<T, R> implements t2.a<R>, Runnable {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final a f35279z = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Handler f35280o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f35281p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f35282q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f35283r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final a f35284s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private R f35285t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private c f35286u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f35287v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Exception f35288w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f35289x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f35290y;

    /* JADX INFO: compiled from: RequestFutureTarget.java */
    static class a {
        a() {
        }

        public void a(Object obj) {
            obj.notifyAll();
        }

        public void b(Object obj, long j10) throws InterruptedException {
            obj.wait(j10);
        }
    }

    public e(Handler handler, int i10, int i11) {
        this(handler, i10, i11, true, f35279z);
    }

    private synchronized R d(Long l10) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f35283r) {
            x2.h.a();
        }
        if (this.f35287v) {
            throw new CancellationException();
        }
        if (this.f35290y) {
            throw new ExecutionException(this.f35288w);
        }
        if (this.f35289x) {
            return this.f35285t;
        }
        if (l10 == null) {
            this.f35284s.b(this, 0L);
        } else if (l10.longValue() > 0) {
            this.f35284s.b(this, l10.longValue());
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.f35290y) {
            throw new ExecutionException(this.f35288w);
        }
        if (this.f35287v) {
            throw new CancellationException();
        }
        if (!this.f35289x) {
            throw new TimeoutException();
        }
        return this.f35285t;
    }

    public void a() {
        this.f35280o.post(this);
    }

    @Override // q2.h
    public void b() {
    }

    @Override // v2.j
    public synchronized void c(R r10, u2.c<? super R> cVar) {
        this.f35289x = true;
        this.f35285t = r10;
        this.f35284s.a(this);
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean cancel(boolean z10) {
        if (this.f35287v) {
            return true;
        }
        boolean z11 = !isDone();
        if (z11) {
            this.f35287v = true;
            if (z10) {
                a();
            }
            this.f35284s.a(this);
        }
        return z11;
    }

    @Override // v2.j
    public synchronized void g(Exception exc, Drawable drawable) {
        this.f35290y = true;
        this.f35288w = exc;
        this.f35284s.a(this);
    }

    @Override // java.util.concurrent.Future
    public R get() throws ExecutionException, InterruptedException {
        try {
            return d(null);
        } catch (TimeoutException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // q2.h
    public void h() {
    }

    @Override // v2.j
    public void i(v2.h hVar) {
        hVar.g(this.f35281p, this.f35282q);
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f35287v;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000c  */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isDone() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.f35287v     // Catch: java.lang.Throwable -> Lf
            if (r0 != 0) goto Lc
            boolean r0 = r1.f35289x     // Catch: java.lang.Throwable -> Lf
            if (r0 == 0) goto La
            goto Lc
        La:
            r0 = 0
            goto Ld
        Lc:
            r0 = 1
        Ld:
            monitor-exit(r1)
            return r0
        Lf:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: t2.e.isDone():boolean");
    }

    @Override // v2.j
    public void j(Drawable drawable) {
    }

    @Override // v2.j
    public c k() {
        return this.f35286u;
    }

    @Override // v2.j
    public void l(Drawable drawable) {
    }

    @Override // v2.j
    public void m(c cVar) {
        this.f35286u = cVar;
    }

    @Override // q2.h
    public void onDestroy() {
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar = this.f35286u;
        if (cVar != null) {
            cVar.clear();
            cancel(false);
        }
    }

    e(Handler handler, int i10, int i11, boolean z10, a aVar) {
        this.f35280o = handler;
        this.f35281p = i10;
        this.f35282q = i11;
        this.f35283r = z10;
        this.f35284s = aVar;
    }

    @Override // java.util.concurrent.Future
    public R get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return d(Long.valueOf(timeUnit.toMillis(j10)));
    }
}
