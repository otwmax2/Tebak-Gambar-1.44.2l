package da;

import java.util.concurrent.CancellationException;
import k9.g;

/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface x1 extends g.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final b f28875m = b.f28876o;

    /* JADX INFO: compiled from: Job.kt */
    public static final class a {
        public static <R> R a(x1 x1Var, R r10, s9.p<? super R, ? super g.b, ? extends R> pVar) {
            return (R) g.b.a.a(x1Var, r10, pVar);
        }

        public static <E extends g.b> E b(x1 x1Var, g.c<E> cVar) {
            return (E) g.b.a.b(x1Var, cVar);
        }

        public static /* synthetic */ e1 c(x1 x1Var, boolean z10, boolean z11, s9.l lVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            if ((i10 & 2) != 0) {
                z11 = true;
            }
            return x1Var.i(z10, z11, lVar);
        }

        public static k9.g d(x1 x1Var, g.c<?> cVar) {
            return g.b.a.c(x1Var, cVar);
        }

        public static k9.g e(x1 x1Var, k9.g gVar) {
            return g.b.a.d(x1Var, gVar);
        }
    }

    /* JADX INFO: compiled from: Job.kt */
    public static final class b implements g.c<x1> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        static final /* synthetic */ b f28876o = new b();

        private b() {
        }
    }

    void E(CancellationException cancellationException);

    boolean c();

    e1 f(s9.l<? super Throwable, h9.t> lVar);

    e1 i(boolean z10, boolean z11, s9.l<? super Throwable, h9.t> lVar);

    boolean isCancelled();

    CancellationException j();

    boolean start();

    s t(u uVar);
}
