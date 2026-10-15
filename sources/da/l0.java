package da;

/* JADX INFO: compiled from: CoroutineExceptionHandler.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class l0 {
    public static final void a(k9.g gVar, Throwable th) {
        try {
            j0 j0Var = (j0) gVar.b(j0.f28823l);
            if (j0Var != null) {
                j0Var.l(gVar, th);
            } else {
                k0.a(gVar, th);
            }
        } catch (Throwable th2) {
            k0.a(gVar, b(th, th2));
        }
    }

    public static final Throwable b(Throwable th, Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        h9.b.a(runtimeException, th);
        return runtimeException;
    }
}
