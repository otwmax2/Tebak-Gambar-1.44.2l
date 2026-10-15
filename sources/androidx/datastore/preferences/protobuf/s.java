package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: ExtensionSchemas.java */
/* JADX INFO: loaded from: classes.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q<?> f2860a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q<?> f2861b = c();

    static q<?> a() {
        q<?> qVar = f2861b;
        if (qVar != null) {
            return qVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static q<?> b() {
        return f2860a;
    }

    private static q<?> c() {
        try {
            return (q) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
