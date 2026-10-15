package k9;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.Serializable;
import k9.g;
import s9.p;
import t9.m;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h implements g, Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final h f31635o = new h();
    private static final long serialVersionUID = 0;

    private h() {
    }

    private final Object readResolve() {
        return f31635o;
    }

    @Override // k9.g
    public <E extends g.b> E b(g.c<E> cVar) {
        m.e(cVar, SDKConstants.PARAM_KEY);
        return null;
    }

    @Override // k9.g
    public g d(g gVar) {
        m.e(gVar, "context");
        return gVar;
    }

    public int hashCode() {
        return 0;
    }

    @Override // k9.g
    public g q(g.c<?> cVar) {
        m.e(cVar, SDKConstants.PARAM_KEY);
        return this;
    }

    @Override // k9.g
    public <R> R s(R r10, p<? super R, ? super g.b, ? extends R> pVar) {
        m.e(pVar, "operation");
        return r10;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
