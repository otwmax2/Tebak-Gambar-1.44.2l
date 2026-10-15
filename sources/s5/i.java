package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Application.java */
/* JADX INFO: loaded from: classes2.dex */
final class i extends f0.e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f0.e.a.b f34819d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f34820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f34821f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f34822g;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Application.java */
    static final class b extends f0.e.a.AbstractC0232a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34823a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34824b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34825c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f0.e.a.b f34826d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f34827e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f34828f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f34829g;

        b() {
        }

        @Override // s5.f0.e.a.AbstractC0232a
        public f0.e.a a() {
            String str = this.f34823a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " identifier";
            }
            if (this.f34824b == null) {
                str2 = str2 + " version";
            }
            if (str2.isEmpty()) {
                return new i(this.f34823a, this.f34824b, this.f34825c, this.f34826d, this.f34827e, this.f34828f, this.f34829g);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.a.AbstractC0232a
        public f0.e.a.AbstractC0232a b(String str) {
            this.f34828f = str;
            return this;
        }

        @Override // s5.f0.e.a.AbstractC0232a
        public f0.e.a.AbstractC0232a c(String str) {
            this.f34829g = str;
            return this;
        }

        @Override // s5.f0.e.a.AbstractC0232a
        public f0.e.a.AbstractC0232a d(String str) {
            this.f34825c = str;
            return this;
        }

        @Override // s5.f0.e.a.AbstractC0232a
        public f0.e.a.AbstractC0232a e(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.f34823a = str;
            return this;
        }

        @Override // s5.f0.e.a.AbstractC0232a
        public f0.e.a.AbstractC0232a f(String str) {
            this.f34827e = str;
            return this;
        }

        @Override // s5.f0.e.a.AbstractC0232a
        public f0.e.a.AbstractC0232a g(String str) {
            Objects.requireNonNull(str, "Null version");
            this.f34824b = str;
            return this;
        }
    }

    @Override // s5.f0.e.a
    public String b() {
        return this.f34821f;
    }

    @Override // s5.f0.e.a
    public String c() {
        return this.f34822g;
    }

    @Override // s5.f0.e.a
    public String d() {
        return this.f34818c;
    }

    @Override // s5.f0.e.a
    public String e() {
        return this.f34816a;
    }

    public boolean equals(Object obj) {
        String str;
        f0.e.a.b bVar;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.a)) {
            return false;
        }
        f0.e.a aVar = (f0.e.a) obj;
        if (this.f34816a.equals(aVar.e()) && this.f34817b.equals(aVar.h()) && ((str = this.f34818c) != null ? str.equals(aVar.d()) : aVar.d() == null) && ((bVar = this.f34819d) != null ? bVar.equals(aVar.g()) : aVar.g() == null) && ((str2 = this.f34820e) != null ? str2.equals(aVar.f()) : aVar.f() == null) && ((str3 = this.f34821f) != null ? str3.equals(aVar.b()) : aVar.b() == null)) {
            String str4 = this.f34822g;
            if (str4 == null) {
                if (aVar.c() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // s5.f0.e.a
    public String f() {
        return this.f34820e;
    }

    @Override // s5.f0.e.a
    public f0.e.a.b g() {
        return this.f34819d;
    }

    @Override // s5.f0.e.a
    public String h() {
        return this.f34817b;
    }

    public int hashCode() {
        int iHashCode = (((this.f34816a.hashCode() ^ 1000003) * 1000003) ^ this.f34817b.hashCode()) * 1000003;
        String str = this.f34818c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        f0.e.a.b bVar = this.f34819d;
        int iHashCode3 = (iHashCode2 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        String str2 = this.f34820e;
        int iHashCode4 = (iHashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f34821f;
        int iHashCode5 = (iHashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f34822g;
        return iHashCode5 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "Application{identifier=" + this.f34816a + ", version=" + this.f34817b + ", displayVersion=" + this.f34818c + ", organization=" + this.f34819d + ", installationUuid=" + this.f34820e + ", developmentPlatform=" + this.f34821f + ", developmentPlatformVersion=" + this.f34822g + "}";
    }

    private i(String str, String str2, String str3, f0.e.a.b bVar, String str4, String str5, String str6) {
        this.f34816a = str;
        this.f34817b = str2;
        this.f34818c = str3;
        this.f34819d = bVar;
        this.f34820e = str4;
        this.f34821f = str5;
        this.f34822g = str6;
    }
}
