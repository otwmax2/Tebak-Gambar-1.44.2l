package kotlinx.coroutines.internal;

import da.v0;
import da.x0;

/* JADX INFO: compiled from: LimitedDispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class n extends da.i0 implements Runnable, x0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final da.i0 f31759q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f31760r;
    private volatile int runningWorkers;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final /* synthetic */ x0 f31761s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final s<Runnable> f31762t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Object f31763u;

    /* JADX WARN: Multi-variable type inference failed */
    public n(da.i0 i0Var, int i10) {
        this.f31759q = i0Var;
        this.f31760r = i10;
        x0 x0Var = i0Var instanceof x0 ? (x0) i0Var : null;
        this.f31761s = x0Var == null ? v0.a() : x0Var;
        this.f31762t = new s<>(false);
        this.f31763u = new Object();
    }

    private final boolean x(Runnable runnable) {
        this.f31762t.a(runnable);
        return this.runningWorkers >= this.f31760r;
    }

    private final boolean z() {
        synchronized (this.f31763u) {
            if (this.runningWorkers >= this.f31760r) {
                return false;
            }
            this.runningWorkers++;
            return true;
        }
    }

    @Override // da.i0
    public void m(k9.g gVar, Runnable runnable) {
        if (x(runnable) || !z()) {
            return;
        }
        this.f31759q.m(this, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        r1 = r4.f31763u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        monitor-enter(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
    
        r4.runningWorkers--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
    
        if (r4.f31762t.c() != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
    
        monitor-exit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        r4.runningWorkers++;
        r2 = h9.t.f30301a;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            r4 = this;
            r0 = 0
        L1:
            r1 = 0
        L2:
            kotlinx.coroutines.internal.s<java.lang.Runnable> r2 = r4.f31762t
            java.lang.Object r2 = r2.d()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            if (r2 == 0) goto L2a
            r2.run()     // Catch: java.lang.Throwable -> L10
            goto L16
        L10:
            r2 = move-exception
            k9.h r3 = k9.h.f31635o
            da.l0.a(r3, r2)
        L16:
            int r1 = r1 + 1
            r2 = 16
            if (r1 < r2) goto L2
            da.i0 r2 = r4.f31759q
            boolean r2 = r2.o(r4)
            if (r2 == 0) goto L2
            da.i0 r0 = r4.f31759q
            r0.m(r4, r4)
            return
        L2a:
            java.lang.Object r1 = r4.f31763u
            monitor-enter(r1)
            int r2 = r4.runningWorkers     // Catch: java.lang.Throwable -> L47
            int r2 = r2 + (-1)
            r4.runningWorkers = r2     // Catch: java.lang.Throwable -> L47
            kotlinx.coroutines.internal.s<java.lang.Runnable> r2 = r4.f31762t     // Catch: java.lang.Throwable -> L47
            int r2 = r2.c()     // Catch: java.lang.Throwable -> L47
            if (r2 != 0) goto L3d
            monitor-exit(r1)
            return
        L3d:
            int r2 = r4.runningWorkers     // Catch: java.lang.Throwable -> L47
            int r2 = r2 + 1
            r4.runningWorkers = r2     // Catch: java.lang.Throwable -> L47
            h9.t r2 = h9.t.f30301a     // Catch: java.lang.Throwable -> L47
            monitor-exit(r1)
            goto L1
        L47:
            r0 = move-exception
            monitor-exit(r1)
            goto L4b
        L4a:
            throw r0
        L4b:
            goto L4a
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.n.run():void");
    }
}
