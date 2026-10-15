package s3;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* JADX INFO: compiled from: Uploader_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements n3.b<s> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Context> f34539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<m3.e> f34540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<t3.d> f34541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<y> f34542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Provider<Executor> f34543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Provider<u3.b> f34544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Provider<v3.a> f34545g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Provider<v3.a> f34546h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Provider<t3.c> f34547i;

    public t(Provider<Context> provider, Provider<m3.e> provider2, Provider<t3.d> provider3, Provider<y> provider4, Provider<Executor> provider5, Provider<u3.b> provider6, Provider<v3.a> provider7, Provider<v3.a> provider8, Provider<t3.c> provider9) {
        this.f34539a = provider;
        this.f34540b = provider2;
        this.f34541c = provider3;
        this.f34542d = provider4;
        this.f34543e = provider5;
        this.f34544f = provider6;
        this.f34545g = provider7;
        this.f34546h = provider8;
        this.f34547i = provider9;
    }

    public static t a(Provider<Context> provider, Provider<m3.e> provider2, Provider<t3.d> provider3, Provider<y> provider4, Provider<Executor> provider5, Provider<u3.b> provider6, Provider<v3.a> provider7, Provider<v3.a> provider8, Provider<t3.c> provider9) {
        return new t(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    public static s c(Context context, m3.e eVar, t3.d dVar, y yVar, Executor executor, u3.b bVar, v3.a aVar, v3.a aVar2, t3.c cVar) {
        return new s(context, eVar, dVar, yVar, executor, bVar, aVar, aVar2, cVar);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public s get() {
        return c(this.f34539a.get(), this.f34540b.get(), this.f34541c.get(), this.f34542d.get(), this.f34543e.get(), this.f34544f.get(), this.f34545g.get(), this.f34546h.get(), this.f34547i.get());
    }
}
