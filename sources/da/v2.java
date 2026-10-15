package da;

import k9.g;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes2.dex */
final class v2 implements g.b, g.c<v2> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final v2 f28871o = new v2();

    private v2() {
    }

    @Override // k9.g.b, k9.g
    public <E extends g.b> E b(g.c<E> cVar) {
        return (E) g.b.a.b(this, cVar);
    }

    @Override // k9.g
    public k9.g d(k9.g gVar) {
        return g.b.a.d(this, gVar);
    }

    @Override // k9.g.b
    public g.c<?> getKey() {
        return this;
    }

    @Override // k9.g
    public k9.g q(g.c<?> cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // k9.g
    public <R> R s(R r10, s9.p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) g.b.a.a(this, r10, pVar);
    }
}
