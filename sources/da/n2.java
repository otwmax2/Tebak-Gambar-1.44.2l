package da;

import h9.n;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
final class n2<T> extends d2 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final n<T> f28841s;

    /* JADX WARN: Multi-variable type inference failed */
    public n2(n<? super T> nVar) {
        this.f28841s = nVar;
    }

    @Override // da.c0
    public void C(Throwable th) {
        Object objE0 = D().e0();
        if (s0.a() && !(!(objE0 instanceof s1))) {
            throw new AssertionError();
        }
        if (objE0 instanceof a0) {
            n<T> nVar = this.f28841s;
            n.a aVar = h9.n.f30295o;
            nVar.g(h9.n.a(h9.o.a(((a0) objE0).f28774a)));
        } else {
            n<T> nVar2 = this.f28841s;
            n.a aVar2 = h9.n.f30295o;
            nVar2.g(h9.n.a(f2.h(objE0)));
        }
    }

    @Override // s9.l
    public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
        C(th);
        return h9.t.f30301a;
    }
}
