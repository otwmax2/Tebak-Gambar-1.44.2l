package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: GeneratedMessageInfoFactory.java */
/* JADX INFO: loaded from: classes.dex */
class x implements q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final x f2966a = new x();

    private x() {
    }

    public static x c() {
        return f2966a;
    }

    @Override // androidx.datastore.preferences.protobuf.q0
    public p0 a(Class<?> cls) {
        if (!y.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (p0) y.v(cls.asSubclass(y.class)).o();
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.q0
    public boolean b(Class<?> cls) {
        return y.class.isAssignableFrom(cls);
    }
}
