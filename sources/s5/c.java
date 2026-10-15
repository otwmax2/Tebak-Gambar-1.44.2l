package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo.java */
/* JADX INFO: loaded from: classes2.dex */
final class c extends f0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f34737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f34739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f34740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f34741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f34742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f34743g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f34744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List<f0.a.AbstractC0230a> f34745i;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo.java */
    static final class b extends f0.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f34746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f34748c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f34749d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f34750e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Long f34751f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Long f34752g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f34753h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private List<f0.a.AbstractC0230a> f34754i;

        b() {
        }

        @Override // s5.f0.a.b
        public f0.a a() {
            Integer num = this.f34746a;
            String str = BuildConfig.FLAVOR;
            if (num == null) {
                str = BuildConfig.FLAVOR + " pid";
            }
            if (this.f34747b == null) {
                str = str + " processName";
            }
            if (this.f34748c == null) {
                str = str + " reasonCode";
            }
            if (this.f34749d == null) {
                str = str + " importance";
            }
            if (this.f34750e == null) {
                str = str + " pss";
            }
            if (this.f34751f == null) {
                str = str + " rss";
            }
            if (this.f34752g == null) {
                str = str + " timestamp";
            }
            if (str.isEmpty()) {
                return new c(this.f34746a.intValue(), this.f34747b, this.f34748c.intValue(), this.f34749d.intValue(), this.f34750e.longValue(), this.f34751f.longValue(), this.f34752g.longValue(), this.f34753h, this.f34754i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.a.b
        public f0.a.b b(List<f0.a.AbstractC0230a> list) {
            this.f34754i = list;
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b c(int i10) {
            this.f34749d = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b d(int i10) {
            this.f34746a = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b e(String str) {
            Objects.requireNonNull(str, "Null processName");
            this.f34747b = str;
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b f(long j10) {
            this.f34750e = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b g(int i10) {
            this.f34748c = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b h(long j10) {
            this.f34751f = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b i(long j10) {
            this.f34752g = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.a.b
        public f0.a.b j(String str) {
            this.f34753h = str;
            return this;
        }
    }

    @Override // s5.f0.a
    public List<f0.a.AbstractC0230a> b() {
        return this.f34745i;
    }

    @Override // s5.f0.a
    public int c() {
        return this.f34740d;
    }

    @Override // s5.f0.a
    public int d() {
        return this.f34737a;
    }

    @Override // s5.f0.a
    public String e() {
        return this.f34738b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a)) {
            return false;
        }
        f0.a aVar = (f0.a) obj;
        if (this.f34737a == aVar.d() && this.f34738b.equals(aVar.e()) && this.f34739c == aVar.g() && this.f34740d == aVar.c() && this.f34741e == aVar.f() && this.f34742f == aVar.h() && this.f34743g == aVar.i() && ((str = this.f34744h) != null ? str.equals(aVar.j()) : aVar.j() == null)) {
            List<f0.a.AbstractC0230a> list = this.f34745i;
            if (list == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (list.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override // s5.f0.a
    public long f() {
        return this.f34741e;
    }

    @Override // s5.f0.a
    public int g() {
        return this.f34739c;
    }

    @Override // s5.f0.a
    public long h() {
        return this.f34742f;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f34737a ^ 1000003) * 1000003) ^ this.f34738b.hashCode()) * 1000003) ^ this.f34739c) * 1000003) ^ this.f34740d) * 1000003;
        long j10 = this.f34741e;
        int i10 = (iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f34742f;
        int i11 = (i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f34743g;
        int i12 = (i11 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        String str = this.f34744h;
        int iHashCode2 = (i12 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<f0.a.AbstractC0230a> list = this.f34745i;
        return iHashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    @Override // s5.f0.a
    public long i() {
        return this.f34743g;
    }

    @Override // s5.f0.a
    public String j() {
        return this.f34744h;
    }

    public String toString() {
        return "ApplicationExitInfo{pid=" + this.f34737a + ", processName=" + this.f34738b + ", reasonCode=" + this.f34739c + ", importance=" + this.f34740d + ", pss=" + this.f34741e + ", rss=" + this.f34742f + ", timestamp=" + this.f34743g + ", traceFile=" + this.f34744h + ", buildIdMappingForArch=" + this.f34745i + "}";
    }

    private c(int i10, String str, int i11, int i12, long j10, long j11, long j12, String str2, List<f0.a.AbstractC0230a> list) {
        this.f34737a = i10;
        this.f34738b = str;
        this.f34739c = i11;
        this.f34740d = i12;
        this.f34741e = j10;
        this.f34742f = j11;
        this.f34743g = j12;
        this.f34744h = str2;
        this.f34745i = list;
    }
}
