package kotlinx.coroutines.scheduling;

import da.s0;
import da.t0;
import h9.t;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.internal.b0;
import kotlinx.coroutines.internal.e0;

/* JADX INFO: compiled from: CoroutineScheduler.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated;
    volatile /* synthetic */ long controlState;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f31798o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f31799p;
    private volatile /* synthetic */ long parkedWorkersStack;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f31800q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f31801r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.d f31802s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.d f31803t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final b0<c> f31804u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final C0194a f31793v = new C0194a(null);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final e0 f31797z = new e0("NOT_IN_STACK");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f31794w = AtomicLongFieldUpdater.newUpdater(a.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final /* synthetic */ AtomicLongFieldUpdater f31795x = AtomicLongFieldUpdater.newUpdater(a.class, "controlState");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f31796y = AtomicIntegerFieldUpdater.newUpdater(a.class, "_isTerminated");

    /* JADX INFO: renamed from: kotlinx.coroutines.scheduling.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public static final class C0194a {
        private C0194a() {
        }

        public /* synthetic */ C0194a(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f31805a;

        static {
            int[] iArr = new int[d.values().length];
            iArr[d.PARKING.ordinal()] = 1;
            iArr[d.BLOCKING.ordinal()] = 2;
            iArr[d.CPU_ACQUIRED.ordinal()] = 3;
            iArr[d.DORMANT.ordinal()] = 4;
            iArr[d.TERMINATED.ordinal()] = 5;
            f31805a = iArr;
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public enum d {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public a(int i10, int i11, long j10, String str) {
        this.f31798o = i10;
        this.f31799p = i11;
        this.f31800q = j10;
        this.f31801r = str;
        if (!(i10 >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
        }
        if (!(i11 >= i10)) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        if (!(i11 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j10 > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.f31802s = new kotlinx.coroutines.scheduling.d();
        this.f31803t = new kotlinx.coroutines.scheduling.d();
        this.parkedWorkersStack = 0L;
        this.f31804u = new b0<>(i10 + 1);
        this.controlState = ((long) i10) << 42;
        this._isTerminated = 0;
    }

    private final boolean b(h hVar) {
        return hVar.f31830p.b() == 1 ? this.f31803t.a(hVar) : this.f31802s.a(hVar);
    }

    private final int c() {
        synchronized (this.f31804u) {
            if (isTerminated()) {
                return -1;
            }
            long j10 = this.controlState;
            int i10 = (int) (j10 & 2097151);
            int iA = y9.l.a(i10 - ((int) ((j10 & 4398044413952L) >> 21)), 0);
            if (iA >= this.f31798o) {
                return 0;
            }
            if (i10 >= this.f31799p) {
                return 0;
            }
            int i11 = ((int) (this.controlState & 2097151)) + 1;
            if (!(i11 > 0 && this.f31804u.b(i11) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            c cVar = new c(this, i11);
            this.f31804u.c(i11, cVar);
            if (!(i11 == ((int) (2097151 & f31795x.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            cVar.start();
            return iA + 1;
        }
    }

    private final c f() {
        Thread threadCurrentThread = Thread.currentThread();
        c cVar = threadCurrentThread instanceof c ? (c) threadCurrentThread : null;
        if (cVar == null || !t9.m.a(a.this, this)) {
            return null;
        }
        return cVar;
    }

    public static /* synthetic */ void i(a aVar, Runnable runnable, i iVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            iVar = l.f31838f;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        aVar.h(runnable, iVar, z10);
    }

    private final int j(c cVar) {
        Object objH = cVar.h();
        while (objH != f31797z) {
            if (objH == null) {
                return 0;
            }
            c cVar2 = (c) objH;
            int iG = cVar2.g();
            if (iG != 0) {
                return iG;
            }
            objH = cVar2.h();
        }
        return -1;
    }

    private final c k() {
        while (true) {
            long j10 = this.parkedWorkersStack;
            c cVarB = this.f31804u.b((int) (2097151 & j10));
            if (cVarB == null) {
                return null;
            }
            long j11 = (2097152 + j10) & (-2097152);
            int iJ = j(cVarB);
            if (iJ >= 0 && f31794w.compareAndSet(this, j10, ((long) iJ) | j11)) {
                cVarB.p(f31797z);
                return cVarB;
            }
        }
    }

    private final void p(boolean z10) {
        long jAddAndGet = f31795x.addAndGet(this, 2097152L);
        if (z10 || u() || s(jAddAndGet)) {
            return;
        }
        u();
    }

    private final h r(c cVar, h hVar, boolean z10) {
        if (cVar == null || cVar.f31808p == d.TERMINATED) {
            return hVar;
        }
        if (hVar.f31830p.b() == 0 && cVar.f31808p == d.BLOCKING) {
            return hVar;
        }
        cVar.f31812t = true;
        return cVar.f31807o.a(hVar, z10);
    }

    private final boolean s(long j10) {
        if (y9.l.a(((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21)), 0) < this.f31798o) {
            int iC = c();
            if (iC == 1 && this.f31798o > 1) {
                c();
            }
            if (iC > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean t(a aVar, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = aVar.controlState;
        }
        return aVar.s(j10);
    }

    private final boolean u() {
        c cVarK;
        do {
            cVarK = k();
            if (cVarK == null) {
                return false;
            }
        } while (!c.f31806v.compareAndSet(cVarK, -1, 0));
        LockSupport.unpark(cVarK);
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        o(10000L);
    }

    public final h d(Runnable runnable, i iVar) {
        long jA = l.f31837e.a();
        if (!(runnable instanceof h)) {
            return new k(runnable, jA, iVar);
        }
        h hVar = (h) runnable;
        hVar.f31829o = jA;
        hVar.f31830p = iVar;
        return hVar;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        i(this, runnable, null, false, 6, null);
    }

    public final void h(Runnable runnable, i iVar, boolean z10) {
        da.c.a();
        h hVarD = d(runnable, iVar);
        c cVarF = f();
        h hVarR = r(cVarF, hVarD, z10);
        if (hVarR != null && !b(hVarR)) {
            throw new RejectedExecutionException(this.f31801r + " was terminated");
        }
        boolean z11 = z10 && cVarF != null;
        if (hVarD.f31830p.b() != 0) {
            p(z11);
        } else {
            if (z11) {
                return;
            }
            q();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final boolean l(c cVar) {
        long j10;
        long j11;
        int iG;
        if (cVar.h() != f31797z) {
            return false;
        }
        do {
            j10 = this.parkedWorkersStack;
            int i10 = (int) (2097151 & j10);
            j11 = (2097152 + j10) & (-2097152);
            iG = cVar.g();
            if (s0.a()) {
                if (!(iG != 0)) {
                    throw new AssertionError();
                }
            }
            cVar.p(this.f31804u.b(i10));
        } while (!f31794w.compareAndSet(this, j10, ((long) iG) | j11));
        return true;
    }

    public final void m(c cVar, int i10, int i11) {
        while (true) {
            long j10 = this.parkedWorkersStack;
            int iJ = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (iJ == i10) {
                iJ = i11 == 0 ? j(cVar) : i11;
            }
            if (iJ >= 0 && f31794w.compareAndSet(this, j10, j11 | ((long) iJ))) {
                return;
            }
        }
    }

    public final void n(h hVar) {
        try {
            hVar.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void o(long r9) throws java.lang.InterruptedException {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.scheduling.a.f31796y
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            kotlinx.coroutines.scheduling.a$c r0 = r8.f()
            kotlinx.coroutines.internal.b0<kotlinx.coroutines.scheduling.a$c> r3 = r8.f31804u
            monitor-enter(r3)
            long r4 = r8.controlState     // Catch: java.lang.Throwable -> Lb3
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r5 = (int) r4
            monitor-exit(r3)
            if (r2 > r5) goto L5b
            r3 = 1
        L1d:
            kotlinx.coroutines.internal.b0<kotlinx.coroutines.scheduling.a$c> r4 = r8.f31804u
            java.lang.Object r4 = r4.b(r3)
            t9.m.b(r4)
            kotlinx.coroutines.scheduling.a$c r4 = (kotlinx.coroutines.scheduling.a.c) r4
            if (r4 == r0) goto L56
        L2a:
            boolean r6 = r4.isAlive()
            if (r6 == 0) goto L37
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r4.join(r9)
            goto L2a
        L37:
            kotlinx.coroutines.scheduling.a$d r6 = r4.f31808p
            boolean r7 = da.s0.a()
            if (r7 == 0) goto L4f
            kotlinx.coroutines.scheduling.a$d r7 = kotlinx.coroutines.scheduling.a.d.TERMINATED
            if (r6 != r7) goto L45
            r6 = 1
            goto L46
        L45:
            r6 = 0
        L46:
            if (r6 == 0) goto L49
            goto L4f
        L49:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            r9.<init>()
            throw r9
        L4f:
            kotlinx.coroutines.scheduling.n r4 = r4.f31807o
            kotlinx.coroutines.scheduling.d r6 = r8.f31803t
            r4.g(r6)
        L56:
            if (r3 == r5) goto L5b
            int r3 = r3 + 1
            goto L1d
        L5b:
            kotlinx.coroutines.scheduling.d r9 = r8.f31803t
            r9.b()
            kotlinx.coroutines.scheduling.d r9 = r8.f31802s
            r9.b()
        L65:
            if (r0 == 0) goto L6d
            kotlinx.coroutines.scheduling.h r9 = r0.f(r2)
            if (r9 != 0) goto Laf
        L6d:
            kotlinx.coroutines.scheduling.d r9 = r8.f31802s
            java.lang.Object r9 = r9.d()
            kotlinx.coroutines.scheduling.h r9 = (kotlinx.coroutines.scheduling.h) r9
            if (r9 != 0) goto Laf
            kotlinx.coroutines.scheduling.d r9 = r8.f31803t
            java.lang.Object r9 = r9.d()
            kotlinx.coroutines.scheduling.h r9 = (kotlinx.coroutines.scheduling.h) r9
            if (r9 != 0) goto Laf
            if (r0 == 0) goto L88
            kotlinx.coroutines.scheduling.a$d r9 = kotlinx.coroutines.scheduling.a.d.TERMINATED
            r0.s(r9)
        L88:
            boolean r9 = da.s0.a()
            if (r9 == 0) goto La8
            long r9 = r8.controlState
            r3 = 9223367638808264704(0x7ffffc0000000000, double:NaN)
            long r9 = r9 & r3
            r0 = 42
            long r9 = r9 >> r0
            int r10 = (int) r9
            int r9 = r8.f31798o
            if (r10 != r9) goto L9f
            r1 = 1
        L9f:
            if (r1 == 0) goto La2
            goto La8
        La2:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            r9.<init>()
            throw r9
        La8:
            r9 = 0
            r8.parkedWorkersStack = r9
            r8.controlState = r9
            return
        Laf:
            r8.n(r9)
            goto L65
        Lb3:
            r9 = move-exception
            monitor-exit(r3)
            goto Lb7
        Lb6:
            throw r9
        Lb7:
            goto Lb6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.a.o(long):void");
    }

    public final void q() {
        if (u() || t(this, 0L, 1, null)) {
            return;
        }
        u();
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f31804u.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < iA; i15++) {
            c cVarB = this.f31804u.b(i15);
            if (cVarB != null) {
                int iF = cVarB.f31807o.f();
                int i16 = b.f31805a[cVarB.f31808p.ordinal()];
                if (i16 == 1) {
                    i12++;
                } else if (i16 == 2) {
                    i11++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iF);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i16 == 3) {
                    i10++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iF);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i16 == 4) {
                    i13++;
                    if (iF > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iF);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i16 == 5) {
                    i14++;
                }
            }
        }
        long j10 = this.controlState;
        return this.f31801r + '@' + t0.b(this) + "[Pool Size {core = " + this.f31798o + ", max = " + this.f31799p + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f31802s.c() + ", global blocking queue size = " + this.f31803t.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((4398044413952L & j10) >> 21)) + ", CPUs acquired = " + (this.f31798o - ((int) ((9223367638808264704L & j10) >> 42))) + "}]";
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public final class c extends Thread {

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        static final /* synthetic */ AtomicIntegerFieldUpdater f31806v = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl");
        private volatile int indexInArray;
        private volatile Object nextParkedWorker;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final n f31807o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public d f31808p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private long f31809q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private long f31810r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f31811s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f31812t;
        volatile /* synthetic */ int workerCtl;

        private c() {
            setDaemon(true);
            this.f31807o = new n();
            this.f31808p = d.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = a.f31797z;
            this.f31811s = w9.c.f36036o.c();
        }

        private final void b(int i10) {
            if (i10 == 0) {
                return;
            }
            a.f31795x.addAndGet(a.this, -2097152L);
            d dVar = this.f31808p;
            if (dVar != d.TERMINATED) {
                if (s0.a()) {
                    if (!(dVar == d.BLOCKING)) {
                        throw new AssertionError();
                    }
                }
                this.f31808p = d.DORMANT;
            }
        }

        private final void c(int i10) {
            if (i10 != 0 && s(d.BLOCKING)) {
                a.this.q();
            }
        }

        private final void d(h hVar) {
            int iB = hVar.f31830p.b();
            i(iB);
            c(iB);
            a.this.n(hVar);
            b(iB);
        }

        private final h e(boolean z10) {
            h hVarM;
            h hVarM2;
            if (z10) {
                boolean z11 = k(a.this.f31798o * 2) == 0;
                if (z11 && (hVarM2 = m()) != null) {
                    return hVarM2;
                }
                h hVarH = this.f31807o.h();
                if (hVarH != null) {
                    return hVarH;
                }
                if (!z11 && (hVarM = m()) != null) {
                    return hVarM;
                }
            } else {
                h hVarM3 = m();
                if (hVarM3 != null) {
                    return hVarM3;
                }
            }
            return t(false);
        }

        private final void i(int i10) {
            this.f31809q = 0L;
            if (this.f31808p == d.PARKING) {
                if (s0.a()) {
                    if (!(i10 == 1)) {
                        throw new AssertionError();
                    }
                }
                this.f31808p = d.BLOCKING;
            }
        }

        private final boolean j() {
            return this.nextParkedWorker != a.f31797z;
        }

        private final void l() {
            if (this.f31809q == 0) {
                this.f31809q = System.nanoTime() + a.this.f31800q;
            }
            LockSupport.parkNanos(a.this.f31800q);
            if (System.nanoTime() - this.f31809q >= 0) {
                this.f31809q = 0L;
                u();
            }
        }

        private final h m() {
            if (k(2) == 0) {
                h hVarD = a.this.f31802s.d();
                return hVarD != null ? hVarD : a.this.f31803t.d();
            }
            h hVarD2 = a.this.f31803t.d();
            return hVarD2 != null ? hVarD2 : a.this.f31802s.d();
        }

        private final void n() {
            loop0: while (true) {
                boolean z10 = false;
                while (!a.this.isTerminated() && this.f31808p != d.TERMINATED) {
                    h hVarF = f(this.f31812t);
                    if (hVarF != null) {
                        this.f31810r = 0L;
                        d(hVarF);
                    } else {
                        this.f31812t = false;
                        if (this.f31810r == 0) {
                            r();
                        } else if (z10) {
                            s(d.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f31810r);
                            this.f31810r = 0L;
                        } else {
                            z10 = true;
                        }
                    }
                }
                break loop0;
            }
            s(d.TERMINATED);
        }

        private final boolean q() {
            boolean z10;
            if (this.f31808p != d.CPU_ACQUIRED) {
                a aVar = a.this;
                while (true) {
                    long j10 = aVar.controlState;
                    if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                        z10 = false;
                        break;
                    }
                    if (a.f31795x.compareAndSet(aVar, j10, j10 - 4398046511104L)) {
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    return false;
                }
                this.f31808p = d.CPU_ACQUIRED;
            }
            return true;
        }

        private final void r() {
            if (!j()) {
                a.this.l(this);
                return;
            }
            if (s0.a()) {
                if (!(this.f31807o.f() == 0)) {
                    throw new AssertionError();
                }
            }
            this.workerCtl = -1;
            while (j() && this.workerCtl == -1 && !a.this.isTerminated() && this.f31808p != d.TERMINATED) {
                s(d.PARKING);
                Thread.interrupted();
                l();
            }
        }

        private final h t(boolean z10) {
            if (s0.a()) {
                if (!(this.f31807o.f() == 0)) {
                    throw new AssertionError();
                }
            }
            int i10 = (int) (a.this.controlState & 2097151);
            if (i10 < 2) {
                return null;
            }
            int iK = k(i10);
            a aVar = a.this;
            long jMin = Long.MAX_VALUE;
            for (int i11 = 0; i11 < i10; i11++) {
                iK++;
                if (iK > i10) {
                    iK = 1;
                }
                c cVarB = aVar.f31804u.b(iK);
                if (cVarB != null && cVarB != this) {
                    if (s0.a()) {
                        if (!(this.f31807o.f() == 0)) {
                            throw new AssertionError();
                        }
                    }
                    long jK = z10 ? this.f31807o.k(cVarB.f31807o) : this.f31807o.l(cVarB.f31807o);
                    if (jK == -1) {
                        return this.f31807o.h();
                    }
                    if (jK > 0) {
                        jMin = Math.min(jMin, jK);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.f31810r = jMin;
            return null;
        }

        private final void u() {
            a aVar = a.this;
            synchronized (aVar.f31804u) {
                if (aVar.isTerminated()) {
                    return;
                }
                if (((int) (aVar.controlState & 2097151)) <= aVar.f31798o) {
                    return;
                }
                if (f31806v.compareAndSet(this, -1, 1)) {
                    int i10 = this.indexInArray;
                    o(0);
                    aVar.m(this, i10, 0);
                    int andDecrement = (int) (2097151 & a.f31795x.getAndDecrement(aVar));
                    if (andDecrement != i10) {
                        c cVarB = aVar.f31804u.b(andDecrement);
                        t9.m.b(cVarB);
                        c cVar = cVarB;
                        aVar.f31804u.c(i10, cVar);
                        cVar.o(i10);
                        aVar.m(cVar, andDecrement, i10);
                    }
                    aVar.f31804u.c(andDecrement, null);
                    t tVar = t.f30301a;
                    this.f31808p = d.TERMINATED;
                }
            }
        }

        public final h f(boolean z10) {
            h hVarD;
            if (q()) {
                return e(z10);
            }
            if (!z10 || (hVarD = this.f31807o.h()) == null) {
                hVarD = a.this.f31803t.d();
            }
            return hVarD == null ? t(true) : hVarD;
        }

        public final int g() {
            return this.indexInArray;
        }

        public final Object h() {
            return this.nextParkedWorker;
        }

        public final int k(int i10) {
            int i11 = this.f31811s;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.f31811s = i14;
            int i15 = i10 - 1;
            return (i15 & i10) == 0 ? i14 & i15 : (i14 & Integer.MAX_VALUE) % i10;
        }

        public final void o(int i10) {
            StringBuilder sb = new StringBuilder();
            sb.append(a.this.f31801r);
            sb.append("-worker-");
            sb.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb.toString());
            this.indexInArray = i10;
        }

        public final void p(Object obj) {
            this.nextParkedWorker = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            n();
        }

        public final boolean s(d dVar) {
            d dVar2 = this.f31808p;
            boolean z10 = dVar2 == d.CPU_ACQUIRED;
            if (z10) {
                a.f31795x.addAndGet(a.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.f31808p = dVar;
            }
            return z10;
        }

        public c(a aVar, int i10) {
            this();
            o(i10);
        }
    }
}
