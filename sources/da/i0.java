package da;

import k9.e;
import k9.g;

/* JADX INFO: compiled from: CoroutineDispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class i0 extends k9.a implements k9.e {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f28816p = new a(null);

    /* JADX INFO: compiled from: CoroutineDispatcher.kt */
    public static final class a extends k9.b<k9.e, i0> {

        /* JADX INFO: renamed from: da.i0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CoroutineDispatcher.kt */
        static final class C0147a extends t9.n implements s9.l<g.b, i0> {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public static final C0147a f28817o = new C0147a();

            C0147a() {
                super(1);
            }

            @Override // s9.l
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final i0 invoke(g.b bVar) {
                if (bVar instanceof i0) {
                    return (i0) bVar;
                }
                return null;
            }
        }

        private a() {
            super(k9.e.f31632n, C0147a.f28817o);
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public i0() {
        super(k9.e.f31632n);
    }

    @Override // k9.a, k9.g.b, k9.g
    public <E extends g.b> E b(g.c<E> cVar) {
        return (E) e.a.a(this, cVar);
    }

    @Override // k9.e
    public final void h(k9.d<?> dVar) {
        ((kotlinx.coroutines.internal.h) dVar).p();
    }

    public abstract void m(k9.g gVar, Runnable runnable);

    public boolean o(k9.g gVar) {
        return true;
    }

    @Override // k9.e
    public final <T> k9.d<T> p(k9.d<? super T> dVar) {
        return new kotlinx.coroutines.internal.h(this, dVar);
    }

    @Override // k9.a, k9.g
    public k9.g q(g.c<?> cVar) {
        return e.a.b(this, cVar);
    }

    public String toString() {
        return t0.a(this) + '@' + t0.b(this);
    }

    public i0 w(int i10) {
        kotlinx.coroutines.internal.o.a(i10);
        return new kotlinx.coroutines.internal.n(this, i10);
    }
}
