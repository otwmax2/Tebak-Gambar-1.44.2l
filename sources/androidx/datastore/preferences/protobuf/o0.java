package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: MapFieldSchemas.java */
/* JADX INFO: loaded from: classes.dex */
final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final m0 f2813a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final m0 f2814b = new n0();

    static m0 a() {
        return f2813a;
    }

    static m0 b() {
        return f2814b;
    }

    private static m0 c() {
        try {
            return (m0) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
