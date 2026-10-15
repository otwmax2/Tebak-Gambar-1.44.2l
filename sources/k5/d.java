package k5;

import java.util.Set;

/* JADX INFO: compiled from: ComponentContainer.java */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d {
    public static Object a(e eVar, Class cls) {
        return eVar.e(f0.b(cls));
    }

    public static Object b(e eVar, f0 f0Var) {
        k6.b bVarB = eVar.b(f0Var);
        if (bVarB == null) {
            return null;
        }
        return bVarB.get();
    }

    public static k6.a c(e eVar, Class cls) {
        return eVar.f(f0.b(cls));
    }

    public static k6.b d(e eVar, Class cls) {
        return eVar.b(f0.b(cls));
    }

    public static Set e(e eVar, Class cls) {
        return eVar.d(f0.b(cls));
    }

    public static Set f(e eVar, f0 f0Var) {
        return (Set) eVar.h(f0Var).get();
    }
}
