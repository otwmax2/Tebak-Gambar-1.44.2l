package k3;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import k3.l;

/* JADX INFO: compiled from: AutoValue_LogEvent.java */
/* JADX INFO: loaded from: classes.dex */
final class f extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f31437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Integer f31438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f31439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f31440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f31441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f31442f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o f31443g;

    /* JADX INFO: compiled from: AutoValue_LogEvent.java */
    static final class b extends l.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f31444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f31445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f31446c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f31447d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f31448e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Long f31449f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private o f31450g;

        b() {
        }

        @Override // k3.l.a
        public l a() {
            Long l10 = this.f31444a;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " eventTimeMs";
            }
            if (this.f31446c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f31449f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new f(this.f31444a.longValue(), this.f31445b, this.f31446c.longValue(), this.f31447d, this.f31448e, this.f31449f.longValue(), this.f31450g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // k3.l.a
        public l.a b(Integer num) {
            this.f31445b = num;
            return this;
        }

        @Override // k3.l.a
        public l.a c(long j10) {
            this.f31444a = Long.valueOf(j10);
            return this;
        }

        @Override // k3.l.a
        public l.a d(long j10) {
            this.f31446c = Long.valueOf(j10);
            return this;
        }

        @Override // k3.l.a
        public l.a e(o oVar) {
            this.f31450g = oVar;
            return this;
        }

        @Override // k3.l.a
        l.a f(byte[] bArr) {
            this.f31447d = bArr;
            return this;
        }

        @Override // k3.l.a
        l.a g(String str) {
            this.f31448e = str;
            return this;
        }

        @Override // k3.l.a
        public l.a h(long j10) {
            this.f31449f = Long.valueOf(j10);
            return this;
        }
    }

    @Override // k3.l
    public Integer b() {
        return this.f31438b;
    }

    @Override // k3.l
    public long c() {
        return this.f31437a;
    }

    @Override // k3.l
    public long d() {
        return this.f31439c;
    }

    @Override // k3.l
    public o e() {
        return this.f31443g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f31437a == lVar.c() && ((num = this.f31438b) != null ? num.equals(lVar.b()) : lVar.b() == null) && this.f31439c == lVar.d()) {
            if (Arrays.equals(this.f31440d, lVar instanceof f ? ((f) lVar).f31440d : lVar.f()) && ((str = this.f31441e) != null ? str.equals(lVar.g()) : lVar.g() == null) && this.f31442f == lVar.h()) {
                o oVar = this.f31443g;
                if (oVar == null) {
                    if (lVar.e() == null) {
                        return true;
                    }
                } else if (oVar.equals(lVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // k3.l
    public byte[] f() {
        return this.f31440d;
    }

    @Override // k3.l
    public String g() {
        return this.f31441e;
    }

    @Override // k3.l
    public long h() {
        return this.f31442f;
    }

    public int hashCode() {
        long j10 = this.f31437a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f31438b;
        int iHashCode = num == null ? 0 : num.hashCode();
        long j11 = this.f31439c;
        int iHashCode2 = (((((i10 ^ iHashCode) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f31440d)) * 1000003;
        String str = this.f31441e;
        int iHashCode3 = str == null ? 0 : str.hashCode();
        long j12 = this.f31442f;
        int i11 = (((iHashCode2 ^ iHashCode3) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        o oVar = this.f31443g;
        return i11 ^ (oVar != null ? oVar.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f31437a + ", eventCode=" + this.f31438b + ", eventUptimeMs=" + this.f31439c + ", sourceExtension=" + Arrays.toString(this.f31440d) + ", sourceExtensionJsonProto3=" + this.f31441e + ", timezoneOffsetSeconds=" + this.f31442f + ", networkConnectionInfo=" + this.f31443g + "}";
    }

    private f(long j10, Integer num, long j11, byte[] bArr, String str, long j12, o oVar) {
        this.f31437a = j10;
        this.f31438b = num;
        this.f31439c = j11;
        this.f31440d = bArr;
        this.f31441e = str;
        this.f31442f = j12;
        this.f31443g = oVar;
    }
}
