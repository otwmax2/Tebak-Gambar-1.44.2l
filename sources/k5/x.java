package k5;

/* JADX INFO: compiled from: Lazy.java */
/* JADX INFO: loaded from: classes2.dex */
public class x<T> implements k6.b<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f31587c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Object f31588a = f31587c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile k6.b<T> f31589b;

    public x(k6.b<T> bVar) {
        this.f31589b = bVar;
    }

    @Override // k6.b
    public T get() {
        T t10 = (T) this.f31588a;
        Object obj = f31587c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = (T) this.f31588a;
                if (t10 == obj) {
                    t10 = this.f31589b.get();
                    this.f31588a = t10;
                    this.f31589b = null;
                }
            }
        }
        return t10;
    }
}
