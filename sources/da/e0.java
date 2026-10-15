package da;

import h9.n;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e0 {
    public static final <T> Object a(Object obj, k9.d<? super T> dVar) {
        if (!(obj instanceof a0)) {
            n.a aVar = h9.n.f30295o;
            return h9.n.a(obj);
        }
        n.a aVar2 = h9.n.f30295o;
        Throwable thJ = ((a0) obj).f28774a;
        if (s0.d() && (dVar instanceof m9.e)) {
            thJ = kotlinx.coroutines.internal.d0.j(thJ, (m9.e) dVar);
        }
        return h9.n.a(h9.o.a(thJ));
    }

    public static final <T> Object b(Object obj, m<?> mVar) {
        Throwable thB = h9.n.b(obj);
        if (thB != null) {
            if (s0.d() && (mVar instanceof m9.e)) {
                thB = kotlinx.coroutines.internal.d0.j(thB, (m9.e) mVar);
            }
            obj = new a0(thB, false, 2, null);
        }
        return obj;
    }

    public static final <T> Object c(Object obj, s9.l<? super Throwable, h9.t> lVar) {
        Throwable thB = h9.n.b(obj);
        return thB == null ? lVar != null ? new b0(obj, lVar) : obj : new a0(thB, false, 2, null);
    }

    public static /* synthetic */ Object d(Object obj, s9.l lVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            lVar = null;
        }
        return c(obj, lVar);
    }
}
