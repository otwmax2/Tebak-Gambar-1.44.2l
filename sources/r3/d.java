package r3;

import java.util.concurrent.Executor;
import javax.inject.Provider;
import s3.y;

/* JADX INFO: compiled from: DefaultScheduler_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements n3.b<c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Executor> f34235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<m3.e> f34236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<y> f34237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<t3.d> f34238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Provider<u3.b> f34239e;

    public d(Provider<Executor> provider, Provider<m3.e> provider2, Provider<y> provider3, Provider<t3.d> provider4, Provider<u3.b> provider5) {
        this.f34235a = provider;
        this.f34236b = provider2;
        this.f34237c = provider3;
        this.f34238d = provider4;
        this.f34239e = provider5;
    }

    public static d a(Provider<Executor> provider, Provider<m3.e> provider2, Provider<y> provider3, Provider<t3.d> provider4, Provider<u3.b> provider5) {
        return new d(provider, provider2, provider3, provider4, provider5);
    }

    public static c c(Executor executor, m3.e eVar, y yVar, t3.d dVar, u3.b bVar) {
        return new c(executor, eVar, yVar, dVar, bVar);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c get() {
        return c(this.f34235a.get(), this.f34236b.get(), this.f34237c.get(), this.f34238d.get(), this.f34239e.get());
    }
}
