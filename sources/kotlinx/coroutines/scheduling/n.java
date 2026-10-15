package kotlinx.coroutines.scheduling;

import da.s0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: WorkQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31841b = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "lastScheduledTask");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f31842c = AtomicIntegerFieldUpdater.newUpdater(n.class, "producerIndex");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f31843d = AtomicIntegerFieldUpdater.newUpdater(n.class, "consumerIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f31844e = AtomicIntegerFieldUpdater.newUpdater(n.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReferenceArray<h> f31845a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public static /* synthetic */ h b(n nVar, h hVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return nVar.a(hVar, z10);
    }

    private final h c(h hVar) {
        if (hVar.f31830p.b() == 1) {
            f31844e.incrementAndGet(this);
        }
        if (e() == 127) {
            return hVar;
        }
        int i10 = this.producerIndex & 127;
        while (this.f31845a.get(i10) != null) {
            Thread.yield();
        }
        this.f31845a.lazySet(i10, hVar);
        f31842c.incrementAndGet(this);
        return null;
    }

    private final void d(h hVar) {
        if (hVar != null) {
            if (hVar.f31830p.b() == 1) {
                int iDecrementAndGet = f31844e.decrementAndGet(this);
                if (s0.a()) {
                    if (!(iDecrementAndGet >= 0)) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    private final h i() {
        h andSet;
        while (true) {
            int i10 = this.consumerIndex;
            if (i10 - this.producerIndex == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (f31843d.compareAndSet(this, i10, i10 + 1) && (andSet = this.f31845a.getAndSet(i11, null)) != null) {
                d(andSet);
                return andSet;
            }
        }
    }

    private final boolean j(d dVar) {
        h hVarI = i();
        if (hVarI == null) {
            return false;
        }
        dVar.a(hVarI);
        return true;
    }

    private final long m(n nVar, boolean z10) {
        h hVar;
        do {
            hVar = (h) nVar.lastScheduledTask;
            if (hVar == null) {
                return -2L;
            }
            if (z10) {
                if (!(hVar.f31830p.b() == 1)) {
                    return -2L;
                }
            }
            long jA = l.f31837e.a() - hVar.f31829o;
            long j10 = l.f31833a;
            if (jA < j10) {
                return j10 - jA;
            }
        } while (!androidx.concurrent.futures.b.a(f31841b, nVar, hVar, null));
        b(this, hVar, false, 2, null);
        return -1L;
    }

    public final h a(h hVar, boolean z10) {
        if (z10) {
            return c(hVar);
        }
        h hVar2 = (h) f31841b.getAndSet(this, hVar);
        if (hVar2 == null) {
            return null;
        }
        return c(hVar2);
    }

    public final int e() {
        return this.producerIndex - this.consumerIndex;
    }

    public final int f() {
        return this.lastScheduledTask != null ? e() + 1 : e();
    }

    public final void g(d dVar) {
        h hVar = (h) f31841b.getAndSet(this, null);
        if (hVar != null) {
            dVar.a(hVar);
        }
        while (j(dVar)) {
        }
    }

    public final h h() {
        h hVar = (h) f31841b.getAndSet(this, null);
        return hVar == null ? i() : hVar;
    }

    public final long k(n nVar) {
        if (s0.a()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        int i10 = nVar.producerIndex;
        AtomicReferenceArray<h> atomicReferenceArray = nVar.f31845a;
        for (int i11 = nVar.consumerIndex; i11 != i10; i11++) {
            int i12 = i11 & 127;
            if (nVar.blockingTasksInBuffer == 0) {
                break;
            }
            h hVar = atomicReferenceArray.get(i12);
            if (hVar != null) {
                if ((hVar.f31830p.b() == 1) && atomicReferenceArray.compareAndSet(i12, hVar, null)) {
                    f31844e.decrementAndGet(nVar);
                    b(this, hVar, false, 2, null);
                    return -1L;
                }
            }
        }
        return m(nVar, true);
    }

    public final long l(n nVar) {
        if (s0.a()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        h hVarI = nVar.i();
        if (hVarI == null) {
            return m(nVar, false);
        }
        h hVarB = b(this, hVarI, false, 2, null);
        if (!s0.a()) {
            return -1L;
        }
        if (hVarB == null) {
            return -1L;
        }
        throw new AssertionError();
    }
}
