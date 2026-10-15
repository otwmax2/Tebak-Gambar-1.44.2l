package k9;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import k9.e;
import s9.p;
import t9.m;
import t9.n;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface g {

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class a {

        /* JADX INFO: renamed from: k9.g$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CoroutineContext.kt */
        static final class C0191a extends n implements p<g, b, g> {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public static final C0191a f31634o = new C0191a();

            C0191a() {
                super(2);
            }

            @Override // s9.p
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final g invoke(g gVar, b bVar) {
                k9.c cVar;
                m.e(gVar, "acc");
                m.e(bVar, "element");
                g gVarQ = gVar.q(bVar.getKey());
                h hVar = h.f31635o;
                if (gVarQ == hVar) {
                    return bVar;
                }
                e.b bVar2 = e.f31632n;
                e eVar = (e) gVarQ.b(bVar2);
                if (eVar == null) {
                    cVar = new k9.c(gVarQ, bVar);
                } else {
                    g gVarQ2 = gVarQ.q(bVar2);
                    if (gVarQ2 == hVar) {
                        return new k9.c(bVar, eVar);
                    }
                    cVar = new k9.c(new k9.c(gVarQ2, bVar), eVar);
                }
                return cVar;
            }
        }

        public static g a(g gVar, g gVar2) {
            m.e(gVar2, "context");
            return gVar2 == h.f31635o ? gVar : (g) gVar2.s(gVar, C0191a.f31634o);
        }
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public interface b extends g {

        /* JADX INFO: compiled from: CoroutineContext.kt */
        public static final class a {
            public static <R> R a(b bVar, R r10, p<? super R, ? super b, ? extends R> pVar) {
                m.e(pVar, "operation");
                return pVar.invoke(r10, bVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends b> E b(b bVar, c<E> cVar) {
                m.e(cVar, SDKConstants.PARAM_KEY);
                if (!m.a(bVar.getKey(), cVar)) {
                    return null;
                }
                m.c(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            public static g c(b bVar, c<?> cVar) {
                m.e(cVar, SDKConstants.PARAM_KEY);
                return m.a(bVar.getKey(), cVar) ? h.f31635o : bVar;
            }

            public static g d(b bVar, g gVar) {
                m.e(gVar, "context");
                return a.a(bVar, gVar);
            }
        }

        @Override // k9.g
        <E extends b> E b(c<E> cVar);

        c<?> getKey();
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public interface c<E extends b> {
    }

    <E extends b> E b(c<E> cVar);

    g d(g gVar);

    g q(c<?> cVar);

    <R> R s(R r10, p<? super R, ? super b, ? extends R> pVar);
}
