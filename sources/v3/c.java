package v3;

/* JADX INFO: compiled from: TimeModule_EventClockFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements n3.b<v3.a> {

    /* JADX INFO: compiled from: TimeModule_EventClockFactory.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f35795a = new c();
    }

    public static c a() {
        return a.f35795a;
    }

    public static v3.a b() {
        return (v3.a) n3.d.c(b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public v3.a get() {
        return b();
    }
}
