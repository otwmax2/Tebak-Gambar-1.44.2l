package da;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
final class u1 extends k {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final s9.l<Throwable, h9.t> f28865o;

    /* JADX WARN: Multi-variable type inference failed */
    public u1(s9.l<? super Throwable, h9.t> lVar) {
        this.f28865o = lVar;
    }

    @Override // da.l
    public void c(Throwable th) {
        this.f28865o.invoke(th);
    }

    @Override // s9.l
    public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
        c(th);
        return h9.t.f30301a;
    }

    public String toString() {
        return "InvokeOnCancel[" + t0.a(this.f28865o) + '@' + t0.b(this) + ']';
    }
}
