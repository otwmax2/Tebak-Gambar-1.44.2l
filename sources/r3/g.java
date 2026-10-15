package r3;

import javax.inject.Provider;

/* JADX INFO: compiled from: SchedulingConfigModule_ConfigFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements n3.b<s3.g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<v3.a> f34240a;

    public g(Provider<v3.a> provider) {
        this.f34240a = provider;
    }

    public static s3.g a(v3.a aVar) {
        return (s3.g) n3.d.c(f.a(aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static g b(Provider<v3.a> provider) {
        return new g(provider);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public s3.g get() {
        return a(this.f34240a.get());
    }
}
