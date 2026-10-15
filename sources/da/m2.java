package da;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes2.dex */
final class m2 extends e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final kotlinx.coroutines.internal.r f28831o;

    public m2(kotlinx.coroutines.internal.r rVar) {
        this.f28831o = rVar;
    }

    @Override // da.l
    public void c(Throwable th) {
        this.f28831o.x();
    }

    @Override // s9.l
    public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
        c(th);
        return h9.t.f30301a;
    }

    public String toString() {
        return "RemoveOnCancel[" + this.f28831o + ']';
    }
}
