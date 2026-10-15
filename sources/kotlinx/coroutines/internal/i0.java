package kotlinx.coroutines.internal;

import da.r2;
import java.util.Objects;
import k9.g;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f31738a = new e0("NO_THREAD_ELEMENTS");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final s9.p<Object, g.b, Object> f31739b = a.f31742o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final s9.p<r2<?>, g.b, r2<?>> f31740c = b.f31743o;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final s9.p<l0, g.b, l0> f31741d = c.f31744o;

    /* JADX INFO: compiled from: ThreadContext.kt */
    static final class a extends t9.n implements s9.p<Object, g.b, Object> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final a f31742o = new a();

        a() {
            super(2);
        }

        @Override // s9.p
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Object obj, g.b bVar) {
            if (!(bVar instanceof r2)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int iIntValue = num != null ? num.intValue() : 1;
            return iIntValue == 0 ? bVar : Integer.valueOf(iIntValue + 1);
        }
    }

    /* JADX INFO: compiled from: ThreadContext.kt */
    static final class b extends t9.n implements s9.p<r2<?>, g.b, r2<?>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final b f31743o = new b();

        b() {
            super(2);
        }

        @Override // s9.p
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final r2<?> invoke(r2<?> r2Var, g.b bVar) {
            if (r2Var != null) {
                return r2Var;
            }
            if (bVar instanceof r2) {
                return (r2) bVar;
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: ThreadContext.kt */
    static final class c extends t9.n implements s9.p<l0, g.b, l0> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final c f31744o = new c();

        c() {
            super(2);
        }

        @Override // s9.p
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final l0 invoke(l0 l0Var, g.b bVar) {
            if (bVar instanceof r2) {
                r2<?> r2Var = (r2) bVar;
                l0Var.a(r2Var, r2Var.n(l0Var.f31755a));
            }
            return l0Var;
        }
    }

    public static final void a(k9.g gVar, Object obj) {
        if (obj == f31738a) {
            return;
        }
        if (obj instanceof l0) {
            ((l0) obj).b(gVar);
            return;
        }
        Object objS = gVar.s(null, f31740c);
        Objects.requireNonNull(objS, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((r2) objS).C(gVar, obj);
    }

    public static final Object b(k9.g gVar) {
        Object objS = gVar.s(0, f31739b);
        t9.m.b(objS);
        return objS;
    }

    public static final Object c(k9.g gVar, Object obj) {
        if (obj == null) {
            obj = b(gVar);
        }
        return obj == 0 ? f31738a : obj instanceof Integer ? gVar.s(new l0(gVar, ((Number) obj).intValue()), f31741d) : ((r2) obj).n(gVar);
    }
}
