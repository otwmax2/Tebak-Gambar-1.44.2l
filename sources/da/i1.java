package da;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: EventLoop.common.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class i1 extends j1 implements x0 {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f28818t = AtomicReferenceFieldUpdater.newUpdater(i1.class, Object.class, "_queue");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f28819u = AtomicReferenceFieldUpdater.newUpdater(i1.class, Object.class, "_delayed");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public static abstract class a implements Runnable, Comparable<a>, e1, kotlinx.coroutines.internal.k0 {
        private volatile Object _heap;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f28820o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f28821p;

        @Override // kotlinx.coroutines.internal.k0
        public void c(kotlinx.coroutines.internal.j0<?> j0Var) {
            if (!(this._heap != l1.f28827a)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this._heap = j0Var;
        }

        @Override // kotlinx.coroutines.internal.k0
        public kotlinx.coroutines.internal.j0<?> f() {
            Object obj = this._heap;
            if (obj instanceof kotlinx.coroutines.internal.j0) {
                return (kotlinx.coroutines.internal.j0) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.k0
        public void g(int i10) {
            this.f28821p = i10;
        }

        @Override // da.e1
        public final synchronized void i() {
            Object obj = this._heap;
            if (obj == l1.f28827a) {
                return;
            }
            b bVar = obj instanceof b ? (b) obj : null;
            if (bVar != null) {
                bVar.g(this);
            }
            this._heap = l1.f28827a;
        }

        @Override // kotlinx.coroutines.internal.k0
        public int j() {
            return this.f28821p;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            long j10 = this.f28820o - aVar.f28820o;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }

        public final synchronized int l(long j10, b bVar, i1 i1Var) {
            if (this._heap == l1.f28827a) {
                return 2;
            }
            synchronized (bVar) {
                a aVarB = bVar.b();
                if (i1Var.a0()) {
                    return 1;
                }
                if (aVarB == null) {
                    bVar.f28822b = j10;
                } else {
                    long j11 = aVarB.f28820o;
                    if (j11 - j10 < 0) {
                        j10 = j11;
                    }
                    if (j10 - bVar.f28822b > 0) {
                        bVar.f28822b = j10;
                    }
                }
                long j12 = this.f28820o;
                long j13 = bVar.f28822b;
                if (j12 - j13 < 0) {
                    this.f28820o = j13;
                }
                bVar.a(this);
                return 0;
            }
        }

        public final boolean m(long j10) {
            return j10 - this.f28820o >= 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f28820o + ']';
        }
    }

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public static final class b extends kotlinx.coroutines.internal.j0<a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f28822b;

        public b(long j10) {
            this.f28822b = j10;
        }
    }

    private final void U() {
        if (s0.a() && !a0()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                if (androidx.concurrent.futures.b.a(f28818t, this, null, l1.f28828b)) {
                    return;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.t) {
                ((kotlinx.coroutines.internal.t) obj).d();
                return;
            } else {
                if (obj == l1.f28828b) {
                    return;
                }
                kotlinx.coroutines.internal.t tVar = new kotlinx.coroutines.internal.t(8, true);
                tVar.a((Runnable) obj);
                if (androidx.concurrent.futures.b.a(f28818t, this, obj, tVar)) {
                    return;
                }
            }
        }
    }

    private final Runnable X() {
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (obj instanceof kotlinx.coroutines.internal.t) {
                kotlinx.coroutines.internal.t tVar = (kotlinx.coroutines.internal.t) obj;
                Object objJ = tVar.j();
                if (objJ != kotlinx.coroutines.internal.t.f31778h) {
                    return (Runnable) objJ;
                }
                androidx.concurrent.futures.b.a(f28818t, this, obj, tVar.i());
            } else {
                if (obj == l1.f28828b) {
                    return null;
                }
                if (androidx.concurrent.futures.b.a(f28818t, this, obj, null)) {
                    return (Runnable) obj;
                }
            }
        }
    }

    private final boolean Z(Runnable runnable) {
        while (true) {
            Object obj = this._queue;
            if (a0()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.b.a(f28818t, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.t) {
                kotlinx.coroutines.internal.t tVar = (kotlinx.coroutines.internal.t) obj;
                int iA = tVar.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    androidx.concurrent.futures.b.a(f28818t, this, obj, tVar.i());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == l1.f28828b) {
                    return false;
                }
                kotlinx.coroutines.internal.t tVar2 = new kotlinx.coroutines.internal.t(8, true);
                tVar2.a((Runnable) obj);
                tVar2.a(runnable);
                if (androidx.concurrent.futures.b.a(f28818t, this, obj, tVar2)) {
                    return true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean a0() {
        return this._isCompleted;
    }

    private final void e0() {
        a aVarI;
        c.a();
        long jNanoTime = System.nanoTime();
        while (true) {
            b bVar = (b) this._delayed;
            if (bVar == null || (aVarI = bVar.i()) == null) {
                return;
            } else {
                R(jNanoTime, aVarI);
            }
        }
    }

    private final int i0(long j10, a aVar) {
        if (a0()) {
            return 1;
        }
        b bVar = (b) this._delayed;
        if (bVar == null) {
            androidx.concurrent.futures.b.a(f28819u, this, null, new b(j10));
            Object obj = this._delayed;
            t9.m.b(obj);
            bVar = (b) obj;
        }
        return aVar.l(j10, bVar, this);
    }

    private final void j0(boolean z10) {
        this._isCompleted = z10 ? 1 : 0;
    }

    private final boolean l0(a aVar) {
        b bVar = (b) this._delayed;
        return (bVar != null ? bVar.e() : null) == aVar;
    }

    @Override // da.h1
    protected long I() {
        a aVarE;
        if (super.I() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof kotlinx.coroutines.internal.t)) {
                return obj == l1.f28828b ? Long.MAX_VALUE : 0L;
            }
            if (!((kotlinx.coroutines.internal.t) obj).g()) {
                return 0L;
            }
        }
        b bVar = (b) this._delayed;
        if (bVar == null || (aVarE = bVar.e()) == null) {
            return Long.MAX_VALUE;
        }
        long j10 = aVarE.f28820o;
        c.a();
        return y9.l.b(j10 - System.nanoTime(), 0L);
    }

    @Override // da.h1
    public long N() {
        a aVarH;
        if (O()) {
            return 0L;
        }
        b bVar = (b) this._delayed;
        if (bVar != null && !bVar.d()) {
            c.a();
            long jNanoTime = System.nanoTime();
            do {
                synchronized (bVar) {
                    a aVarB = bVar.b();
                    if (aVarB != null) {
                        a aVar = aVarB;
                        aVarH = aVar.m(jNanoTime) ? Z(aVar) : false ? bVar.h(0) : null;
                    }
                }
            } while (aVarH != null);
        }
        Runnable runnableX = X();
        if (runnableX == null) {
            return I();
        }
        runnableX.run();
        return 0L;
    }

    public void Y(Runnable runnable) {
        if (Z(runnable)) {
            S();
        } else {
            u0.f28863v.Y(runnable);
        }
    }

    protected boolean c0() {
        if (!M()) {
            return false;
        }
        b bVar = (b) this._delayed;
        if (bVar != null && !bVar.d()) {
            return false;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.t) {
                return ((kotlinx.coroutines.internal.t) obj).g();
            }
            if (obj != l1.f28828b) {
                return false;
            }
        }
        return true;
    }

    protected final void f0() {
        this._queue = null;
        this._delayed = null;
    }

    public final void g0(long j10, a aVar) {
        int iI0 = i0(j10, aVar);
        if (iI0 == 0) {
            if (l0(aVar)) {
                S();
            }
        } else if (iI0 == 1) {
            R(j10, aVar);
        } else if (iI0 != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    @Override // da.i0
    public final void m(k9.g gVar, Runnable runnable) {
        Y(runnable);
    }

    @Override // da.h1
    public void shutdown() {
        s2.f28858a.c();
        j0(true);
        U();
        while (N() <= 0) {
        }
        e0();
    }
}
