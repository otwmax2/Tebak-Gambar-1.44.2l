package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.java */
/* JADX INFO: loaded from: classes2.dex */
final class q extends f0.e.d.a.b.AbstractC0238d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f34905c;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.java */
    static final class b extends f0.e.d.a.b.AbstractC0238d.AbstractC0239a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f34908c;

        b() {
        }

        @Override // s5.f0.e.d.a.b.AbstractC0238d.AbstractC0239a
        public f0.e.d.a.b.AbstractC0238d a() {
            String str = this.f34906a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " name";
            }
            if (this.f34907b == null) {
                str2 = str2 + " code";
            }
            if (this.f34908c == null) {
                str2 = str2 + " address";
            }
            if (str2.isEmpty()) {
                return new q(this.f34906a, this.f34907b, this.f34908c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.d.a.b.AbstractC0238d.AbstractC0239a
        public f0.e.d.a.b.AbstractC0238d.AbstractC0239a b(long j10) {
            this.f34908c = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0238d.AbstractC0239a
        public f0.e.d.a.b.AbstractC0238d.AbstractC0239a c(String str) {
            Objects.requireNonNull(str, "Null code");
            this.f34907b = str;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0238d.AbstractC0239a
        public f0.e.d.a.b.AbstractC0238d.AbstractC0239a d(String str) {
            Objects.requireNonNull(str, "Null name");
            this.f34906a = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.a.b.AbstractC0238d
    public long b() {
        return this.f34905c;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0238d
    public String c() {
        return this.f34904b;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0238d
    public String d() {
        return this.f34903a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0238d)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0238d abstractC0238d = (f0.e.d.a.b.AbstractC0238d) obj;
        return this.f34903a.equals(abstractC0238d.d()) && this.f34904b.equals(abstractC0238d.c()) && this.f34905c == abstractC0238d.b();
    }

    public int hashCode() {
        int iHashCode = (((this.f34903a.hashCode() ^ 1000003) * 1000003) ^ this.f34904b.hashCode()) * 1000003;
        long j10 = this.f34905c;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f34903a + ", code=" + this.f34904b + ", address=" + this.f34905c + "}";
    }

    private q(String str, String str2, long j10) {
        this.f34903a = str;
        this.f34904b = str2;
        this.f34905c = j10;
    }
}
