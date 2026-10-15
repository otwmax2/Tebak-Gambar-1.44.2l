package t3;

import android.content.Context;
import javax.inject.Provider;

/* JADX INFO: compiled from: SchemaManager_Factory.java */
/* JADX INFO: loaded from: classes.dex */
public final class u0 implements n3.b<t0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Context> f35379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<String> f35380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<Integer> f35381c;

    public u0(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        this.f35379a = provider;
        this.f35380b = provider2;
        this.f35381c = provider3;
    }

    public static u0 a(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        return new u0(provider, provider2, provider3);
    }

    public static t0 c(Context context, String str, int i10) {
        return new t0(context, str, i10);
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public t0 get() {
        return c(this.f35379a.get(), this.f35380b.get(), this.f35381c.get().intValue());
    }
}
