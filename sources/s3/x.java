package s3;

import java.util.concurrent.Executor;
import javax.inject.Provider;

/* JADX INFO: compiled from: WorkInitializer_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class x implements n3.b<w> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Executor> f34554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<t3.d> f34555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<y> f34556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<u3.b> f34557d;

    public x(Provider<Executor> provider, Provider<t3.d> provider2, Provider<y> provider3, Provider<u3.b> provider4) {
        this.f34554a = provider;
        this.f34555b = provider2;
        this.f34556c = provider3;
        this.f34557d = provider4;
    }

    public static x a(Provider<Executor> provider, Provider<t3.d> provider2, Provider<y> provider3, Provider<u3.b> provider4) {
        return new x(provider, provider2, provider3, provider4);
    }

    public static w c(Executor executor, t3.d dVar, y yVar, u3.b bVar) {
        return new w(executor, dVar, yVar, bVar);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public w get() {
        return c(this.f34554a.get(), this.f34555b.get(), this.f34556c.get(), this.f34557d.get());
    }
}
