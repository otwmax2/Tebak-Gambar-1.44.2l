package da;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class t extends z1 implements s {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final u f28860s;

    public t(u uVar) {
        this.f28860s = uVar;
    }

    @Override // da.c0
    public void C(Throwable th) {
        this.f28860s.F(D());
    }

    @Override // da.s
    public boolean e(Throwable th) {
        return D().S(th);
    }

    @Override // da.s
    public x1 getParent() {
        return D();
    }

    @Override // s9.l
    public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
        C(th);
        return h9.t.f30301a;
    }
}
