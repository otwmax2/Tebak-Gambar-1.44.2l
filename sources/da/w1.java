package da;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
final class w1 extends d2 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final s9.l<Throwable, h9.t> f28872s;

    /* JADX WARN: Multi-variable type inference failed */
    public w1(s9.l<? super Throwable, h9.t> lVar) {
        this.f28872s = lVar;
    }

    @Override // da.c0
    public void C(Throwable th) {
        this.f28872s.invoke(th);
    }

    @Override // s9.l
    public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
        C(th);
        return h9.t.f30301a;
    }
}
