package da;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public class a2 extends e2 implements y {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f28776p;

    public a2(x1 x1Var) {
        super(true);
        h0(x1Var);
        this.f28776p = J0();
    }

    private final boolean J0() {
        e2 e2VarD;
        s sVarD0 = d0();
        t tVar = sVarD0 instanceof t ? (t) sVarD0 : null;
        if (tVar != null && (e2VarD = tVar.D()) != null) {
            while (!e2VarD.a0()) {
                s sVarD02 = e2VarD.d0();
                t tVar2 = sVarD02 instanceof t ? (t) sVarD02 : null;
                if (tVar2 == null || (e2VarD = tVar2.D()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // da.e2
    public boolean a0() {
        return this.f28776p;
    }

    @Override // da.e2
    public boolean b0() {
        return true;
    }
}
