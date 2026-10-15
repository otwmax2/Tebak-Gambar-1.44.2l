package da;

/* JADX INFO: compiled from: EventLoop.common.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class h1 extends i0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f28813q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f28814r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private kotlinx.coroutines.internal.a<a1<?>> f28815s;

    private final long G(boolean z10) {
        return z10 ? 4294967296L : 1L;
    }

    public static /* synthetic */ void K(h1 h1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        h1Var.J(z10);
    }

    public static /* synthetic */ void z(h1 h1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        h1Var.x(z10);
    }

    public final void H(a1<?> a1Var) {
        kotlinx.coroutines.internal.a<a1<?>> aVar = this.f28815s;
        if (aVar == null) {
            aVar = new kotlinx.coroutines.internal.a<>();
            this.f28815s = aVar;
        }
        aVar.a(a1Var);
    }

    protected long I() {
        kotlinx.coroutines.internal.a<a1<?>> aVar = this.f28815s;
        return (aVar == null || aVar.c()) ? Long.MAX_VALUE : 0L;
    }

    public final void J(boolean z10) {
        this.f28813q += G(z10);
        if (z10) {
            return;
        }
        this.f28814r = true;
    }

    public final boolean L() {
        return this.f28813q >= G(true);
    }

    public final boolean M() {
        kotlinx.coroutines.internal.a<a1<?>> aVar = this.f28815s;
        if (aVar != null) {
            return aVar.c();
        }
        return true;
    }

    public long N() {
        return !O() ? Long.MAX_VALUE : 0L;
    }

    public final boolean O() {
        a1<?> a1VarD;
        kotlinx.coroutines.internal.a<a1<?>> aVar = this.f28815s;
        if (aVar == null || (a1VarD = aVar.d()) == null) {
            return false;
        }
        a1VarD.run();
        return true;
    }

    public boolean P() {
        return false;
    }

    public void shutdown() {
    }

    public final void x(boolean z10) {
        long jG = this.f28813q - G(z10);
        this.f28813q = jG;
        if (jG > 0) {
            return;
        }
        if (s0.a()) {
            if (!(this.f28813q == 0)) {
                throw new AssertionError();
            }
        }
        if (this.f28814r) {
            shutdown();
        }
    }
}
