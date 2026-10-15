package y9;

import i9.z;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: classes2.dex */
public class g implements Iterable<Long>, u9.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f37143r = new a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f37144o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f37145p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f37146q;

    /* JADX INFO: compiled from: Progressions.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public g(long j10, long j11, long j12) {
        if (j12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j12 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.f37144o = j10;
        this.f37145p = n9.c.d(j10, j11, j12);
        this.f37146q = j12;
    }

    public final long c() {
        return this.f37144o;
    }

    public final long g() {
        return this.f37145p;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public z iterator() {
        return new h(this.f37144o, this.f37145p, this.f37146q);
    }
}
