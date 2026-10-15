package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_OperatingSystem.java */
/* JADX INFO: loaded from: classes2.dex */
final class z extends f0.e.AbstractC0247e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f34961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f34964d;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_OperatingSystem.java */
    static final class b extends f0.e.AbstractC0247e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f34965a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34966b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34967c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Boolean f34968d;

        b() {
        }

        @Override // s5.f0.e.AbstractC0247e.a
        public f0.e.AbstractC0247e a() {
            Integer num = this.f34965a;
            String str = BuildConfig.FLAVOR;
            if (num == null) {
                str = BuildConfig.FLAVOR + " platform";
            }
            if (this.f34966b == null) {
                str = str + " version";
            }
            if (this.f34967c == null) {
                str = str + " buildVersion";
            }
            if (this.f34968d == null) {
                str = str + " jailbroken";
            }
            if (str.isEmpty()) {
                return new z(this.f34965a.intValue(), this.f34966b, this.f34967c, this.f34968d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.AbstractC0247e.a
        public f0.e.AbstractC0247e.a b(String str) {
            Objects.requireNonNull(str, "Null buildVersion");
            this.f34967c = str;
            return this;
        }

        @Override // s5.f0.e.AbstractC0247e.a
        public f0.e.AbstractC0247e.a c(boolean z10) {
            this.f34968d = Boolean.valueOf(z10);
            return this;
        }

        @Override // s5.f0.e.AbstractC0247e.a
        public f0.e.AbstractC0247e.a d(int i10) {
            this.f34965a = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.AbstractC0247e.a
        public f0.e.AbstractC0247e.a e(String str) {
            Objects.requireNonNull(str, "Null version");
            this.f34966b = str;
            return this;
        }
    }

    @Override // s5.f0.e.AbstractC0247e
    public String b() {
        return this.f34963c;
    }

    @Override // s5.f0.e.AbstractC0247e
    public int c() {
        return this.f34961a;
    }

    @Override // s5.f0.e.AbstractC0247e
    public String d() {
        return this.f34962b;
    }

    @Override // s5.f0.e.AbstractC0247e
    public boolean e() {
        return this.f34964d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.AbstractC0247e)) {
            return false;
        }
        f0.e.AbstractC0247e abstractC0247e = (f0.e.AbstractC0247e) obj;
        return this.f34961a == abstractC0247e.c() && this.f34962b.equals(abstractC0247e.d()) && this.f34963c.equals(abstractC0247e.b()) && this.f34964d == abstractC0247e.e();
    }

    public int hashCode() {
        return ((((((this.f34961a ^ 1000003) * 1000003) ^ this.f34962b.hashCode()) * 1000003) ^ this.f34963c.hashCode()) * 1000003) ^ (this.f34964d ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f34961a + ", version=" + this.f34962b + ", buildVersion=" + this.f34963c + ", jailbroken=" + this.f34964d + "}";
    }

    private z(int i10, String str, String str2, boolean z10) {
        this.f34961a = i10;
        this.f34962b = str;
        this.f34963c = str2;
        this.f34964d = z10;
    }
}
