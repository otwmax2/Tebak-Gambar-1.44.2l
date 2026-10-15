package m3;

import android.content.Context;
import javax.inject.Provider;

/* JADX INFO: compiled from: CreationContextFactory_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements n3.b<i> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Context> f32145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<v3.a> f32146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<v3.a> f32147c;

    public j(Provider<Context> provider, Provider<v3.a> provider2, Provider<v3.a> provider3) {
        this.f32145a = provider;
        this.f32146b = provider2;
        this.f32147c = provider3;
    }

    public static j a(Provider<Context> provider, Provider<v3.a> provider2, Provider<v3.a> provider3) {
        return new j(provider, provider2, provider3);
    }

    public static i c(Context context, v3.a aVar, v3.a aVar2) {
        return new i(context, aVar, aVar2);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public i get() {
        return c(this.f32145a.get(), this.f32146b.get(), this.f32147c.get());
    }
}
