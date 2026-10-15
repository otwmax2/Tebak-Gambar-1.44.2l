package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session.java */
/* JADX INFO: loaded from: classes2.dex */
final class h extends f0.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f34795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Long f34796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f34797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final f0.e.a f34798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f0.e.f f34799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final f0.e.AbstractC0247e f34800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final f0.e.c f34801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List<f0.e.d> f34802k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f34803l;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session.java */
    static final class b extends f0.e.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34806c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f34807d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f34808e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Boolean f34809f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private f0.e.a f34810g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private f0.e.f f34811h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private f0.e.AbstractC0247e f34812i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private f0.e.c f34813j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private List<f0.e.d> f34814k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Integer f34815l;

        @Override // s5.f0.e.b
        public f0.e a() {
            String str = this.f34804a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " generator";
            }
            if (this.f34805b == null) {
                str2 = str2 + " identifier";
            }
            if (this.f34807d == null) {
                str2 = str2 + " startedAt";
            }
            if (this.f34809f == null) {
                str2 = str2 + " crashed";
            }
            if (this.f34810g == null) {
                str2 = str2 + " app";
            }
            if (this.f34815l == null) {
                str2 = str2 + " generatorType";
            }
            if (str2.isEmpty()) {
                return new h(this.f34804a, this.f34805b, this.f34806c, this.f34807d.longValue(), this.f34808e, this.f34809f.booleanValue(), this.f34810g, this.f34811h, this.f34812i, this.f34813j, this.f34814k, this.f34815l.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.b
        public f0.e.b b(f0.e.a aVar) {
            Objects.requireNonNull(aVar, "Null app");
            this.f34810g = aVar;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b c(String str) {
            this.f34806c = str;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b d(boolean z10) {
            this.f34809f = Boolean.valueOf(z10);
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b e(f0.e.c cVar) {
            this.f34813j = cVar;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b f(Long l10) {
            this.f34808e = l10;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b g(List<f0.e.d> list) {
            this.f34814k = list;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b h(String str) {
            Objects.requireNonNull(str, "Null generator");
            this.f34804a = str;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b i(int i10) {
            this.f34815l = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b j(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.f34805b = str;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b l(f0.e.AbstractC0247e abstractC0247e) {
            this.f34812i = abstractC0247e;
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b m(long j10) {
            this.f34807d = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.b
        public f0.e.b n(f0.e.f fVar) {
            this.f34811h = fVar;
            return this;
        }

        b() {
        }

        private b(f0.e eVar) {
            this.f34804a = eVar.g();
            this.f34805b = eVar.i();
            this.f34806c = eVar.c();
            this.f34807d = Long.valueOf(eVar.l());
            this.f34808e = eVar.e();
            this.f34809f = Boolean.valueOf(eVar.n());
            this.f34810g = eVar.b();
            this.f34811h = eVar.m();
            this.f34812i = eVar.k();
            this.f34813j = eVar.d();
            this.f34814k = eVar.f();
            this.f34815l = Integer.valueOf(eVar.h());
        }
    }

    @Override // s5.f0.e
    public f0.e.a b() {
        return this.f34798g;
    }

    @Override // s5.f0.e
    public String c() {
        return this.f34794c;
    }

    @Override // s5.f0.e
    public f0.e.c d() {
        return this.f34801j;
    }

    @Override // s5.f0.e
    public Long e() {
        return this.f34796e;
    }

    public boolean equals(Object obj) {
        String str;
        Long l10;
        f0.e.f fVar;
        f0.e.AbstractC0247e abstractC0247e;
        f0.e.c cVar;
        List<f0.e.d> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e)) {
            return false;
        }
        f0.e eVar = (f0.e) obj;
        return this.f34792a.equals(eVar.g()) && this.f34793b.equals(eVar.i()) && ((str = this.f34794c) != null ? str.equals(eVar.c()) : eVar.c() == null) && this.f34795d == eVar.l() && ((l10 = this.f34796e) != null ? l10.equals(eVar.e()) : eVar.e() == null) && this.f34797f == eVar.n() && this.f34798g.equals(eVar.b()) && ((fVar = this.f34799h) != null ? fVar.equals(eVar.m()) : eVar.m() == null) && ((abstractC0247e = this.f34800i) != null ? abstractC0247e.equals(eVar.k()) : eVar.k() == null) && ((cVar = this.f34801j) != null ? cVar.equals(eVar.d()) : eVar.d() == null) && ((list = this.f34802k) != null ? list.equals(eVar.f()) : eVar.f() == null) && this.f34803l == eVar.h();
    }

    @Override // s5.f0.e
    public List<f0.e.d> f() {
        return this.f34802k;
    }

    @Override // s5.f0.e
    public String g() {
        return this.f34792a;
    }

    @Override // s5.f0.e
    public int h() {
        return this.f34803l;
    }

    public int hashCode() {
        int iHashCode = (((this.f34792a.hashCode() ^ 1000003) * 1000003) ^ this.f34793b.hashCode()) * 1000003;
        String str = this.f34794c;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        long j10 = this.f34795d;
        int i10 = (((iHashCode ^ iHashCode2) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        Long l10 = this.f34796e;
        int iHashCode3 = (((((i10 ^ (l10 == null ? 0 : l10.hashCode())) * 1000003) ^ (this.f34797f ? 1231 : 1237)) * 1000003) ^ this.f34798g.hashCode()) * 1000003;
        f0.e.f fVar = this.f34799h;
        int iHashCode4 = (iHashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        f0.e.AbstractC0247e abstractC0247e = this.f34800i;
        int iHashCode5 = (iHashCode4 ^ (abstractC0247e == null ? 0 : abstractC0247e.hashCode())) * 1000003;
        f0.e.c cVar = this.f34801j;
        int iHashCode6 = (iHashCode5 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List<f0.e.d> list = this.f34802k;
        return ((iHashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003) ^ this.f34803l;
    }

    @Override // s5.f0.e
    public String i() {
        return this.f34793b;
    }

    @Override // s5.f0.e
    public f0.e.AbstractC0247e k() {
        return this.f34800i;
    }

    @Override // s5.f0.e
    public long l() {
        return this.f34795d;
    }

    @Override // s5.f0.e
    public f0.e.f m() {
        return this.f34799h;
    }

    @Override // s5.f0.e
    public boolean n() {
        return this.f34797f;
    }

    @Override // s5.f0.e
    public f0.e.b o() {
        return new b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f34792a + ", identifier=" + this.f34793b + ", appQualitySessionId=" + this.f34794c + ", startedAt=" + this.f34795d + ", endedAt=" + this.f34796e + ", crashed=" + this.f34797f + ", app=" + this.f34798g + ", user=" + this.f34799h + ", os=" + this.f34800i + ", device=" + this.f34801j + ", events=" + this.f34802k + ", generatorType=" + this.f34803l + "}";
    }

    private h(String str, String str2, String str3, long j10, Long l10, boolean z10, f0.e.a aVar, f0.e.f fVar, f0.e.AbstractC0247e abstractC0247e, f0.e.c cVar, List<f0.e.d> list, int i10) {
        this.f34792a = str;
        this.f34793b = str2;
        this.f34794c = str3;
        this.f34795d = j10;
        this.f34796e = l10;
        this.f34797f = z10;
        this.f34798g = aVar;
        this.f34799h = fVar;
        this.f34800i = abstractC0247e;
        this.f34801j = cVar;
        this.f34802k = list;
        this.f34803l = i10;
    }
}
