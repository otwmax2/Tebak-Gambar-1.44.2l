package kotlinx.coroutines.scheduling;

/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c extends f {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final c f31822w = new c();

    private c() {
        super(l.f31834b, l.f31835c, l.f31836d, "DefaultDispatcher");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // da.i0
    public String toString() {
        return "Dispatchers.Default";
    }
}
