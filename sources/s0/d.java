package s0;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import s0.a;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: CreationExtras.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends a {
    /* JADX WARN: Multi-variable type inference failed */
    public d() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public d(a aVar) {
        m.e(aVar, "initialExtras");
        b().putAll(aVar.b());
    }

    @Override // s0.a
    public <T> T a(a.b<T> bVar) {
        m.e(bVar, SDKConstants.PARAM_KEY);
        return (T) b().get(bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void c(a.b<T> bVar, T t10) {
        m.e(bVar, SDKConstants.PARAM_KEY);
        b().put(bVar, t10);
    }

    public /* synthetic */ d(a aVar, int i10, g gVar) {
        this((i10 & 1) != 0 ? a.C0227a.f34458b : aVar);
    }
}
