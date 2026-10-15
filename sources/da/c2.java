package da;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class c2 {
    public static final y a(x1 x1Var) {
        return new a2(x1Var);
    }

    public static /* synthetic */ y b(x1 x1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            x1Var = null;
        }
        return b2.a(x1Var);
    }

    public static final void c(k9.g gVar, CancellationException cancellationException) {
        x1 x1Var = (x1) gVar.b(x1.f28875m);
        if (x1Var != null) {
            x1Var.E(cancellationException);
        }
    }

    public static final void d(x1 x1Var) {
        if (!x1Var.c()) {
            throw x1Var.j();
        }
    }

    public static final void e(k9.g gVar) {
        x1 x1Var = (x1) gVar.b(x1.f28875m);
        if (x1Var != null) {
            b2.d(x1Var);
        }
    }
}
