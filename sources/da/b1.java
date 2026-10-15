package da;

import h9.n;

/* JADX INFO: compiled from: DispatchedTask.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b1 {
    public static final <T> void a(a1<? super T> a1Var, int i10) {
        if (s0.a()) {
            if (!(i10 != -1)) {
                throw new AssertionError();
            }
        }
        k9.d<? super T> dVarB = a1Var.b();
        boolean z10 = i10 == 4;
        if (z10 || !(dVarB instanceof kotlinx.coroutines.internal.h) || b(i10) != b(a1Var.f28775q)) {
            d(a1Var, dVarB, z10);
            return;
        }
        i0 i0Var = ((kotlinx.coroutines.internal.h) dVarB).f31732r;
        k9.g context = dVarB.getContext();
        if (i0Var.o(context)) {
            i0Var.m(context, a1Var);
        } else {
            e(a1Var);
        }
    }

    public static final boolean b(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean c(int i10) {
        return i10 == 2;
    }

    public static final <T> void d(a1<? super T> a1Var, k9.d<? super T> dVar, boolean z10) {
        Object objD;
        Object objH = a1Var.h();
        Throwable thC = a1Var.c(objH);
        if (thC != null) {
            n.a aVar = h9.n.f30295o;
            objD = h9.o.a(thC);
        } else {
            n.a aVar2 = h9.n.f30295o;
            objD = a1Var.d(objH);
        }
        Object objA = h9.n.a(objD);
        if (!z10) {
            dVar.g(objA);
            return;
        }
        kotlinx.coroutines.internal.h hVar = (kotlinx.coroutines.internal.h) dVar;
        k9.d<T> dVar2 = hVar.f31733s;
        Object obj = hVar.f31735u;
        k9.g context = dVar2.getContext();
        Object objC = kotlinx.coroutines.internal.i0.c(context, obj);
        u2<?> u2VarG = objC != kotlinx.coroutines.internal.i0.f31738a ? h0.g(dVar2, context, objC) : null;
        try {
            hVar.f31733s.g(objA);
            h9.t tVar = h9.t.f30301a;
        } finally {
            if (u2VarG == null || u2VarG.O0()) {
                kotlinx.coroutines.internal.i0.a(context, objC);
            }
        }
    }

    private static final void e(a1<?> a1Var) {
        h1 h1VarB = s2.f28858a.b();
        if (h1VarB.L()) {
            h1VarB.H(a1Var);
            return;
        }
        h1VarB.J(true);
        try {
            d(a1Var, a1Var.b(), true);
            do {
            } while (h1VarB.O());
        } finally {
            try {
            } finally {
            }
        }
    }
}
