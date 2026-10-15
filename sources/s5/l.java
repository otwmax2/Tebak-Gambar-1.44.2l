package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event.java */
/* JADX INFO: loaded from: classes2.dex */
final class l extends f0.e.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f34849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f0.e.d.a f34851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f0.e.d.c f34852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f0.e.d.AbstractC0245d f34853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f0.e.d.f f34854f;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event.java */
    static final class b extends f0.e.d.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f34855a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34856b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private f0.e.d.a f34857c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f0.e.d.c f34858d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private f0.e.d.AbstractC0245d f34859e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private f0.e.d.f f34860f;

        @Override // s5.f0.e.d.b
        public f0.e.d a() {
            Long l10 = this.f34855a;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " timestamp";
            }
            if (this.f34856b == null) {
                str = str + " type";
            }
            if (this.f34857c == null) {
                str = str + " app";
            }
            if (this.f34858d == null) {
                str = str + " device";
            }
            if (str.isEmpty()) {
                return new l(this.f34855a.longValue(), this.f34856b, this.f34857c, this.f34858d, this.f34859e, this.f34860f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.b
        public f0.e.d.b b(f0.e.d.a aVar) {
            Objects.requireNonNull(aVar, "Null app");
            this.f34857c = aVar;
            return this;
        }

        @Override // s5.f0.e.d.b
        public f0.e.d.b c(f0.e.d.c cVar) {
            Objects.requireNonNull(cVar, "Null device");
            this.f34858d = cVar;
            return this;
        }

        @Override // s5.f0.e.d.b
        public f0.e.d.b d(f0.e.d.AbstractC0245d abstractC0245d) {
            this.f34859e = abstractC0245d;
            return this;
        }

        @Override // s5.f0.e.d.b
        public f0.e.d.b e(f0.e.d.f fVar) {
            this.f34860f = fVar;
            return this;
        }

        @Override // s5.f0.e.d.b
        public f0.e.d.b f(long j10) {
            this.f34855a = Long.valueOf(j10);
            return this;
        }

        @Override // s5.f0.e.d.b
        public f0.e.d.b g(String str) {
            Objects.requireNonNull(str, "Null type");
            this.f34856b = str;
            return this;
        }

        b() {
        }

        private b(f0.e.d dVar) {
            this.f34855a = Long.valueOf(dVar.f());
            this.f34856b = dVar.g();
            this.f34857c = dVar.b();
            this.f34858d = dVar.c();
            this.f34859e = dVar.d();
            this.f34860f = dVar.e();
        }
    }

    @Override // s5.f0.e.d
    public f0.e.d.a b() {
        return this.f34851c;
    }

    @Override // s5.f0.e.d
    public f0.e.d.c c() {
        return this.f34852d;
    }

    @Override // s5.f0.e.d
    public f0.e.d.AbstractC0245d d() {
        return this.f34853e;
    }

    @Override // s5.f0.e.d
    public f0.e.d.f e() {
        return this.f34854f;
    }

    public boolean equals(Object obj) {
        f0.e.d.AbstractC0245d abstractC0245d;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d)) {
            return false;
        }
        f0.e.d dVar = (f0.e.d) obj;
        if (this.f34849a == dVar.f() && this.f34850b.equals(dVar.g()) && this.f34851c.equals(dVar.b()) && this.f34852d.equals(dVar.c()) && ((abstractC0245d = this.f34853e) != null ? abstractC0245d.equals(dVar.d()) : dVar.d() == null)) {
            f0.e.d.f fVar = this.f34854f;
            if (fVar == null) {
                if (dVar.e() == null) {
                    return true;
                }
            } else if (fVar.equals(dVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // s5.f0.e.d
    public long f() {
        return this.f34849a;
    }

    @Override // s5.f0.e.d
    public String g() {
        return this.f34850b;
    }

    @Override // s5.f0.e.d
    public f0.e.d.b h() {
        return new b(this);
    }

    public int hashCode() {
        long j10 = this.f34849a;
        int iHashCode = (((((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f34850b.hashCode()) * 1000003) ^ this.f34851c.hashCode()) * 1000003) ^ this.f34852d.hashCode()) * 1000003;
        f0.e.d.AbstractC0245d abstractC0245d = this.f34853e;
        int iHashCode2 = (iHashCode ^ (abstractC0245d == null ? 0 : abstractC0245d.hashCode())) * 1000003;
        f0.e.d.f fVar = this.f34854f;
        return iHashCode2 ^ (fVar != null ? fVar.hashCode() : 0);
    }

    public String toString() {
        return "Event{timestamp=" + this.f34849a + ", type=" + this.f34850b + ", app=" + this.f34851c + ", device=" + this.f34852d + ", log=" + this.f34853e + ", rollouts=" + this.f34854f + "}";
    }

    private l(long j10, String str, f0.e.d.a aVar, f0.e.d.c cVar, f0.e.d.AbstractC0245d abstractC0245d, f0.e.d.f fVar) {
        this.f34849a = j10;
        this.f34850b = str;
        this.f34851c = aVar;
        this.f34852d = cVar;
        this.f34853e = abstractC0245d;
        this.f34854f = fVar;
    }
}
