package k9;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import k9.g;
import k9.g.b;
import s9.l;
import t9.m;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b<B extends g.b, E extends B> implements g.c<E> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final l<g.b, E> f31623o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final g.c<?> f31624p;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [k9.g$c<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, s9.l<? super k9.g$b, ? extends E extends B>, s9.l<k9.g$b, E extends B>] */
    public b(g.c<B> cVar, l<? super g.b, ? extends E> lVar) {
        m.e(cVar, "baseKey");
        m.e(lVar, "safeCast");
        this.f31623o = lVar;
        this.f31624p = cVar instanceof b ? (g.c<B>) ((b) cVar).f31624p : cVar;
    }

    public final boolean a(g.c<?> cVar) {
        m.e(cVar, SDKConstants.PARAM_KEY);
        return cVar == this || this.f31624p == cVar;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lk9/g$b;)TE; */
    public final g.b b(g.b bVar) {
        m.e(bVar, "element");
        return (g.b) this.f31623o.invoke(bVar);
    }
}
