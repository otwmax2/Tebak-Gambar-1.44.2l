package kotlinx.coroutines.internal;

import da.x1;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: classes2.dex */
public class c0<T> extends da.a<T> implements m9.e {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final k9.d<T> f31722q;

    /* JADX WARN: Multi-variable type inference failed */
    public c0(k9.g gVar, k9.d<? super T> dVar) {
        super(gVar, true, true);
        this.f31722q = dVar;
    }

    @Override // da.e2
    protected void J(Object obj) {
        i.c(l9.c.b(this.f31722q), da.e0.a(obj, this.f31722q), null, 2, null);
    }

    @Override // da.a
    protected void J0(Object obj) {
        k9.d<T> dVar = this.f31722q;
        dVar.g(da.e0.a(obj, dVar));
    }

    public final x1 N0() {
        da.s sVarD0 = d0();
        if (sVarD0 != null) {
            return sVarD0.getParent();
        }
        return null;
    }

    @Override // m9.e
    public final m9.e e() {
        k9.d<T> dVar = this.f31722q;
        if (dVar instanceof m9.e) {
            return (m9.e) dVar;
        }
        return null;
    }

    @Override // da.e2
    protected final boolean j0() {
        return true;
    }

    @Override // m9.e
    public final StackTraceElement o() {
        return null;
    }
}
