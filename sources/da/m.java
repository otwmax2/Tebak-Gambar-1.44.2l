package da;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface m<T> extends k9.d<T> {

    /* JADX INFO: compiled from: CancellableContinuation.kt */
    public static final class a {
        public static /* synthetic */ boolean a(m mVar, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return mVar.w(th);
        }
    }

    void B(Object obj);

    Object m(T t10, Object obj, s9.l<? super Throwable, h9.t> lVar);

    boolean w(Throwable th);

    void x(T t10, s9.l<? super Throwable, h9.t> lVar);

    void z(s9.l<? super Throwable, h9.t> lVar);
}
