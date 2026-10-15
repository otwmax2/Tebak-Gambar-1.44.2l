package t3;

import com.vungle.mediation.BuildConfig;
import t3.e;

/* JADX INFO: compiled from: AutoValue_EventStoreConfig.java */
/* JADX INFO: loaded from: classes.dex */
final class a extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f35294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f35295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f35296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f35297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f35298f;

    /* JADX INFO: compiled from: AutoValue_EventStoreConfig.java */
    static final class b extends e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f35299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f35300b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f35301c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f35302d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Integer f35303e;

        b() {
        }

        @Override // t3.e.a
        e a() {
            Long l10 = this.f35299a;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " maxStorageSizeInBytes";
            }
            if (this.f35300b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f35301c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f35302d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f35303e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f35299a.longValue(), this.f35300b.intValue(), this.f35301c.intValue(), this.f35302d.longValue(), this.f35303e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // t3.e.a
        e.a b(int i10) {
            this.f35301c = Integer.valueOf(i10);
            return this;
        }

        @Override // t3.e.a
        e.a c(long j10) {
            this.f35302d = Long.valueOf(j10);
            return this;
        }

        @Override // t3.e.a
        e.a d(int i10) {
            this.f35300b = Integer.valueOf(i10);
            return this;
        }

        @Override // t3.e.a
        e.a e(int i10) {
            this.f35303e = Integer.valueOf(i10);
            return this;
        }

        @Override // t3.e.a
        e.a f(long j10) {
            this.f35299a = Long.valueOf(j10);
            return this;
        }
    }

    @Override // t3.e
    int b() {
        return this.f35296d;
    }

    @Override // t3.e
    long c() {
        return this.f35297e;
    }

    @Override // t3.e
    int d() {
        return this.f35295c;
    }

    @Override // t3.e
    int e() {
        return this.f35298f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f35294b == eVar.f() && this.f35295c == eVar.d() && this.f35296d == eVar.b() && this.f35297e == eVar.c() && this.f35298f == eVar.e();
    }

    @Override // t3.e
    long f() {
        return this.f35294b;
    }

    public int hashCode() {
        long j10 = this.f35294b;
        int i10 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f35295c) * 1000003) ^ this.f35296d) * 1000003;
        long j11 = this.f35297e;
        return this.f35298f ^ ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f35294b + ", loadBatchSize=" + this.f35295c + ", criticalSectionEnterTimeoutMs=" + this.f35296d + ", eventCleanUpAge=" + this.f35297e + ", maxBlobByteSizePerRow=" + this.f35298f + "}";
    }

    private a(long j10, int i10, int i11, long j11, int i12) {
        this.f35294b = j10;
        this.f35295c = i10;
        this.f35296d = i11;
        this.f35297e = j11;
        this.f35298f = i12;
    }
}
