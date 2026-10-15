package kotlinx.coroutines.internal;

import da.h1;
import da.s0;
import da.s2;
import da.u2;
import da.x1;
import h9.n;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e0 f31736a = new e0("UNDEFINED");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e0 f31737b = new e0("REUSABLE_CLAIMED");

    /* JADX WARN: Finally extract failed */
    public static final <T> void b(k9.d<? super T> dVar, Object obj, s9.l<? super Throwable, h9.t> lVar) {
        boolean z10;
        if (!(dVar instanceof h)) {
            dVar.g(obj);
            return;
        }
        h hVar = (h) dVar;
        Object objC = da.e0.c(obj, lVar);
        if (hVar.f31732r.o(hVar.getContext())) {
            hVar.f31734t = objC;
            hVar.f28775q = 1;
            hVar.f31732r.m(hVar.getContext(), hVar);
            return;
        }
        s0.a();
        h1 h1VarB = s2.f28858a.b();
        if (h1VarB.L()) {
            hVar.f31734t = objC;
            hVar.f28775q = 1;
            h1VarB.H(hVar);
            return;
        }
        h1VarB.J(true);
        try {
            x1 x1Var = (x1) hVar.getContext().b(x1.f28875m);
            if (x1Var == null || x1Var.c()) {
                z10 = false;
            } else {
                CancellationException cancellationExceptionJ = x1Var.j();
                hVar.a(objC, cancellationExceptionJ);
                n.a aVar = h9.n.f30295o;
                hVar.g(h9.n.a(h9.o.a(cancellationExceptionJ)));
                z10 = true;
            }
            if (!z10) {
                k9.d<T> dVar2 = hVar.f31733s;
                Object obj2 = hVar.f31735u;
                k9.g context = dVar2.getContext();
                Object objC2 = i0.c(context, obj2);
                u2<?> u2VarG = objC2 != i0.f31738a ? da.h0.g(dVar2, context, objC2) : null;
                try {
                    hVar.f31733s.g(obj);
                    h9.t tVar = h9.t.f30301a;
                    if (u2VarG == null || u2VarG.O0()) {
                        i0.a(context, objC2);
                    }
                } catch (Throwable th) {
                    if (u2VarG == null || u2VarG.O0()) {
                        i0.a(context, objC2);
                    }
                    throw th;
                }
            }
            while (h1VarB.O()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public static /* synthetic */ void c(k9.d dVar, Object obj, s9.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        b(dVar, obj, lVar);
    }
}
