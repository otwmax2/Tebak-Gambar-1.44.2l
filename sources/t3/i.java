package t3;

/* JADX INFO: compiled from: EventStoreModule_SchemaVersionFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements n3.b<Integer> {

    /* JADX INFO: compiled from: EventStoreModule_SchemaVersionFactory.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final i f35321a = new i();
    }

    public static i a() {
        return a.f35321a;
    }

    public static int c() {
        return f.c();
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer get() {
        return Integer.valueOf(c());
    }
}
