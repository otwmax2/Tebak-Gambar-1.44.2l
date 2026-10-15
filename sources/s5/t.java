package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails.java */
/* JADX INFO: loaded from: classes2.dex */
final class t extends f0.e.d.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f34927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f34928d;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails.java */
    static final class b extends f0.e.d.a.c.AbstractC0244a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34929a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f34930b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f34931c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Boolean f34932d;

        b() {
        }

        @Override // s5.f0.e.d.a.c.AbstractC0244a
        public f0.e.d.a.c a() {
            String str = this.f34929a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " processName";
            }
            if (this.f34930b == null) {
                str2 = str2 + " pid";
            }
            if (this.f34931c == null) {
                str2 = str2 + " importance";
            }
            if (this.f34932d == null) {
                str2 = str2 + " defaultProcess";
            }
            if (str2.isEmpty()) {
                return new t(this.f34929a, this.f34930b.intValue(), this.f34931c.intValue(), this.f34932d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.d.a.c.AbstractC0244a
        public f0.e.d.a.c.AbstractC0244a b(boolean z10) {
            this.f34932d = Boolean.valueOf(z10);
            return this;
        }

        @Override // s5.f0.e.d.a.c.AbstractC0244a
        public f0.e.d.a.c.AbstractC0244a c(int i10) {
            this.f34931c = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.d.a.c.AbstractC0244a
        public f0.e.d.a.c.AbstractC0244a d(int i10) {
            this.f34930b = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.d.a.c.AbstractC0244a
        public f0.e.d.a.c.AbstractC0244a e(String str) {
            Objects.requireNonNull(str, "Null processName");
            this.f34929a = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.a.c
    public int b() {
        return this.f34927c;
    }

    @Override // s5.f0.e.d.a.c
    public int c() {
        return this.f34926b;
    }

    @Override // s5.f0.e.d.a.c
    public String d() {
        return this.f34925a;
    }

    @Override // s5.f0.e.d.a.c
    public boolean e() {
        return this.f34928d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.c)) {
            return false;
        }
        f0.e.d.a.c cVar = (f0.e.d.a.c) obj;
        return this.f34925a.equals(cVar.d()) && this.f34926b == cVar.c() && this.f34927c == cVar.b() && this.f34928d == cVar.e();
    }

    public int hashCode() {
        return ((((((this.f34925a.hashCode() ^ 1000003) * 1000003) ^ this.f34926b) * 1000003) ^ this.f34927c) * 1000003) ^ (this.f34928d ? 1231 : 1237);
    }

    public String toString() {
        return "ProcessDetails{processName=" + this.f34925a + ", pid=" + this.f34926b + ", importance=" + this.f34927c + ", defaultProcess=" + this.f34928d + "}";
    }

    private t(String str, int i10, int i11, boolean z10) {
        this.f34925a = str;
        this.f34926b = i10;
        this.f34927c = i11;
        this.f34928d = z10;
    }
}
