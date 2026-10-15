package da;

import h9.n;

/* JADX INFO: compiled from: DebugStrings.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class t0 {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(k9.d<?> dVar) {
        Object objA;
        if (dVar instanceof kotlinx.coroutines.internal.h) {
            return dVar.toString();
        }
        try {
            n.a aVar = h9.n.f30295o;
            objA = h9.n.a(dVar + '@' + b(dVar));
        } catch (Throwable th) {
            n.a aVar2 = h9.n.f30295o;
            objA = h9.n.a(h9.o.a(th));
        }
        if (h9.n.b(objA) != null) {
            objA = dVar.getClass().getName() + '@' + b(dVar);
        }
        return (String) objA;
    }
}
