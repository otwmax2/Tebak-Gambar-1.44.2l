package ga;

import k9.g;
import s9.p;

/* JADX INFO: compiled from: SafeCollector.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e implements k9.g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Throwable f30042o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ k9.g f30043p;

    public e(Throwable th, k9.g gVar) {
        this.f30042o = th;
        this.f30043p = gVar;
    }

    @Override // k9.g
    public <E extends g.b> E b(g.c<E> cVar) {
        return (E) this.f30043p.b(cVar);
    }

    @Override // k9.g
    public k9.g d(k9.g gVar) {
        return this.f30043p.d(gVar);
    }

    @Override // k9.g
    public k9.g q(g.c<?> cVar) {
        return this.f30043p.q(cVar);
    }

    @Override // k9.g
    public <R> R s(R r10, p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) this.f30043p.s(r10, pVar);
    }
}
