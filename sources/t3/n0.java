package t3;

import javax.inject.Provider;

/* JADX INFO: compiled from: SQLiteEventStore_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class n0 implements n3.b<m0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<v3.a> f35346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<v3.a> f35347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<e> f35348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<t0> f35349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Provider<String> f35350e;

    public n0(Provider<v3.a> provider, Provider<v3.a> provider2, Provider<e> provider3, Provider<t0> provider4, Provider<String> provider5) {
        this.f35346a = provider;
        this.f35347b = provider2;
        this.f35348c = provider3;
        this.f35349d = provider4;
        this.f35350e = provider5;
    }

    public static n0 a(Provider<v3.a> provider, Provider<v3.a> provider2, Provider<e> provider3, Provider<t0> provider4, Provider<String> provider5) {
        return new n0(provider, provider2, provider3, provider4, provider5);
    }

    public static m0 c(v3.a aVar, v3.a aVar2, Object obj, Object obj2, Provider<String> provider) {
        return new m0(aVar, aVar2, (e) obj, (t0) obj2, provider);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m0 get() {
        return c(this.f35346a.get(), this.f35347b.get(), this.f35348c.get(), this.f35349d.get(), this.f35350e);
    }
}
