package da;

/* JADX INFO: compiled from: CoroutineExceptionHandlerImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
final class y0 extends RuntimeException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final k9.g f28877o;

    public y0(k9.g gVar) {
        this.f28877o = gVar;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.f28877o.toString();
    }
}
