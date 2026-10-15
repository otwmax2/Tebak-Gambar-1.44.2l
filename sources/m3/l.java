package m3;

import android.content.Context;
import javax.inject.Provider;

/* JADX INFO: compiled from: MetadataBackendRegistry_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements n3.b<k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Context> f32153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<i> f32154b;

    public l(Provider<Context> provider, Provider<i> provider2) {
        this.f32153a = provider;
        this.f32154b = provider2;
    }

    public static l a(Provider<Context> provider, Provider<i> provider2) {
        return new l(provider, provider2);
    }

    public static k c(Context context, Object obj) {
        return new k(context, (i) obj);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public k get() {
        return c(this.f32153a.get(), this.f32154b.get());
    }
}
