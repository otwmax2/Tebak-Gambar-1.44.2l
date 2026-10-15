package ha;

import h9.n;
import h9.o;
import h9.t;
import k9.d;
import kotlinx.coroutines.internal.i;
import l9.c;
import s9.l;
import s9.p;

/* JADX INFO: compiled from: Cancellable.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static final void a(d<?> dVar, Throwable th) throws Throwable {
        n.a aVar = n.f30295o;
        dVar.g(n.a(o.a(th)));
        throw th;
    }

    public static final void b(d<? super t> dVar, d<?> dVar2) throws Throwable {
        try {
            d dVarB = c.b(dVar);
            n.a aVar = n.f30295o;
            i.c(dVarB, n.a(t.f30301a), null, 2, null);
        } catch (Throwable th) {
            a(dVar2, th);
        }
    }

    public static final <R, T> void c(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar, l<? super Throwable, t> lVar) throws Throwable {
        try {
            d dVarB = c.b(c.a(pVar, r10, dVar));
            n.a aVar = n.f30295o;
            i.b(dVarB, n.a(t.f30301a), lVar);
        } catch (Throwable th) {
            a(dVar, th);
        }
    }

    public static /* synthetic */ void d(p pVar, Object obj, d dVar, l lVar, int i10, Object obj2) throws Throwable {
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        c(pVar, obj, dVar, lVar);
    }
}
