package o3;

/* JADX INFO: compiled from: LogEventDropped.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f32940c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f32941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f32942b;

    /* JADX INFO: compiled from: LogEventDropped.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f32943a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f32944b = b.REASON_UNKNOWN;

        a() {
        }

        public c a() {
            return new c(this.f32943a, this.f32944b);
        }

        public a b(long j10) {
            this.f32943a = j10;
            return this;
        }

        public a c(b bVar) {
            this.f32944b = bVar;
            return this;
        }
    }

    /* JADX INFO: compiled from: LogEventDropped.java */
    public enum b implements g6.c {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f32953o;

        b(int i10) {
            this.f32953o = i10;
        }

        @Override // g6.c
        public int h() {
            return this.f32953o;
        }
    }

    c(long j10, b bVar) {
        this.f32941a = j10;
        this.f32942b = bVar;
    }

    public static a c() {
        return new a();
    }

    @g6.d(tag = 1)
    public long a() {
        return this.f32941a;
    }

    @g6.d(tag = 3)
    public b b() {
        return this.f32942b;
    }
}
