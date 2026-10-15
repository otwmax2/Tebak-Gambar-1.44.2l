package fa;

import da.s0;
import da.t0;
import h9.n;
import h9.t;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.internal.r;
import kotlinx.coroutines.internal.y;

/* JADX INFO: compiled from: AbstractChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<E> extends fa.c<E> implements f<E> {

    /* JADX INFO: renamed from: fa.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractChannel.kt */
    private static class C0160a<E> extends n<E> {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final da.m<Object> f29605r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final int f29606s;

        public C0160a(da.m<Object> mVar, int i10) {
            this.f29605r = mVar;
            this.f29606s = i10;
        }

        @Override // fa.n
        public void E(i<?> iVar) {
            if (this.f29606s != 1) {
                da.m<Object> mVar = this.f29605r;
                n.a aVar = h9.n.f30295o;
                mVar.g(h9.n.a(h9.o.a(iVar.I())));
            } else {
                da.m<Object> mVar2 = this.f29605r;
                h hVarB = h.b(h.f29634b.a(iVar.f29638r));
                n.a aVar2 = h9.n.f30295o;
                mVar2.g(h9.n.a(hVarB));
            }
        }

        public final Object F(E e10) {
            return this.f29606s == 1 ? h.b(h.f29634b.c(e10)) : e10;
        }

        @Override // fa.p
        public void g(E e10) {
            this.f29605r.B(da.o.f28842a);
        }

        @Override // fa.p
        public e0 j(E e10, r.b bVar) {
            Object objM = this.f29605r.m(F(e10), null, D(e10));
            if (objM == null) {
                return null;
            }
            if (s0.a()) {
                if (!(objM == da.o.f28842a)) {
                    throw new AssertionError();
                }
            }
            return da.o.f28842a;
        }

        @Override // kotlinx.coroutines.internal.r
        public String toString() {
            return "ReceiveElement@" + t0.b(this) + "[receiveMode=" + this.f29606s + ']';
        }
    }

    /* JADX INFO: compiled from: AbstractChannel.kt */
    private static final class b<E> extends C0160a<E> {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final s9.l<E, t> f29607t;

        /* JADX WARN: Multi-variable type inference failed */
        public b(da.m<Object> mVar, int i10, s9.l<? super E, t> lVar) {
            super(mVar, i10);
            this.f29607t = lVar;
        }

        @Override // fa.n
        public s9.l<Throwable, t> D(E e10) {
            return y.a(this.f29607t, e10, this.f29605r.getContext());
        }
    }

    /* JADX INFO: compiled from: AbstractChannel.kt */
    private final class c extends da.e {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final n<?> f29608o;

        public c(n<?> nVar) {
            this.f29608o = nVar;
        }

        @Override // da.l
        public void c(Throwable th) {
            if (this.f29608o.x()) {
                a.this.x();
            }
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ t invoke(Throwable th) {
            c(th);
            return t.f30301a;
        }

        public String toString() {
            return "RemoveReceiveOnCancel[" + this.f29608o + ']';
        }
    }

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static final class d extends r.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ a f29610d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlinx.coroutines.internal.r rVar, a aVar) {
            super(rVar);
            this.f29610d = aVar;
        }

        @Override // kotlinx.coroutines.internal.c
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Object g(kotlinx.coroutines.internal.r rVar) {
            if (this.f29610d.w()) {
                return null;
            }
            return kotlinx.coroutines.internal.q.a();
        }
    }

    public a(s9.l<? super E, t> lVar) {
        super(lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <R> Object A(int i10, k9.d<? super R> dVar) {
        da.n nVarB = da.p.b(l9.c.b(dVar));
        C0160a c0160a = this.f29618b == null ? new C0160a(nVarB, i10) : new b(nVarB, i10, this.f29618b);
        while (true) {
            if (t(c0160a)) {
                B(nVarB, c0160a);
                break;
            }
            Object objZ = z();
            if (objZ instanceof i) {
                c0160a.E((i) objZ);
                break;
            }
            if (objZ != fa.b.f29614d) {
                nVarB.x(c0160a.F(objZ), c0160a.D(objZ));
                break;
            }
        }
        Object objT = nVarB.t();
        if (objT == l9.d.c()) {
            m9.h.c(dVar);
        }
        return objT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(da.m<?> mVar, n<?> nVar) {
        mVar.z(new c(nVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean t(n<? super E> nVar) {
        boolean zU = u(nVar);
        if (zU) {
            y();
        }
        return zU;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // fa.o
    public final Object a() {
        Object objZ = z();
        return objZ == fa.b.f29614d ? h.f29634b.b() : objZ instanceof i ? h.f29634b.a(((i) objZ).f29638r) : h.f29634b.c(objZ);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // fa.o
    public final Object c(k9.d<? super E> dVar) {
        Object objZ = z();
        return (objZ == fa.b.f29614d || (objZ instanceof i)) ? A(0, dVar) : objZ;
    }

    @Override // fa.c
    protected p<E> p() {
        p<E> pVarP = super.p();
        if (pVarP != null && !(pVarP instanceof i)) {
            x();
        }
        return pVarP;
    }

    protected boolean u(n<? super E> nVar) {
        int iB;
        kotlinx.coroutines.internal.r rVarT;
        if (!v()) {
            kotlinx.coroutines.internal.r rVarH = h();
            d dVar = new d(nVar, this);
            do {
                kotlinx.coroutines.internal.r rVarT2 = rVarH.t();
                if (!(!(rVarT2 instanceof r))) {
                    return false;
                }
                iB = rVarT2.B(nVar, rVarH, dVar);
                if (iB != 1) {
                }
            } while (iB != 2);
            return false;
        }
        kotlinx.coroutines.internal.r rVarH2 = h();
        do {
            rVarT = rVarH2.t();
            if (!(!(rVarT instanceof r))) {
                return false;
            }
        } while (!rVarT.m(nVar, rVarH2));
        return true;
    }

    protected abstract boolean v();

    protected abstract boolean w();

    protected void x() {
    }

    protected void y() {
    }

    protected Object z() {
        while (true) {
            r rVarQ = q();
            if (rVarQ == null) {
                return fa.b.f29614d;
            }
            e0 e0VarE = rVarQ.E(null);
            if (e0VarE != null) {
                if (s0.a()) {
                    if (!(e0VarE == da.o.f28842a)) {
                        throw new AssertionError();
                    }
                }
                rVarQ.C();
                return rVarQ.D();
            }
            rVarQ.F();
        }
    }
}
