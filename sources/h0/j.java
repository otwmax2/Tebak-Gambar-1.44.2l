package h0;

/* JADX INFO: compiled from: SingleProcessDataStore.kt */
/* JADX INFO: loaded from: classes.dex */
final class j<T> extends n<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Throwable f30128a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Throwable th) {
        super(null);
        t9.m.e(th, "readException");
        this.f30128a = th;
    }

    public final Throwable a() {
        return this.f30128a;
    }
}
