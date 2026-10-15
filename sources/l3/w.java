package l3;

import javax.inject.Provider;

/* JADX INFO: compiled from: TransportRuntime_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class w implements n3.b<u> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<v3.a> f31962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<v3.a> f31963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<r3.e> f31964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<s3.s> f31965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Provider<s3.w> f31966e;

    public w(Provider<v3.a> provider, Provider<v3.a> provider2, Provider<r3.e> provider3, Provider<s3.s> provider4, Provider<s3.w> provider5) {
        this.f31962a = provider;
        this.f31963b = provider2;
        this.f31964c = provider3;
        this.f31965d = provider4;
        this.f31966e = provider5;
    }

    public static w a(Provider<v3.a> provider, Provider<v3.a> provider2, Provider<r3.e> provider3, Provider<s3.s> provider4, Provider<s3.w> provider5) {
        return new w(provider, provider2, provider3, provider4, provider5);
    }

    public static u c(v3.a aVar, v3.a aVar2, r3.e eVar, s3.s sVar, s3.w wVar) {
        return new u(aVar, aVar2, eVar, sVar, wVar);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public u get() {
        return c(this.f31962a.get(), this.f31963b.get(), this.f31964c.get(), this.f31965d.get(), this.f31966e.get());
    }
}
