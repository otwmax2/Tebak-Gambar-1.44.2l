package t3;

import android.content.Context;
import javax.inject.Provider;

/* JADX INFO: compiled from: EventStoreModule_PackageNameFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements n3.b<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Context> f35319a;

    public h(Provider<Context> provider) {
        this.f35319a = provider;
    }

    public static h a(Provider<Context> provider) {
        return new h(provider);
    }

    public static String c(Context context) {
        return (String) n3.d.c(f.b(context), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String get() {
        return c(this.f35319a.get());
    }
}
