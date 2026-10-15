package fa;

import com.vungle.mediation.BuildConfig;
import da.s0;
import da.t0;
import h9.t;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.internal.r;
import t9.c0;

/* JADX INFO: compiled from: AbstractChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c<E> implements s<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f29617d = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "onCloseHandler");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final s9.l<E, t> f29618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.coroutines.internal.p f29619c = new kotlinx.coroutines.internal.p();
    private volatile /* synthetic */ Object onCloseHandler = null;

    /* JADX INFO: compiled from: AbstractChannel.kt */
    public static final class a<E> extends r {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final E f29620r;

        public a(E e10) {
            this.f29620r = e10;
        }

        @Override // fa.r
        public void C() {
        }

        @Override // fa.r
        public Object D() {
            return this.f29620r;
        }

        @Override // fa.r
        public e0 E(r.b bVar) {
            return da.o.f28842a;
        }

        @Override // kotlinx.coroutines.internal.r
        public String toString() {
            return "SendBuffered@" + t0.b(this) + '(' + this.f29620r + ')';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(s9.l<? super E, t> lVar) {
        this.f29618b = lVar;
    }

    private final int e() {
        kotlinx.coroutines.internal.p pVar = this.f29619c;
        int i10 = 0;
        for (kotlinx.coroutines.internal.r rVarS = (kotlinx.coroutines.internal.r) pVar.r(); !t9.m.a(rVarS, pVar); rVarS = rVarS.s()) {
            if (rVarS instanceof kotlinx.coroutines.internal.r) {
                i10++;
            }
        }
        return i10;
    }

    private final String i() {
        String string;
        kotlinx.coroutines.internal.r rVarS = this.f29619c.s();
        if (rVarS == this.f29619c) {
            return "EmptyQueue";
        }
        if (rVarS instanceof i) {
            string = rVarS.toString();
        } else if (rVarS instanceof n) {
            string = "ReceiveQueued";
        } else if (rVarS instanceof r) {
            string = "SendQueued";
        } else {
            string = "UNEXPECTED:" + rVarS;
        }
        kotlinx.coroutines.internal.r rVarT = this.f29619c.t();
        if (rVarT == rVarS) {
            return string;
        }
        String str = string + ",queueSize=" + e();
        if (!(rVarT instanceof i)) {
            return str;
        }
        return str + ",closedForSend=" + rVarT;
    }

    private final void j(i<?> iVar) {
        Object objB = kotlinx.coroutines.internal.m.b(null, 1, null);
        while (true) {
            kotlinx.coroutines.internal.r rVarT = iVar.t();
            n nVar = rVarT instanceof n ? (n) rVarT : null;
            if (nVar == null) {
                break;
            } else if (nVar.x()) {
                objB = kotlinx.coroutines.internal.m.c(objB, nVar);
            } else {
                nVar.u();
            }
        }
        if (objB != null) {
            if (objB instanceof ArrayList) {
                ArrayList arrayList = (ArrayList) objB;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    ((n) arrayList.get(size)).E(iVar);
                }
            } else {
                ((n) objB).E(iVar);
            }
        }
        n(iVar);
    }

    private final Throwable k(i<?> iVar) {
        j(iVar);
        return iVar.J();
    }

    private final void l(Throwable th) {
        e0 e0Var;
        Object obj = this.onCloseHandler;
        if (obj == null || obj == (e0Var = b.f29616f) || !androidx.concurrent.futures.b.a(f29617d, this, obj, e0Var)) {
            return;
        }
        ((s9.l) c0.b(obj, 1)).invoke(th);
    }

    @Override // fa.s
    public boolean b(Throwable th) {
        boolean z10;
        i<?> iVar = new i<>(th);
        kotlinx.coroutines.internal.r rVar = this.f29619c;
        while (true) {
            kotlinx.coroutines.internal.r rVarT = rVar.t();
            z10 = true;
            if (!(!(rVarT instanceof i))) {
                z10 = false;
                break;
            }
            if (rVarT.m(iVar, rVar)) {
                break;
            }
        }
        if (!z10) {
            iVar = (i) this.f29619c.t();
        }
        j(iVar);
        if (z10) {
            l(th);
        }
        return z10;
    }

    @Override // fa.s
    public final Object d(E e10) {
        Object objM = m(e10);
        if (objM == b.f29612b) {
            return h.f29634b.c(t.f30301a);
        }
        if (objM == b.f29613c) {
            i<?> iVarG = g();
            return iVarG == null ? h.f29634b.b() : h.f29634b.a(k(iVarG));
        }
        if (objM instanceof i) {
            return h.f29634b.a(k((i) objM));
        }
        throw new IllegalStateException(("trySend returned " + objM).toString());
    }

    protected String f() {
        return BuildConfig.FLAVOR;
    }

    protected final i<?> g() {
        kotlinx.coroutines.internal.r rVarT = this.f29619c.t();
        i<?> iVar = rVarT instanceof i ? (i) rVarT : null;
        if (iVar == null) {
            return null;
        }
        j(iVar);
        return iVar;
    }

    protected final kotlinx.coroutines.internal.p h() {
        return this.f29619c;
    }

    protected Object m(E e10) {
        p<E> pVarP;
        e0 e0VarJ;
        do {
            pVarP = p();
            if (pVarP == null) {
                return b.f29613c;
            }
            e0VarJ = pVarP.j(e10, null);
        } while (e0VarJ == null);
        if (s0.a()) {
            if (!(e0VarJ == da.o.f28842a)) {
                throw new AssertionError();
            }
        }
        pVarP.g(e10);
        return pVarP.d();
    }

    protected void n(kotlinx.coroutines.internal.r rVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final p<?> o(E e10) {
        kotlinx.coroutines.internal.r rVarT;
        kotlinx.coroutines.internal.p pVar = this.f29619c;
        a aVar = new a(e10);
        do {
            rVarT = pVar.t();
            if (rVarT instanceof p) {
                return (p) rVarT;
            }
        } while (!rVarT.m(aVar, pVar));
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.r] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected fa.p<E> p() {
        /*
            r4 = this;
            kotlinx.coroutines.internal.p r0 = r4.f29619c
        L2:
            java.lang.Object r1 = r0.r()
            kotlinx.coroutines.internal.r r1 = (kotlinx.coroutines.internal.r) r1
            r2 = 0
            if (r1 != r0) goto Ld
        Lb:
            r1 = r2
            goto L26
        Ld:
            boolean r3 = r1 instanceof fa.p
            if (r3 != 0) goto L12
            goto Lb
        L12:
            r2 = r1
            fa.p r2 = (fa.p) r2
            boolean r2 = r2 instanceof fa.i
            if (r2 == 0) goto L20
            boolean r2 = r1.w()
            if (r2 != 0) goto L20
            goto L26
        L20:
            kotlinx.coroutines.internal.r r2 = r1.z()
            if (r2 != 0) goto L29
        L26:
            fa.p r1 = (fa.p) r1
            return r1
        L29:
            r2.v()
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: fa.c.p():fa.p");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        r1 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final fa.r q() {
        /*
            r4 = this;
            kotlinx.coroutines.internal.p r0 = r4.f29619c
        L2:
            java.lang.Object r1 = r0.r()
            kotlinx.coroutines.internal.r r1 = (kotlinx.coroutines.internal.r) r1
            r2 = 0
            if (r1 != r0) goto Ld
        Lb:
            r1 = r2
            goto L26
        Ld:
            boolean r3 = r1 instanceof fa.r
            if (r3 != 0) goto L12
            goto Lb
        L12:
            r2 = r1
            fa.r r2 = (fa.r) r2
            boolean r2 = r2 instanceof fa.i
            if (r2 == 0) goto L20
            boolean r2 = r1.w()
            if (r2 != 0) goto L20
            goto L26
        L20:
            kotlinx.coroutines.internal.r r2 = r1.z()
            if (r2 != 0) goto L29
        L26:
            fa.r r1 = (fa.r) r1
            return r1
        L29:
            r2.v()
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: fa.c.q():fa.r");
    }

    public String toString() {
        return t0.a(this) + '@' + t0.b(this) + '{' + i() + '}' + f();
    }
}
