package da;

/* JADX INFO: compiled from: CompletableDeferred.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class x {
    public static final <T> v<T> a(x1 x1Var) {
        return new w(x1Var);
    }

    public static /* synthetic */ v b(x1 x1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            x1Var = null;
        }
        return a(x1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean c(v<T> vVar, Object obj) {
        Throwable thB = h9.n.b(obj);
        return thB == null ? vVar.v(obj) : vVar.u(thB);
    }
}
