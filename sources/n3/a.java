package n3;

import javax.inject.Provider;

/* JADX INFO: compiled from: DoubleCheck.java */
/* JADX INFO: loaded from: classes.dex */
public final class a<T> implements Provider<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f32430c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Provider<T> f32431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f32432b = f32430c;

    private a(Provider<T> provider) {
        this.f32431a = provider;
    }

    public static <P extends Provider<T>, T> Provider<T> a(P p10) {
        d.b(p10);
        return p10 instanceof a ? p10 : new a(p10);
    }

    public static Object b(Object obj, Object obj2) {
        if (!(obj != f32430c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // javax.inject.Provider
    public T get() {
        T t10 = (T) this.f32432b;
        Object obj = f32430c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = (T) this.f32432b;
                if (t10 == obj) {
                    t10 = this.f32431a.get();
                    this.f32432b = b(this.f32432b, t10);
                    this.f32431a = null;
                }
            }
        }
        return t10;
    }
}
