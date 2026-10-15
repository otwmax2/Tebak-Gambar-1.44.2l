package n3;

/* JADX INFO: compiled from: InstanceFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class c<T> implements b<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c<Object> f32433b = new c<>(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f32434a;

    private c(T t10) {
        this.f32434a = t10;
    }

    public static <T> b<T> a(T t10) {
        return new c(d.c(t10, "instance cannot be null"));
    }

    @Override // javax.inject.Provider
    public T get() {
        return this.f32434a;
    }
}
