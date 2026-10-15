package da;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d2 extends c0 implements e1, s1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public e2 f28786r;

    public final e2 D() {
        e2 e2Var = this.f28786r;
        if (e2Var != null) {
            return e2Var;
        }
        t9.m.p("job");
        return null;
    }

    public final void E(e2 e2Var) {
        this.f28786r = e2Var;
    }

    @Override // da.s1
    public boolean c() {
        return true;
    }

    @Override // da.s1
    public i2 f() {
        return null;
    }

    @Override // da.e1
    public void i() {
        D().x0(this);
    }

    @Override // kotlinx.coroutines.internal.r
    public String toString() {
        return t0.a(this) + '@' + t0.b(this) + "[job@" + t0.b(D()) + ']';
    }
}
