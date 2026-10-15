package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Device.java */
/* JADX INFO: loaded from: classes2.dex */
final class k extends f0.e.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f34831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f34833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f34834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f34835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f34836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f34837g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f34838h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f34839i;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Device.java */
    static final class b extends f0.e.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f34840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f34842c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f34843d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f34844e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Boolean f34845f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Integer f34846g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f34847h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f34848i;

        b() {
        }

        @Override // s5.f0.e.c.a
        public f0.e.c a() {
            Integer num = this.f34840a;
            String str = BuildConfig.FLAVOR;
            if (num == null) {
                str = BuildConfig.FLAVOR + " arch";
            }
            if (this.f34841b == null) {
                str = str + " model";
            }
            if (this.f34842c == null) {
                str = str + " cores";
            }
            if (this.f34843d == null) {
                str = str + " ram";
            }
            if (this.f34844e == null) {
                str = str + " diskSpace";
            }
            if (this.f34845f == null) {
                str = str + " simulator";
            }
            if (this.f34846g == null) {
                str = str + " state";
            }
            if (this.f34847h == null) {
                str = str + " manufacturer";
            }
            if (this.f34848i == null) {
                str = str + " modelClass";
            }
            if (str.isEmpty()) {
                return new k(this.f34840a.intValue(), this.f34841b, this.f34842c.intValue(), this.f34843d.longValue(), this.f34844e.longValue(), this.f34845f.booleanValue(), this.f34846g.intValue(), this.f34847h, this.f34848i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a b(int i10) {
            this.f34840a = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a c(int i10) {
            this.f34842c = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a d(long j10) {
            this.f34844e = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a e(String str) {
            Objects.requireNonNull(str, "Null manufacturer");
            this.f34847h = str;
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a f(String str) {
            Objects.requireNonNull(str, "Null model");
            this.f34841b = str;
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a g(String str) {
            Objects.requireNonNull(str, "Null modelClass");
            this.f34848i = str;
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a h(long j10) {
            this.f34843d = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a i(boolean z10) {
            this.f34845f = Boolean.valueOf(z10);
            return this;
        }

        @Override // s5.f0.e.c.a
        public f0.e.c.a j(int i10) {
            this.f34846g = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // s5.f0.e.c
    public int b() {
        return this.f34831a;
    }

    @Override // s5.f0.e.c
    public int c() {
        return this.f34833c;
    }

    @Override // s5.f0.e.c
    public long d() {
        return this.f34835e;
    }

    @Override // s5.f0.e.c
    public String e() {
        return this.f34838h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.c)) {
            return false;
        }
        f0.e.c cVar = (f0.e.c) obj;
        return this.f34831a == cVar.b() && this.f34832b.equals(cVar.f()) && this.f34833c == cVar.c() && this.f34834d == cVar.h() && this.f34835e == cVar.d() && this.f34836f == cVar.j() && this.f34837g == cVar.i() && this.f34838h.equals(cVar.e()) && this.f34839i.equals(cVar.g());
    }

    @Override // s5.f0.e.c
    public String f() {
        return this.f34832b;
    }

    @Override // s5.f0.e.c
    public String g() {
        return this.f34839i;
    }

    @Override // s5.f0.e.c
    public long h() {
        return this.f34834d;
    }

    public int hashCode() {
        int iHashCode = (((((this.f34831a ^ 1000003) * 1000003) ^ this.f34832b.hashCode()) * 1000003) ^ this.f34833c) * 1000003;
        long j10 = this.f34834d;
        int i10 = (iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f34835e;
        return ((((((((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ (this.f34836f ? 1231 : 1237)) * 1000003) ^ this.f34837g) * 1000003) ^ this.f34838h.hashCode()) * 1000003) ^ this.f34839i.hashCode();
    }

    @Override // s5.f0.e.c
    public int i() {
        return this.f34837g;
    }

    @Override // s5.f0.e.c
    public boolean j() {
        return this.f34836f;
    }

    public String toString() {
        return "Device{arch=" + this.f34831a + ", model=" + this.f34832b + ", cores=" + this.f34833c + ", ram=" + this.f34834d + ", diskSpace=" + this.f34835e + ", simulator=" + this.f34836f + ", state=" + this.f34837g + ", manufacturer=" + this.f34838h + ", modelClass=" + this.f34839i + "}";
    }

    private k(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f34831a = i10;
        this.f34832b = str;
        this.f34833c = i11;
        this.f34834d = j10;
        this.f34835e = j11;
        this.f34836f = z10;
        this.f34837g = i12;
        this.f34838h = str2;
        this.f34839i = str3;
    }
}
