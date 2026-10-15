package o3;

/* JADX INFO: compiled from: StorageMetrics.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final e f32959c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f32960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f32961b;

    /* JADX INFO: compiled from: StorageMetrics.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f32962a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f32963b = 0;

        a() {
        }

        public e a() {
            return new e(this.f32962a, this.f32963b);
        }

        public a b(long j10) {
            this.f32962a = j10;
            return this;
        }

        public a c(long j10) {
            this.f32963b = j10;
            return this;
        }
    }

    e(long j10, long j11) {
        this.f32960a = j10;
        this.f32961b = j11;
    }

    public static a c() {
        return new a();
    }

    @g6.d(tag = 1)
    public long a() {
        return this.f32960a;
    }

    @g6.d(tag = 2)
    public long b() {
        return this.f32961b;
    }
}
