package kotlinx.coroutines.internal;

/* JADX INFO: compiled from: OnUndeliveredElement.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class y {

    /* JADX INFO: compiled from: OnUndeliveredElement.kt */
    static final class a extends t9.n implements s9.l<Throwable, h9.t> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ s9.l<E, h9.t> f31790o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ E f31791p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ k9.g f31792q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(s9.l<? super E, h9.t> lVar, E e10, k9.g gVar) {
            super(1);
            this.f31790o = lVar;
            this.f31791p = e10;
            this.f31792q = gVar;
        }

        public final void c(Throwable th) {
            y.b(this.f31790o, this.f31791p, this.f31792q);
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
            c(th);
            return h9.t.f30301a;
        }
    }

    public static final <E> s9.l<Throwable, h9.t> a(s9.l<? super E, h9.t> lVar, E e10, k9.g gVar) {
        return new a(lVar, e10, gVar);
    }

    public static final <E> void b(s9.l<? super E, h9.t> lVar, E e10, k9.g gVar) {
        m0 m0VarC = c(lVar, e10, null);
        if (m0VarC != null) {
            da.l0.a(gVar, m0VarC);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> m0 c(s9.l<? super E, h9.t> lVar, E e10, m0 m0Var) {
        try {
            lVar.invoke(e10);
        } catch (Throwable th) {
            if (m0Var == null || m0Var.getCause() == th) {
                return new m0("Exception in undelivered element handler for " + e10, th);
            }
            h9.b.a(m0Var, th);
        }
        return m0Var;
    }

    public static /* synthetic */ m0 d(s9.l lVar, Object obj, m0 m0Var, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            m0Var = null;
        }
        return c(lVar, obj, m0Var);
    }
}
