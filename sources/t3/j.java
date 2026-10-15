package t3;

/* JADX INFO: compiled from: EventStoreModule_StoreConfigFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements n3.b<e> {

    /* JADX INFO: compiled from: EventStoreModule_StoreConfigFactory.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final j f35323a = new j();
    }

    public static j a() {
        return a.f35323a;
    }

    public static e c() {
        return (e) n3.d.c(f.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e get() {
        return c();
    }
}
