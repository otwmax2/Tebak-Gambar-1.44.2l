package kotlinx.coroutines.internal;

import da.t0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes2.dex */
public class r {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f31769o = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_next");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f31770p = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_prev");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31771q = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_removedRef");
    volatile /* synthetic */ Object _next = this;
    volatile /* synthetic */ Object _prev = this;
    private volatile /* synthetic */ Object _removedRef = null;

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static abstract class a extends kotlinx.coroutines.internal.c<r> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r f31772b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public r f31773c;

        public a(r rVar) {
            this.f31772b = rVar;
        }

        @Override // kotlinx.coroutines.internal.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(r rVar, Object obj) {
            boolean z10 = obj == null;
            r rVar2 = z10 ? this.f31772b : this.f31773c;
            if (rVar2 != null && androidx.concurrent.futures.b.a(r.f31769o, rVar, this, rVar2) && z10) {
                r rVar3 = this.f31772b;
                r rVar4 = this.f31773c;
                t9.m.b(rVar4);
                rVar3.q(rVar4);
            }
        }
    }

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static final class b extends z {
    }

    private final a0 A() {
        a0 a0Var = (a0) this._removedRef;
        if (a0Var != null) {
            return a0Var;
        }
        a0 a0Var2 = new a0(this);
        f31771q.lazySet(this, a0Var2);
        return a0Var2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0048, code lost:
    
        if (androidx.concurrent.futures.b.a(kotlinx.coroutines.internal.r.f31769o, r3, r2, ((kotlinx.coroutines.internal.a0) r4).f31718a) != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final kotlinx.coroutines.internal.r o(kotlinx.coroutines.internal.z r8) {
        /*
            r7 = this;
        L0:
            java.lang.Object r0 = r7._prev
            kotlinx.coroutines.internal.r r0 = (kotlinx.coroutines.internal.r) r0
            r1 = 0
            r2 = r0
        L6:
            r3 = r1
        L7:
            java.lang.Object r4 = r2._next
            if (r4 != r7) goto L18
            if (r0 != r2) goto Le
            return r2
        Le:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.internal.r.f31770p
            boolean r0 = androidx.concurrent.futures.b.a(r1, r7, r0, r2)
            if (r0 != 0) goto L17
            goto L0
        L17:
            return r2
        L18:
            boolean r5 = r7.w()
            if (r5 == 0) goto L1f
            return r1
        L1f:
            if (r4 != r8) goto L22
            return r2
        L22:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.z
            if (r5 == 0) goto L38
            if (r8 == 0) goto L32
            r0 = r4
            kotlinx.coroutines.internal.z r0 = (kotlinx.coroutines.internal.z) r0
            boolean r0 = r8.b(r0)
            if (r0 == 0) goto L32
            return r1
        L32:
            kotlinx.coroutines.internal.z r4 = (kotlinx.coroutines.internal.z) r4
            r4.c(r2)
            goto L0
        L38:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.a0
            if (r5 == 0) goto L52
            if (r3 == 0) goto L4d
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.internal.r.f31769o
            kotlinx.coroutines.internal.a0 r4 = (kotlinx.coroutines.internal.a0) r4
            kotlinx.coroutines.internal.r r4 = r4.f31718a
            boolean r2 = androidx.concurrent.futures.b.a(r5, r3, r2, r4)
            if (r2 != 0) goto L4b
            goto L0
        L4b:
            r2 = r3
            goto L6
        L4d:
            java.lang.Object r2 = r2._prev
            kotlinx.coroutines.internal.r r2 = (kotlinx.coroutines.internal.r) r2
            goto L7
        L52:
            r3 = r4
            kotlinx.coroutines.internal.r r3 = (kotlinx.coroutines.internal.r) r3
            r6 = r3
            r3 = r2
            r2 = r6
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.r.o(kotlinx.coroutines.internal.z):kotlinx.coroutines.internal.r");
    }

    private final r p(r rVar) {
        while (rVar.w()) {
            rVar = (r) rVar._prev;
        }
        return rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(r rVar) {
        r rVar2;
        do {
            rVar2 = (r) rVar._prev;
            if (r() != rVar) {
                return;
            }
        } while (!androidx.concurrent.futures.b.a(f31770p, rVar, rVar2, this));
        if (w()) {
            rVar.o(null);
        }
    }

    public final int B(r rVar, r rVar2, a aVar) {
        f31770p.lazySet(rVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31769o;
        atomicReferenceFieldUpdater.lazySet(rVar, rVar2);
        aVar.f31773c = rVar2;
        if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, rVar2, aVar)) {
            return aVar.c(this) == null ? 1 : 2;
        }
        return 0;
    }

    public final void l(r rVar) {
        while (!t().m(rVar, this)) {
        }
    }

    public final boolean m(r rVar, r rVar2) {
        f31770p.lazySet(rVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31769o;
        atomicReferenceFieldUpdater.lazySet(rVar, rVar2);
        if (!androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, rVar2, rVar)) {
            return false;
        }
        rVar.q(rVar2);
        return true;
    }

    public final boolean n(r rVar) {
        f31770p.lazySet(rVar, this);
        f31769o.lazySet(rVar, this);
        while (r() == this) {
            if (androidx.concurrent.futures.b.a(f31769o, this, this, rVar)) {
                rVar.q(this);
                return true;
            }
        }
        return false;
    }

    public final Object r() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof z)) {
                return obj;
            }
            ((z) obj).c(this);
        }
    }

    public final r s() {
        return q.b(r());
    }

    public final r t() {
        r rVarO = o(null);
        return rVarO == null ? p((r) this._prev) : rVarO;
    }

    public String toString() {
        return new t9.q(this) { // from class: kotlinx.coroutines.internal.r.c
            @Override // z9.e
            public Object get() {
                return t0.a(this.f35531p);
            }
        } + '@' + t0.b(this);
    }

    public final void u() {
        ((a0) r()).f31718a.v();
    }

    public final void v() {
        r rVar = this;
        while (true) {
            Object objR = rVar.r();
            if (!(objR instanceof a0)) {
                rVar.o(null);
                return;
            }
            rVar = ((a0) objR).f31718a;
        }
    }

    public boolean w() {
        return r() instanceof a0;
    }

    public boolean x() {
        return z() == null;
    }

    public final r y() {
        while (true) {
            r rVar = (r) r();
            if (rVar == this) {
                return null;
            }
            if (rVar.x()) {
                return rVar;
            }
            rVar.u();
        }
    }

    public final r z() {
        Object objR;
        r rVar;
        do {
            objR = r();
            if (objR instanceof a0) {
                return ((a0) objR).f31718a;
            }
            if (objR == this) {
                return (r) objR;
            }
            rVar = (r) objR;
        } while (!androidx.concurrent.futures.b.a(f31769o, this, objR, rVar.A()));
        rVar.o(null);
        return null;
    }
}
