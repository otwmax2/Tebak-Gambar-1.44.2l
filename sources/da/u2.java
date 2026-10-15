package da;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class u2<T> extends kotlinx.coroutines.internal.c0<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ThreadLocal<h9.m<k9.g, Object>> f28866r;

    /* JADX WARN: Illegal instructions before constructor call */
    public u2(k9.g gVar, k9.d<? super T> dVar) {
        v2 v2Var = v2.f28871o;
        super(gVar.b(v2Var) == null ? gVar.d(v2Var) : gVar, dVar);
        this.f28866r = new ThreadLocal<>();
        if (dVar.getContext().b(k9.e.f31632n) instanceof i0) {
            return;
        }
        Object objC = kotlinx.coroutines.internal.i0.c(gVar, null);
        kotlinx.coroutines.internal.i0.a(gVar, objC);
        P0(gVar, objC);
    }

    @Override // kotlinx.coroutines.internal.c0, da.a
    protected void J0(Object obj) {
        h9.m<k9.g, Object> mVar = this.f28866r.get();
        if (mVar != null) {
            kotlinx.coroutines.internal.i0.a(mVar.a(), mVar.b());
            this.f28866r.set(null);
        }
        Object objA = e0.a(obj, this.f31722q);
        k9.d<T> dVar = this.f31722q;
        k9.g context = dVar.getContext();
        Object objC = kotlinx.coroutines.internal.i0.c(context, null);
        u2<?> u2VarG = objC != kotlinx.coroutines.internal.i0.f31738a ? h0.g(dVar, context, objC) : null;
        try {
            this.f31722q.g(objA);
            h9.t tVar = h9.t.f30301a;
        } finally {
            if (u2VarG == null || u2VarG.O0()) {
                kotlinx.coroutines.internal.i0.a(context, objC);
            }
        }
    }

    public final boolean O0() {
        if (this.f28866r.get() == null) {
            return false;
        }
        this.f28866r.set(null);
        return true;
    }

    public final void P0(k9.g gVar, Object obj) {
        this.f28866r.set(h9.q.a(gVar, obj));
    }
}
