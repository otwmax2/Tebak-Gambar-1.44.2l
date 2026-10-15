package da;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class p {
    public static final void a(m<?> mVar, e1 e1Var) {
        mVar.z(new f1(e1Var));
    }

    public static final <T> n<T> b(k9.d<? super T> dVar) {
        if (!(dVar instanceof kotlinx.coroutines.internal.h)) {
            return new n<>(dVar, 1);
        }
        n<T> nVarJ = ((kotlinx.coroutines.internal.h) dVar).j();
        if (nVarJ != null) {
            if (!nVarJ.J()) {
                nVarJ = null;
            }
            if (nVarJ != null) {
                return nVarJ;
            }
        }
        return new n<>(dVar, 2);
    }

    public static final void c(m<?> mVar, kotlinx.coroutines.internal.r rVar) {
        mVar.z(new m2(rVar));
    }
}
