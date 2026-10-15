package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: ManifestSchemaFactory.java */
/* JADX INFO: loaded from: classes.dex */
final class j0 implements h1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q0 f2754b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0 f2755a;

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    static class a implements q0 {
        a() {
        }

        @Override // androidx.datastore.preferences.protobuf.q0
        public p0 a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // androidx.datastore.preferences.protobuf.q0
        public boolean b(Class<?> cls) {
            return false;
        }
    }

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    private static class b implements q0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private q0[] f2756a;

        b(q0... q0VarArr) {
            this.f2756a = q0VarArr;
        }

        @Override // androidx.datastore.preferences.protobuf.q0
        public p0 a(Class<?> cls) {
            for (q0 q0Var : this.f2756a) {
                if (q0Var.b(cls)) {
                    return q0Var.a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        @Override // androidx.datastore.preferences.protobuf.q0
        public boolean b(Class<?> cls) {
            for (q0 q0Var : this.f2756a) {
                if (q0Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public j0() {
        this(b());
    }

    private static q0 b() {
        return new b(x.c(), c());
    }

    private static q0 c() {
        try {
            return (q0) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f2754b;
        }
    }

    private static boolean d(p0 p0Var) {
        return p0Var.c() == b1.PROTO2;
    }

    private static <T> g1<T> e(Class<T> cls, p0 p0Var) {
        return y.class.isAssignableFrom(cls) ? d(p0Var) ? u0.N(cls, p0Var, y0.b(), h0.b(), i1.M(), s.b(), o0.b()) : u0.N(cls, p0Var, y0.b(), h0.b(), i1.M(), null, o0.b()) : d(p0Var) ? u0.N(cls, p0Var, y0.a(), h0.a(), i1.H(), s.a(), o0.a()) : u0.N(cls, p0Var, y0.a(), h0.a(), i1.I(), null, o0.a());
    }

    @Override // androidx.datastore.preferences.protobuf.h1
    public <T> g1<T> a(Class<T> cls) {
        i1.J(cls);
        p0 p0VarA = this.f2755a.a(cls);
        return p0VarA.a() ? y.class.isAssignableFrom(cls) ? v0.l(i1.M(), s.b(), p0VarA.b()) : v0.l(i1.H(), s.a(), p0VarA.b()) : e(cls, p0VarA);
    }

    private j0(q0 q0Var) {
        this.f2755a = (q0) a0.b(q0Var, "messageInfoFactory");
    }
}
