package h0;

/* JADX INFO: compiled from: SingleProcessDataStore.kt */
/* JADX INFO: loaded from: classes.dex */
final class h<T> extends n<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Throwable f30127a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Throwable th) {
        super(null);
        t9.m.e(th, "finalException");
        this.f30127a = th;
    }

    public final Throwable a() {
        return this.f30127a;
    }
}
