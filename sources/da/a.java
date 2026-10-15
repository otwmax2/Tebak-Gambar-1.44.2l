package da;

/* JADX INFO: compiled from: AbstractCoroutine.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> extends e2 implements k9.d<T>, o0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final k9.g f28772p;

    public a(k9.g gVar, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            h0((x1) gVar.b(x1.f28875m));
        }
        this.f28772p = gVar.d(this);
    }

    protected void J0(Object obj) {
        J(obj);
    }

    protected void K0(Throwable th, boolean z10) {
    }

    protected void L0(T t10) {
    }

    public final <R> void M0(q0 q0Var, R r10, s9.p<? super R, ? super k9.d<? super T>, ? extends Object> pVar) {
        q0Var.e(pVar, r10, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // da.e2
    public String R() {
        return t0.a(this) + " was cancelled";
    }

    @Override // da.o0
    public k9.g a() {
        return this.f28772p;
    }

    @Override // da.e2, da.x1
    public boolean c() {
        return super.c();
    }

    @Override // k9.d
    public final void g(Object obj) {
        Object objM0 = m0(e0.d(obj, null, 1, null));
        if (objM0 == f2.f28800b) {
            return;
        }
        J0(objM0);
    }

    @Override // da.e2
    public final void g0(Throwable th) {
        l0.a(this.f28772p, th);
    }

    @Override // k9.d
    public final k9.g getContext() {
        return this.f28772p;
    }

    @Override // da.e2
    public String o0() {
        String strB = h0.b(this.f28772p);
        if (strB == null) {
            return super.o0();
        }
        return '\"' + strB + "\":" + super.o0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // da.e2
    protected final void t0(Object obj) {
        if (!(obj instanceof a0)) {
            L0(obj);
        } else {
            a0 a0Var = (a0) obj;
            K0(a0Var.f28774a, a0Var.a());
        }
    }
}
