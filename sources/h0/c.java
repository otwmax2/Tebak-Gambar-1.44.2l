package h0;

/* JADX INFO: compiled from: SingleProcessDataStore.kt */
/* JADX INFO: loaded from: classes.dex */
final class c<T> extends n<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f30106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f30107b;

    public c(T t10, int i10) {
        super(null);
        this.f30106a = t10;
        this.f30107b = i10;
    }

    public final void a() {
        T t10 = this.f30106a;
        if (!((t10 != null ? t10.hashCode() : 0) == this.f30107b)) {
            throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.".toString());
        }
    }

    public final T b() {
        return this.f30106a;
    }
}
