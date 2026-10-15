package ha;

import da.a0;
import da.f2;
import da.s0;
import h9.n;
import h9.o;
import k9.d;
import k9.g;
import kotlinx.coroutines.internal.d0;
import kotlinx.coroutines.internal.i0;
import m9.e;
import m9.h;
import s9.p;
import t9.c0;

/* JADX INFO: compiled from: Undispatched.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static final <R, T> void a(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar) {
        d dVarA = h.a(dVar);
        try {
            g context = dVar.getContext();
            Object objC = i0.c(context, null);
            try {
                Object objInvoke = ((p) c0.b(pVar, 2)).invoke(r10, dVarA);
                if (objInvoke != l9.d.c()) {
                    n.a aVar = n.f30295o;
                    dVarA.g(n.a(objInvoke));
                }
            } finally {
                i0.a(context, objC);
            }
        } catch (Throwable th) {
            n.a aVar2 = n.f30295o;
            dVarA.g(n.a(o.a(th)));
        }
    }

    public static final <T, R> Object b(kotlinx.coroutines.internal.c0<? super T> c0Var, R r10, p<? super R, ? super d<? super T>, ? extends Object> pVar) {
        Object a0Var;
        Object objM0;
        try {
            a0Var = ((p) c0.b(pVar, 2)).invoke(r10, c0Var);
        } catch (Throwable th) {
            a0Var = new a0(th, false, 2, null);
        }
        if (a0Var != l9.d.c() && (objM0 = c0Var.m0(a0Var)) != f2.f28800b) {
            if (!(objM0 instanceof a0)) {
                return f2.h(objM0);
            }
            Throwable th2 = ((a0) objM0).f28774a;
            d<? super T> dVar = c0Var.f31722q;
            if (s0.d() && (dVar instanceof e)) {
                throw d0.j(th2, (e) dVar);
            }
            throw th2;
        }
        return l9.d.c();
    }
}
