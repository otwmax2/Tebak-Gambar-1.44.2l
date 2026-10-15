package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.java */
/* JADX INFO: loaded from: classes2.dex */
final class o extends f0.e.d.a.b.AbstractC0234a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f34885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f34886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f34888d;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.java */
    static final class b extends f0.e.d.a.b.AbstractC0234a.AbstractC0235a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f34889a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f34890b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34891c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f34892d;

        b() {
        }

        @Override // s5.f0.e.d.a.b.AbstractC0234a.AbstractC0235a
        public f0.e.d.a.b.AbstractC0234a a() {
            Long l10 = this.f34889a;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " baseAddress";
            }
            if (this.f34890b == null) {
                str = str + " size";
            }
            if (this.f34891c == null) {
                str = str + " name";
            }
            if (str.isEmpty()) {
                return new o(this.f34889a.longValue(), this.f34890b.longValue(), this.f34891c, this.f34892d);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.a.b.AbstractC0234a.AbstractC0235a
        public f0.e.d.a.b.AbstractC0234a.AbstractC0235a b(long j10) {
            this.f34889a = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0234a.AbstractC0235a
        public f0.e.d.a.b.AbstractC0234a.AbstractC0235a c(String str) {
            Objects.requireNonNull(str, "Null name");
            this.f34891c = str;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0234a.AbstractC0235a
        public f0.e.d.a.b.AbstractC0234a.AbstractC0235a d(long j10) {
            this.f34890b = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0234a.AbstractC0235a
        public f0.e.d.a.b.AbstractC0234a.AbstractC0235a e(String str) {
            this.f34892d = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.a.b.AbstractC0234a
    public long b() {
        return this.f34885a;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0234a
    public String c() {
        return this.f34887c;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0234a
    public long d() {
        return this.f34886b;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0234a
    public String e() {
        return this.f34888d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0234a)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0234a abstractC0234a = (f0.e.d.a.b.AbstractC0234a) obj;
        if (this.f34885a == abstractC0234a.b() && this.f34886b == abstractC0234a.d() && this.f34887c.equals(abstractC0234a.c())) {
            String str = this.f34888d;
            if (str == null) {
                if (abstractC0234a.e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0234a.e())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f34885a;
        long j11 = this.f34886b;
        int iHashCode = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f34887c.hashCode()) * 1000003;
        String str = this.f34888d;
        return (str == null ? 0 : str.hashCode()) ^ iHashCode;
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f34885a + ", size=" + this.f34886b + ", name=" + this.f34887c + ", uuid=" + this.f34888d + "}";
    }

    private o(long j10, long j11, String str, String str2) {
        this.f34885a = j10;
        this.f34886b = j11;
        this.f34887c = str;
        this.f34888d = str2;
    }
}
