package s5;

import com.vungle.mediation.BuildConfig;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Device.java */
/* JADX INFO: loaded from: classes2.dex */
final class u extends f0.e.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Double f34933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f34935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f34936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f34937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f34938f;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Device.java */
    static final class b extends f0.e.d.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Double f34939a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f34940b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Boolean f34941c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f34942d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f34943e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Long f34944f;

        b() {
        }

        @Override // s5.f0.e.d.c.a
        public f0.e.d.c a() {
            Integer num = this.f34940b;
            String str = BuildConfig.FLAVOR;
            if (num == null) {
                str = BuildConfig.FLAVOR + " batteryVelocity";
            }
            if (this.f34941c == null) {
                str = str + " proximityOn";
            }
            if (this.f34942d == null) {
                str = str + " orientation";
            }
            if (this.f34943e == null) {
                str = str + " ramUsed";
            }
            if (this.f34944f == null) {
                str = str + " diskUsed";
            }
            if (str.isEmpty()) {
                return new u(this.f34939a, this.f34940b.intValue(), this.f34941c.booleanValue(), this.f34942d.intValue(), this.f34943e.longValue(), this.f34944f.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.c.a
        public f0.e.d.c.a b(Double d10) {
            this.f34939a = d10;
            return this;
        }

        @Override // s5.f0.e.d.c.a
        public f0.e.d.c.a c(int i10) {
            this.f34940b = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.d.c.a
        public f0.e.d.c.a d(long j10) {
            this.f34944f = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.d.c.a
        public f0.e.d.c.a e(int i10) {
            this.f34942d = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.d.c.a
        public f0.e.d.c.a f(boolean z10) {
            this.f34941c = Boolean.valueOf(z10);
            return this;
        }

        @Override // s5.f0.e.d.c.a
        public f0.e.d.c.a g(long j10) {
            this.f34943e = Long.valueOf(j10);
            return this;
        }
    }

    @Override // s5.f0.e.d.c
    public Double b() {
        return this.f34933a;
    }

    @Override // s5.f0.e.d.c
    public int c() {
        return this.f34934b;
    }

    @Override // s5.f0.e.d.c
    public long d() {
        return this.f34938f;
    }

    @Override // s5.f0.e.d.c
    public int e() {
        return this.f34936d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.c)) {
            return false;
        }
        f0.e.d.c cVar = (f0.e.d.c) obj;
        Double d10 = this.f34933a;
        if (d10 != null ? d10.equals(cVar.b()) : cVar.b() == null) {
            if (this.f34934b == cVar.c() && this.f34935c == cVar.g() && this.f34936d == cVar.e() && this.f34937e == cVar.f() && this.f34938f == cVar.d()) {
                return true;
            }
        }
        return false;
    }

    @Override // s5.f0.e.d.c
    public long f() {
        return this.f34937e;
    }

    @Override // s5.f0.e.d.c
    public boolean g() {
        return this.f34935c;
    }

    public int hashCode() {
        Double d10 = this.f34933a;
        int iHashCode = ((((((((d10 == null ? 0 : d10.hashCode()) ^ 1000003) * 1000003) ^ this.f34934b) * 1000003) ^ (this.f34935c ? 1231 : 1237)) * 1000003) ^ this.f34936d) * 1000003;
        long j10 = this.f34937e;
        long j11 = this.f34938f;
        return ((iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f34933a + ", batteryVelocity=" + this.f34934b + ", proximityOn=" + this.f34935c + ", orientation=" + this.f34936d + ", ramUsed=" + this.f34937e + ", diskUsed=" + this.f34938f + "}";
    }

    private u(Double d10, int i10, boolean z10, int i11, long j10, long j11) {
        this.f34933a = d10;
        this.f34934b = i10;
        this.f34935c = z10;
        this.f34936d = i11;
        this.f34937e = j10;
        this.f34938f = j11;
    }
}
