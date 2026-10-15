package da;

/* JADX INFO: compiled from: CompletableDeferred.kt */
/* JADX INFO: loaded from: classes2.dex */
final class w<T> extends e2 implements v<T> {
    public w(x1 x1Var) {
        super(true);
        h0(x1Var);
    }

    @Override // da.w0
    public Object A(k9.d<? super T> dVar) throws Throwable {
        Object objK = K(dVar);
        l9.d.c();
        return objK;
    }

    @Override // da.e2
    public boolean b0() {
        return true;
    }

    @Override // da.v
    public boolean u(Throwable th) {
        return l0(new a0(th, false, 2, null));
    }

    @Override // da.v
    public boolean v(T t10) {
        return l0(t10);
    }
}
