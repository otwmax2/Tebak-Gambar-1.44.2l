package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment.java */
/* JADX INFO: loaded from: classes2.dex */
final class w extends f0.e.d.AbstractC0246e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f0.e.d.AbstractC0246e.b f34947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f34950d;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment.java */
    static final class b extends f0.e.d.AbstractC0246e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f0.e.d.AbstractC0246e.b f34951a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34952b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34953c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f34954d;

        b() {
        }

        @Override // s5.f0.e.d.AbstractC0246e.a
        public f0.e.d.AbstractC0246e a() {
            f0.e.d.AbstractC0246e.b bVar = this.f34951a;
            String str = BuildConfig.FLAVOR;
            if (bVar == null) {
                str = BuildConfig.FLAVOR + " rolloutVariant";
            }
            if (this.f34952b == null) {
                str = str + " parameterKey";
            }
            if (this.f34953c == null) {
                str = str + " parameterValue";
            }
            if (this.f34954d == null) {
                str = str + " templateVersion";
            }
            if (str.isEmpty()) {
                return new w(this.f34951a, this.f34952b, this.f34953c, this.f34954d.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.AbstractC0246e.a
        public f0.e.d.AbstractC0246e.a b(String str) {
            Objects.requireNonNull(str, "Null parameterKey");
            this.f34952b = str;
            return this;
        }

        @Override // s5.f0.e.d.AbstractC0246e.a
        public f0.e.d.AbstractC0246e.a c(String str) {
            Objects.requireNonNull(str, "Null parameterValue");
            this.f34953c = str;
            return this;
        }

        @Override // s5.f0.e.d.AbstractC0246e.a
        public f0.e.d.AbstractC0246e.a d(f0.e.d.AbstractC0246e.b bVar) {
            Objects.requireNonNull(bVar, "Null rolloutVariant");
            this.f34951a = bVar;
            return this;
        }

        @Override // s5.f0.e.d.AbstractC0246e.a
        public f0.e.d.AbstractC0246e.a e(long j10) {
            this.f34954d = Long.valueOf(j10);
            return this;
        }
    }

    @Override // s5.f0.e.d.AbstractC0246e
    public String b() {
        return this.f34948b;
    }

    @Override // s5.f0.e.d.AbstractC0246e
    public String c() {
        return this.f34949c;
    }

    @Override // s5.f0.e.d.AbstractC0246e
    public f0.e.d.AbstractC0246e.b d() {
        return this.f34947a;
    }

    @Override // s5.f0.e.d.AbstractC0246e
    public long e() {
        return this.f34950d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0246e)) {
            return false;
        }
        f0.e.d.AbstractC0246e abstractC0246e = (f0.e.d.AbstractC0246e) obj;
        return this.f34947a.equals(abstractC0246e.d()) && this.f34948b.equals(abstractC0246e.b()) && this.f34949c.equals(abstractC0246e.c()) && this.f34950d == abstractC0246e.e();
    }

    public int hashCode() {
        int iHashCode = (((((this.f34947a.hashCode() ^ 1000003) * 1000003) ^ this.f34948b.hashCode()) * 1000003) ^ this.f34949c.hashCode()) * 1000003;
        long j10 = this.f34950d;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutVariant=" + this.f34947a + ", parameterKey=" + this.f34948b + ", parameterValue=" + this.f34949c + ", templateVersion=" + this.f34950d + "}";
    }

    private w(f0.e.d.AbstractC0246e.b bVar, String str, String str2, long j10) {
        this.f34947a = bVar;
        this.f34948b = str;
        this.f34949c = str2;
        this.f34950d = j10;
    }
}
