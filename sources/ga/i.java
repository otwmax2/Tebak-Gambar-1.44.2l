package ga;

import da.b2;
import h9.t;
import k9.g;
import s9.p;
import t9.m;
import t9.n;

/* JADX INFO: compiled from: SafeCollector.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i<T> extends m9.d implements kotlinx.coroutines.flow.c<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final kotlinx.coroutines.flow.c<T> f30049r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final k9.g f30050s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f30051t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private k9.g f30052u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private k9.d<? super t> f30053v;

    /* JADX INFO: compiled from: SafeCollector.kt */
    static final class a extends n implements p<Integer, g.b, Integer> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final a f30054o = new a();

        a() {
            super(2);
        }

        public final Integer c(int i10, g.b bVar) {
            return Integer.valueOf(i10 + 1);
        }

        @Override // s9.p
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, g.b bVar) {
            return c(num.intValue(), bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(kotlinx.coroutines.flow.c<? super T> cVar, k9.g gVar) {
        super(g.f30044o, k9.h.f31635o);
        this.f30049r = cVar;
        this.f30050s = gVar;
        this.f30051t = ((Number) gVar.s(0, a.f30054o)).intValue();
    }

    private final void l(k9.g gVar, k9.g gVar2, T t10) {
        if (gVar2 instanceof e) {
            p((e) gVar2, t10);
        }
        k.a(this, gVar);
    }

    private final Object n(k9.d<? super t> dVar, T t10) {
        k9.g context = dVar.getContext();
        b2.e(context);
        k9.g gVar = this.f30052u;
        if (gVar != context) {
            l(context, gVar, t10);
            this.f30052u = context;
        }
        this.f30053v = dVar;
        Object objB = j.f30055a.b(this.f30049r, t10, this);
        if (!m.a(objB, l9.d.c())) {
            this.f30053v = null;
        }
        return objB;
    }

    private final void p(e eVar, Object obj) {
        throw new IllegalStateException(ba.i.e("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + eVar.f30042o + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // kotlinx.coroutines.flow.c
    public Object c(T t10, k9.d<? super t> dVar) {
        try {
            Object objN = n(dVar, t10);
            if (objN == l9.d.c()) {
                m9.h.c(dVar);
            }
            return objN == l9.d.c() ? objN : t.f30301a;
        } catch (Throwable th) {
            this.f30052u = new e(th, dVar.getContext());
            throw th;
        }
    }

    @Override // m9.a, m9.e
    public m9.e e() {
        k9.d<? super t> dVar = this.f30053v;
        if (dVar instanceof m9.e) {
            return (m9.e) dVar;
        }
        return null;
    }

    @Override // m9.d, k9.d
    public k9.g getContext() {
        k9.g gVar = this.f30052u;
        return gVar == null ? k9.h.f31635o : gVar;
    }

    @Override // m9.a
    public Object i(Object obj) {
        Throwable thB = h9.n.b(obj);
        if (thB != null) {
            this.f30052u = new e(thB, getContext());
        }
        k9.d<? super t> dVar = this.f30053v;
        if (dVar != null) {
            dVar.g(obj);
        }
        return l9.d.c();
    }

    @Override // m9.d, m9.a
    public void j() {
        super.j();
    }

    @Override // m9.a, m9.e
    public StackTraceElement o() {
        return null;
    }
}
