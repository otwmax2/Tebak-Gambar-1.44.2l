package k9;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.vungle.mediation.BuildConfig;
import h9.t;
import java.io.Serializable;
import k9.g;
import s9.p;
import t9.m;
import t9.n;
import t9.x;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements g, Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final g f31625o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final g.b f31626p;

    /* JADX INFO: compiled from: CoroutineContextImpl.kt */
    private static final class a implements Serializable {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final C0189a f31627p = new C0189a(null);
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final g[] f31628o;

        /* JADX INFO: renamed from: k9.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CoroutineContextImpl.kt */
        public static final class C0189a {
            private C0189a() {
            }

            public /* synthetic */ C0189a(t9.g gVar) {
                this();
            }
        }

        public a(g[] gVarArr) {
            m.e(gVarArr, "elements");
            this.f31628o = gVarArr;
        }

        private final Object readResolve() {
            g[] gVarArr = this.f31628o;
            g gVarD = h.f31635o;
            for (g gVar : gVarArr) {
                gVarD = gVarD.d(gVar);
            }
            return gVarD;
        }
    }

    /* JADX INFO: compiled from: CoroutineContextImpl.kt */
    static final class b extends n implements p<String, g.b, String> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final b f31629o = new b();

        b() {
            super(2);
        }

        @Override // s9.p
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke(String str, g.b bVar) {
            m.e(str, "acc");
            m.e(bVar, "element");
            if (str.length() == 0) {
                return bVar.toString();
            }
            return str + ", " + bVar;
        }
    }

    /* JADX INFO: renamed from: k9.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CoroutineContextImpl.kt */
    static final class C0190c extends n implements p<t, g.b, t> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ g[] f31630o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ x f31631p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0190c(g[] gVarArr, x xVar) {
            super(2);
            this.f31630o = gVarArr;
            this.f31631p = xVar;
        }

        public final void c(t tVar, g.b bVar) {
            m.e(tVar, "<anonymous parameter 0>");
            m.e(bVar, "element");
            g[] gVarArr = this.f31630o;
            x xVar = this.f31631p;
            int i10 = xVar.f35551o;
            xVar.f35551o = i10 + 1;
            gVarArr[i10] = bVar;
        }

        @Override // s9.p
        public /* bridge */ /* synthetic */ t invoke(t tVar, g.b bVar) {
            c(tVar, bVar);
            return t.f30301a;
        }
    }

    public c(g gVar, g.b bVar) {
        m.e(gVar, ViewHierarchyConstants.DIMENSION_LEFT_KEY);
        m.e(bVar, "element");
        this.f31625o = gVar;
        this.f31626p = bVar;
    }

    private final boolean a(g.b bVar) {
        return m.a(b(bVar.getKey()), bVar);
    }

    private final boolean e(c cVar) {
        while (a(cVar.f31626p)) {
            g gVar = cVar.f31625o;
            if (!(gVar instanceof c)) {
                m.c(gVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return a((g.b) gVar);
            }
            cVar = (c) gVar;
        }
        return false;
    }

    private final int g() {
        int i10 = 2;
        c cVar = this;
        while (true) {
            g gVar = cVar.f31625o;
            cVar = gVar instanceof c ? (c) gVar : null;
            if (cVar == null) {
                return i10;
            }
            i10++;
        }
    }

    private final Object writeReplace() {
        int iG = g();
        g[] gVarArr = new g[iG];
        x xVar = new x();
        s(t.f30301a, new C0190c(gVarArr, xVar));
        if (xVar.f35551o == iG) {
            return new a(gVarArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // k9.g
    public <E extends g.b> E b(g.c<E> cVar) {
        m.e(cVar, SDKConstants.PARAM_KEY);
        c cVar2 = this;
        while (true) {
            E e10 = (E) cVar2.f31626p.b(cVar);
            if (e10 != null) {
                return e10;
            }
            g gVar = cVar2.f31625o;
            if (!(gVar instanceof c)) {
                return (E) gVar.b(cVar);
            }
            cVar2 = (c) gVar;
        }
    }

    @Override // k9.g
    public g d(g gVar) {
        return g.a.a(this, gVar);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (cVar.g() != g() || !cVar.e(this)) {
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f31625o.hashCode() + this.f31626p.hashCode();
    }

    @Override // k9.g
    public g q(g.c<?> cVar) {
        m.e(cVar, SDKConstants.PARAM_KEY);
        if (this.f31626p.b(cVar) != null) {
            return this.f31625o;
        }
        g gVarQ = this.f31625o.q(cVar);
        return gVarQ == this.f31625o ? this : gVarQ == h.f31635o ? this.f31626p : new c(gVarQ, this.f31626p);
    }

    @Override // k9.g
    public <R> R s(R r10, p<? super R, ? super g.b, ? extends R> pVar) {
        m.e(pVar, "operation");
        return pVar.invoke((Object) this.f31625o.s(r10, pVar), this.f31626p);
    }

    public String toString() {
        return '[' + ((String) s(BuildConfig.FLAVOR, b.f31629o)) + ']';
    }
}
