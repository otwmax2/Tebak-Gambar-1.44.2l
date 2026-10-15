package kotlinx.coroutines.flow;

import h9.t;

/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: classes2.dex */
final class l<T> extends a<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final s9.p<c<? super T>, k9.d<? super t>, Object> f31694o;

    /* JADX WARN: Multi-variable type inference failed */
    public l(s9.p<? super c<? super T>, ? super k9.d<? super t>, ? extends Object> pVar) {
        this.f31694o = pVar;
    }

    @Override // kotlinx.coroutines.flow.a
    public Object b(c<? super T> cVar, k9.d<? super t> dVar) {
        Object objInvoke = this.f31694o.invoke(cVar, dVar);
        return objInvoke == l9.d.c() ? objInvoke : t.f30301a;
    }
}
