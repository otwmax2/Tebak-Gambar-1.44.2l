package da;

import k9.g;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h0 {

    /* JADX INFO: compiled from: CoroutineContext.kt */
    static final class a extends t9.n implements s9.p<k9.g, g.b, k9.g> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final a f28809o = new a();

        a() {
            super(2);
        }

        @Override // s9.p
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final k9.g invoke(k9.g gVar, g.b bVar) {
            return bVar instanceof f0 ? gVar.d(((f0) bVar).r()) : gVar.d(bVar);
        }
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    static final class b extends t9.n implements s9.p<k9.g, g.b, k9.g> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ t9.y<k9.g> f28810o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ boolean f28811p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(t9.y<k9.g> yVar, boolean z10) {
            super(2);
            this.f28810o = yVar;
            this.f28811p = z10;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [T, k9.g] */
        @Override // s9.p
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final k9.g invoke(k9.g gVar, g.b bVar) {
            if (!(bVar instanceof f0)) {
                return gVar.d(bVar);
            }
            g.b bVarB = this.f28810o.f35552o.b(bVar.getKey());
            if (bVarB != null) {
                t9.y<k9.g> yVar = this.f28810o;
                yVar.f35552o = yVar.f35552o.q(bVar.getKey());
                return gVar.d(((f0) bVar).k(bVarB));
            }
            f0 f0VarR = (f0) bVar;
            if (this.f28811p) {
                f0VarR = f0VarR.r();
            }
            return gVar.d(f0VarR);
        }
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    static final class c extends t9.n implements s9.p<Boolean, g.b, Boolean> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final c f28812o = new c();

        c() {
            super(2);
        }

        public final Boolean c(boolean z10, g.b bVar) {
            return Boolean.valueOf(z10 || (bVar instanceof f0));
        }

        @Override // s9.p
        public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool, g.b bVar) {
            return c(bool.booleanValue(), bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    private static final k9.g a(k9.g gVar, k9.g gVar2, boolean z10) {
        boolean zC = c(gVar);
        boolean zC2 = c(gVar2);
        if (!zC && !zC2) {
            return gVar.d(gVar2);
        }
        t9.y yVar = new t9.y();
        yVar.f35552o = gVar2;
        k9.h hVar = k9.h.f31635o;
        k9.g gVar3 = (k9.g) gVar.s(hVar, new b(yVar, z10));
        if (zC2) {
            yVar.f35552o = ((k9.g) yVar.f35552o).s(hVar, a.f28809o);
        }
        return gVar3.d((k9.g) yVar.f35552o);
    }

    public static final String b(k9.g gVar) {
        m0 m0Var;
        String strM;
        if (!s0.c() || (m0Var = (m0) gVar.b(m0.f28829q)) == null) {
            return null;
        }
        n0 n0Var = (n0) gVar.b(n0.f28837q);
        if (n0Var == null || (strM = n0Var.m()) == null) {
            strM = "coroutine";
        }
        return strM + '#' + m0Var.m();
    }

    private static final boolean c(k9.g gVar) {
        return ((Boolean) gVar.s(Boolean.FALSE, c.f28812o)).booleanValue();
    }

    public static final k9.g d(o0 o0Var, k9.g gVar) {
        k9.g gVarA = a(o0Var.a(), gVar, true);
        k9.g gVarD = s0.c() ? gVarA.d(new m0(s0.b().incrementAndGet())) : gVarA;
        return (gVarA == d1.a() || gVarA.b(k9.e.f31632n) != null) ? gVarD : gVarD.d(d1.a());
    }

    public static final k9.g e(k9.g gVar, k9.g gVar2) {
        return !c(gVar2) ? gVar.d(gVar2) : a(gVar, gVar2, false);
    }

    public static final u2<?> f(m9.e eVar) {
        while (!(eVar instanceof z0) && (eVar = eVar.e()) != null) {
            if (eVar instanceof u2) {
                return (u2) eVar;
            }
        }
        return null;
    }

    public static final u2<?> g(k9.d<?> dVar, k9.g gVar, Object obj) {
        if (!(dVar instanceof m9.e)) {
            return null;
        }
        if (!(gVar.b(v2.f28871o) != null)) {
            return null;
        }
        u2<?> u2VarF = f((m9.e) dVar);
        if (u2VarF != null) {
            u2VarF.P0(gVar, obj);
        }
        return u2VarF;
    }
}
