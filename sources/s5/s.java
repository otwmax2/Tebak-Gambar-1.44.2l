package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.java */
/* JADX INFO: loaded from: classes2.dex */
final class s extends f0.e.d.a.b.AbstractC0240e.AbstractC0242b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f34915a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f34918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f34919e;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.java */
    static final class b extends f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f34920a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34921b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34922c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f34923d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Integer f34924e;

        b() {
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0242b a() {
            Long l10 = this.f34920a;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " pc";
            }
            if (this.f34921b == null) {
                str = str + " symbol";
            }
            if (this.f34923d == null) {
                str = str + " offset";
            }
            if (this.f34924e == null) {
                str = str + " importance";
            }
            if (str.isEmpty()) {
                return new s(this.f34920a.longValue(), this.f34921b, this.f34922c, this.f34923d.longValue(), this.f34924e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a b(String str) {
            this.f34922c = str;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a c(int i10) {
            this.f34924e = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a d(long j10) {
            this.f34923d = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a e(long j10) {
            this.f34920a = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a f(String str) {
            Objects.requireNonNull(str, "Null symbol");
            this.f34921b = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b
    public String b() {
        return this.f34917c;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b
    public int c() {
        return this.f34919e;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b
    public long d() {
        return this.f34918d;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b
    public long e() {
        return this.f34915a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0240e.AbstractC0242b)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0240e.AbstractC0242b abstractC0242b = (f0.e.d.a.b.AbstractC0240e.AbstractC0242b) obj;
        return this.f34915a == abstractC0242b.e() && this.f34916b.equals(abstractC0242b.f()) && ((str = this.f34917c) != null ? str.equals(abstractC0242b.b()) : abstractC0242b.b() == null) && this.f34918d == abstractC0242b.d() && this.f34919e == abstractC0242b.c();
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b
    public String f() {
        return this.f34916b;
    }

    public int hashCode() {
        long j10 = this.f34915a;
        int iHashCode = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f34916b.hashCode()) * 1000003;
        String str = this.f34917c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j11 = this.f34918d;
        return this.f34919e ^ ((iHashCode2 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "Frame{pc=" + this.f34915a + ", symbol=" + this.f34916b + ", file=" + this.f34917c + ", offset=" + this.f34918d + ", importance=" + this.f34919e + "}";
    }

    private s(long j10, String str, String str2, long j11, int i10) {
        this.f34915a = j10;
        this.f34916b = str;
        this.f34917c = str2;
        this.f34918d = j11;
        this.f34919e = i10;
    }
}
