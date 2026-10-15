package o3;

/* JADX INFO: compiled from: GlobalMetrics.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f32937b = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f32938a;

    /* JADX INFO: compiled from: GlobalMetrics.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f32939a = null;

        a() {
        }

        public b a() {
            return new b(this.f32939a);
        }

        public a b(e eVar) {
            this.f32939a = eVar;
            return this;
        }
    }

    b(e eVar) {
        this.f32938a = eVar;
    }

    public static a b() {
        return new a();
    }

    @g6.d(tag = 1)
    public e a() {
        return this.f32938a;
    }
}
