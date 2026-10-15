package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends f0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f34714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f34715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f34716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f34717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f34718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f34719i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final f0.e f34720j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final f0.d f34721k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final f0.a f34722l;

    /* JADX INFO: renamed from: s5.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport.java */
    static final class C0229b extends f0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f34725c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f34726d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f34727e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f34728f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f34729g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f34730h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private f0.e f34731i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private f0.d f34732j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private f0.a f34733k;

        @Override // s5.f0.b
        public f0 a() {
            String str = this.f34723a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " sdkVersion";
            }
            if (this.f34724b == null) {
                str2 = str2 + " gmpAppId";
            }
            if (this.f34725c == null) {
                str2 = str2 + " platform";
            }
            if (this.f34726d == null) {
                str2 = str2 + " installationUuid";
            }
            if (this.f34729g == null) {
                str2 = str2 + " buildVersion";
            }
            if (this.f34730h == null) {
                str2 = str2 + " displayVersion";
            }
            if (str2.isEmpty()) {
                return new b(this.f34723a, this.f34724b, this.f34725c.intValue(), this.f34726d, this.f34727e, this.f34728f, this.f34729g, this.f34730h, this.f34731i, this.f34732j, this.f34733k);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.b
        public f0.b b(f0.a aVar) {
            this.f34733k = aVar;
            return this;
        }

        @Override // s5.f0.b
        public f0.b c(String str) {
            this.f34728f = str;
            return this;
        }

        @Override // s5.f0.b
        public f0.b d(String str) {
            Objects.requireNonNull(str, "Null buildVersion");
            this.f34729g = str;
            return this;
        }

        @Override // s5.f0.b
        public f0.b e(String str) {
            Objects.requireNonNull(str, "Null displayVersion");
            this.f34730h = str;
            return this;
        }

        @Override // s5.f0.b
        public f0.b f(String str) {
            this.f34727e = str;
            return this;
        }

        @Override // s5.f0.b
        public f0.b g(String str) {
            Objects.requireNonNull(str, "Null gmpAppId");
            this.f34724b = str;
            return this;
        }

        @Override // s5.f0.b
        public f0.b h(String str) {
            Objects.requireNonNull(str, "Null installationUuid");
            this.f34726d = str;
            return this;
        }

        @Override // s5.f0.b
        public f0.b i(f0.d dVar) {
            this.f34732j = dVar;
            return this;
        }

        @Override // s5.f0.b
        public f0.b j(int i10) {
            this.f34725c = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.b
        public f0.b k(String str) {
            Objects.requireNonNull(str, "Null sdkVersion");
            this.f34723a = str;
            return this;
        }

        @Override // s5.f0.b
        public f0.b l(f0.e eVar) {
            this.f34731i = eVar;
            return this;
        }

        C0229b() {
        }

        private C0229b(f0 f0Var) {
            this.f34723a = f0Var.l();
            this.f34724b = f0Var.h();
            this.f34725c = Integer.valueOf(f0Var.k());
            this.f34726d = f0Var.i();
            this.f34727e = f0Var.g();
            this.f34728f = f0Var.d();
            this.f34729g = f0Var.e();
            this.f34730h = f0Var.f();
            this.f34731i = f0Var.m();
            this.f34732j = f0Var.j();
            this.f34733k = f0Var.c();
        }
    }

    @Override // s5.f0
    public f0.a c() {
        return this.f34722l;
    }

    @Override // s5.f0
    public String d() {
        return this.f34717g;
    }

    @Override // s5.f0
    public String e() {
        return this.f34718h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        f0.e eVar;
        f0.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.f34712b.equals(f0Var.l()) && this.f34713c.equals(f0Var.h()) && this.f34714d == f0Var.k() && this.f34715e.equals(f0Var.i()) && ((str = this.f34716f) != null ? str.equals(f0Var.g()) : f0Var.g() == null) && ((str2 = this.f34717g) != null ? str2.equals(f0Var.d()) : f0Var.d() == null) && this.f34718h.equals(f0Var.e()) && this.f34719i.equals(f0Var.f()) && ((eVar = this.f34720j) != null ? eVar.equals(f0Var.m()) : f0Var.m() == null) && ((dVar = this.f34721k) != null ? dVar.equals(f0Var.j()) : f0Var.j() == null)) {
            f0.a aVar = this.f34722l;
            if (aVar == null) {
                if (f0Var.c() == null) {
                    return true;
                }
            } else if (aVar.equals(f0Var.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // s5.f0
    public String f() {
        return this.f34719i;
    }

    @Override // s5.f0
    public String g() {
        return this.f34716f;
    }

    @Override // s5.f0
    public String h() {
        return this.f34713c;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f34712b.hashCode() ^ 1000003) * 1000003) ^ this.f34713c.hashCode()) * 1000003) ^ this.f34714d) * 1000003) ^ this.f34715e.hashCode()) * 1000003;
        String str = this.f34716f;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f34717g;
        int iHashCode3 = (((((iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003) ^ this.f34718h.hashCode()) * 1000003) ^ this.f34719i.hashCode()) * 1000003;
        f0.e eVar = this.f34720j;
        int iHashCode4 = (iHashCode3 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        f0.d dVar = this.f34721k;
        int iHashCode5 = (iHashCode4 ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        f0.a aVar = this.f34722l;
        return iHashCode5 ^ (aVar != null ? aVar.hashCode() : 0);
    }

    @Override // s5.f0
    public String i() {
        return this.f34715e;
    }

    @Override // s5.f0
    public f0.d j() {
        return this.f34721k;
    }

    @Override // s5.f0
    public int k() {
        return this.f34714d;
    }

    @Override // s5.f0
    public String l() {
        return this.f34712b;
    }

    @Override // s5.f0
    public f0.e m() {
        return this.f34720j;
    }

    @Override // s5.f0
    protected f0.b n() {
        return new C0229b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f34712b + ", gmpAppId=" + this.f34713c + ", platform=" + this.f34714d + ", installationUuid=" + this.f34715e + ", firebaseInstallationId=" + this.f34716f + ", appQualitySessionId=" + this.f34717g + ", buildVersion=" + this.f34718h + ", displayVersion=" + this.f34719i + ", session=" + this.f34720j + ", ndkPayload=" + this.f34721k + ", appExitInfo=" + this.f34722l + "}";
    }

    private b(String str, String str2, int i10, String str3, String str4, String str5, String str6, String str7, f0.e eVar, f0.d dVar, f0.a aVar) {
        this.f34712b = str;
        this.f34713c = str2;
        this.f34714d = i10;
        this.f34715e = str3;
        this.f34716f = str4;
        this.f34717g = str5;
        this.f34718h = str6;
        this.f34719i = str7;
        this.f34720j = eVar;
        this.f34721k = dVar;
        this.f34722l = aVar;
    }
}
