package t3;

/* JADX INFO: compiled from: EventStoreModule_DbNameFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements n3.b<String> {

    /* JADX INFO: compiled from: EventStoreModule_DbNameFactory.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final g f35317a = new g();
    }

    public static g a() {
        return a.f35317a;
    }

    public static String b() {
        return (String) n3.d.c(f.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public String get() {
        return b();
    }
}
