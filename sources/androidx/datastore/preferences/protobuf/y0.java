package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: NewInstanceSchemas.java */
/* JADX INFO: loaded from: classes.dex */
final class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final w0 f2986a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final w0 f2987b = new x0();

    static w0 a() {
        return f2986a;
    }

    static w0 b() {
        return f2987b;
    }

    private static w0 c() {
        try {
            return (w0) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
