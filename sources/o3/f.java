package o3;

/* JADX INFO: compiled from: TimeWindow.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final f f32964c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f32965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f32966b;

    /* JADX INFO: compiled from: TimeWindow.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f32967a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f32968b = 0;

        a() {
        }

        public f a() {
            return new f(this.f32967a, this.f32968b);
        }

        public a b(long j10) {
            this.f32968b = j10;
            return this;
        }

        public a c(long j10) {
            this.f32967a = j10;
            return this;
        }
    }

    f(long j10, long j11) {
        this.f32965a = j10;
        this.f32966b = j11;
    }

    public static a c() {
        return new a();
    }

    @g6.d(tag = 2)
    public long a() {
        return this.f32966b;
    }

    @g6.d(tag = 1)
    public long b() {
        return this.f32965a;
    }
}
