package da;

/* JADX INFO: compiled from: Unconfined.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class t2 extends i0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final t2 f28862q = new t2();

    private t2() {
    }

    @Override // da.i0
    public void m(k9.g gVar, Runnable runnable) {
        w2 w2Var = (w2) gVar.b(w2.f28873q);
        if (w2Var == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        w2Var.f28874p = true;
    }

    @Override // da.i0
    public boolean o(k9.g gVar) {
        return false;
    }

    @Override // da.i0
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
