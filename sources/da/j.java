package da;

import k9.e;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j {
    public static final x1 a(o0 o0Var, k9.g gVar, q0 q0Var, s9.p<? super o0, ? super k9.d<? super h9.t>, ? extends Object> pVar) {
        k9.g gVarD = h0.d(o0Var, gVar);
        a g2Var = q0Var.f() ? new g2(gVarD, pVar) : new o2(gVarD, true);
        g2Var.M0(q0Var, g2Var, pVar);
        return g2Var;
    }

    public static /* synthetic */ x1 b(o0 o0Var, k9.g gVar, q0 q0Var, s9.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = k9.h.f31635o;
        }
        if ((i10 & 2) != 0) {
            q0Var = q0.DEFAULT;
        }
        return h.a(o0Var, gVar, q0Var, pVar);
    }

    public static final <T> Object c(k9.g gVar, s9.p<? super o0, ? super k9.d<? super T>, ? extends Object> pVar, k9.d<? super T> dVar) throws Throwable {
        Object objO0;
        k9.g context = dVar.getContext();
        k9.g gVarE = h0.e(context, gVar);
        b2.e(gVarE);
        if (gVarE == context) {
            kotlinx.coroutines.internal.c0 c0Var = new kotlinx.coroutines.internal.c0(gVarE, dVar);
            objO0 = ha.b.b(c0Var, c0Var, pVar);
        } else {
            e.b bVar = k9.e.f31632n;
            if (t9.m.a(gVarE.b(bVar), context.b(bVar))) {
                u2 u2Var = new u2(gVarE, dVar);
                Object objC = kotlinx.coroutines.internal.i0.c(gVarE, null);
                try {
                    Object objB = ha.b.b(u2Var, u2Var, pVar);
                    kotlinx.coroutines.internal.i0.a(gVarE, objC);
                    objO0 = objB;
                } catch (Throwable th) {
                    kotlinx.coroutines.internal.i0.a(gVarE, objC);
                    throw th;
                }
            } else {
                z0 z0Var = new z0(gVarE, dVar);
                ha.a.d(pVar, z0Var, z0Var, null, 4, null);
                objO0 = z0Var.O0();
            }
        }
        if (objO0 == l9.d.c()) {
            m9.h.c(dVar);
        }
        return objO0;
    }
}
