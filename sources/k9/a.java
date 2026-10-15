package k9;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import k9.g;
import s9.p;
import t9.m;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements g.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final g.c<?> f31622o;

    public a(g.c<?> cVar) {
        m.e(cVar, SDKConstants.PARAM_KEY);
        this.f31622o = cVar;
    }

    @Override // k9.g.b, k9.g
    public <E extends g.b> E b(g.c<E> cVar) {
        return (E) g.b.a.b(this, cVar);
    }

    @Override // k9.g
    public g d(g gVar) {
        return g.b.a.d(this, gVar);
    }

    @Override // k9.g.b
    public g.c<?> getKey() {
        return this.f31622o;
    }

    @Override // k9.g
    public g q(g.c<?> cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // k9.g
    public <R> R s(R r10, p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) g.b.a.a(this, r10, pVar);
    }
}
