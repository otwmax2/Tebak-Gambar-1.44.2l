package da;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes2.dex */
final class f1 extends k {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e1 f28798o;

    public f1(e1 e1Var) {
        this.f28798o = e1Var;
    }

    @Override // da.l
    public void c(Throwable th) {
        this.f28798o.i();
    }

    @Override // s9.l
    public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
        c(th);
        return h9.t.f30301a;
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f28798o + ']';
    }
}
