package v3;

/* JADX INFO: compiled from: TimeModule_UptimeClockFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements n3.b<v3.a> {

    /* JADX INFO: compiled from: TimeModule_UptimeClockFactory.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f35796a = new d();
    }

    public static d a() {
        return a.f35796a;
    }

    public static v3.a c() {
        return (v3.a) n3.d.c(b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public v3.a get() {
        return c();
    }
}
