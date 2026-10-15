package k9;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import k9.g;
import t9.m;

/* JADX INFO: compiled from: ContinuationInterceptor.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface e extends g.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final b f31632n = b.f31633o;

    /* JADX INFO: compiled from: ContinuationInterceptor.kt */
    public static final class a {
        public static <E extends g.b> E a(e eVar, g.c<E> cVar) {
            m.e(cVar, SDKConstants.PARAM_KEY);
            if (!(cVar instanceof k9.b)) {
                if (e.f31632n != cVar) {
                    return null;
                }
                m.c(eVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return eVar;
            }
            k9.b bVar = (k9.b) cVar;
            if (!bVar.a(eVar.getKey())) {
                return null;
            }
            E e10 = (E) bVar.b(eVar);
            if (e10 instanceof g.b) {
                return e10;
            }
            return null;
        }

        public static g b(e eVar, g.c<?> cVar) {
            m.e(cVar, SDKConstants.PARAM_KEY);
            if (!(cVar instanceof k9.b)) {
                return e.f31632n == cVar ? h.f31635o : eVar;
            }
            k9.b bVar = (k9.b) cVar;
            return (!bVar.a(eVar.getKey()) || bVar.b(eVar) == null) ? eVar : h.f31635o;
        }
    }

    /* JADX INFO: compiled from: ContinuationInterceptor.kt */
    public static final class b implements g.c<e> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        static final /* synthetic */ b f31633o = new b();

        private b() {
        }
    }

    void h(d<?> dVar);

    <T> d<T> p(d<? super T> dVar);
}
