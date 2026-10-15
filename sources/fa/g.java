package fa;

import h9.t;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static final <E> f<E> a(int i10, e eVar, s9.l<? super E, t> lVar) {
        if (i10 == -2) {
            return new d(eVar == e.SUSPEND ? f.f29631a.a() : 1, eVar, lVar);
        }
        if (i10 != -1) {
            return i10 != 0 ? i10 != Integer.MAX_VALUE ? (i10 == 1 && eVar == e.DROP_OLDEST) ? new l(lVar) : new d(i10, eVar, lVar) : new m(lVar) : eVar == e.SUSPEND ? new q(lVar) : new d(1, eVar, lVar);
        }
        if ((eVar != e.SUSPEND ? 0 : 1) != 0) {
            return new l(lVar);
        }
        throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
    }

    public static /* synthetic */ f b(int i10, e eVar, s9.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            eVar = e.SUSPEND;
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        return a(i10, eVar, lVar);
    }
}
