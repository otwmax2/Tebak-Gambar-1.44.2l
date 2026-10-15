package n6;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import n6.c;
import n6.d;

/* JADX INFO: compiled from: AutoValue_PersistedInstallationEntry.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a f32468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f32469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f32470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f32471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f32472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f32473h;

    /* JADX INFO: compiled from: AutoValue_PersistedInstallationEntry.java */
    static final class b extends d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f32474a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c.a f32475b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f32476c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f32477d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f32478e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Long f32479f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f32480g;

        @Override // n6.d.a
        public d a() {
            c.a aVar = this.f32475b;
            String str = BuildConfig.FLAVOR;
            if (aVar == null) {
                str = BuildConfig.FLAVOR + " registrationStatus";
            }
            if (this.f32478e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f32479f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new a(this.f32474a, this.f32475b, this.f32476c, this.f32477d, this.f32478e.longValue(), this.f32479f.longValue(), this.f32480g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // n6.d.a
        public d.a b(String str) {
            this.f32476c = str;
            return this;
        }

        @Override // n6.d.a
        public d.a c(long j10) {
            this.f32478e = Long.valueOf(j10);
            return this;
        }

        @Override // n6.d.a
        public d.a d(String str) {
            this.f32474a = str;
            return this;
        }

        @Override // n6.d.a
        public d.a e(String str) {
            this.f32480g = str;
            return this;
        }

        @Override // n6.d.a
        public d.a f(String str) {
            this.f32477d = str;
            return this;
        }

        @Override // n6.d.a
        public d.a g(c.a aVar) {
            Objects.requireNonNull(aVar, "Null registrationStatus");
            this.f32475b = aVar;
            return this;
        }

        @Override // n6.d.a
        public d.a h(long j10) {
            this.f32479f = Long.valueOf(j10);
            return this;
        }

        b() {
        }

        private b(d dVar) {
            this.f32474a = dVar.d();
            this.f32475b = dVar.g();
            this.f32476c = dVar.b();
            this.f32477d = dVar.f();
            this.f32478e = Long.valueOf(dVar.c());
            this.f32479f = Long.valueOf(dVar.h());
            this.f32480g = dVar.e();
        }
    }

    @Override // n6.d
    public String b() {
        return this.f32469d;
    }

    @Override // n6.d
    public long c() {
        return this.f32471f;
    }

    @Override // n6.d
    public String d() {
        return this.f32467b;
    }

    @Override // n6.d
    public String e() {
        return this.f32473h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str3 = this.f32467b;
        if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
            if (this.f32468c.equals(dVar.g()) && ((str = this.f32469d) != null ? str.equals(dVar.b()) : dVar.b() == null) && ((str2 = this.f32470e) != null ? str2.equals(dVar.f()) : dVar.f() == null) && this.f32471f == dVar.c() && this.f32472g == dVar.h()) {
                String str4 = this.f32473h;
                if (str4 == null) {
                    if (dVar.e() == null) {
                        return true;
                    }
                } else if (str4.equals(dVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // n6.d
    public String f() {
        return this.f32470e;
    }

    @Override // n6.d
    public c.a g() {
        return this.f32468c;
    }

    @Override // n6.d
    public long h() {
        return this.f32472g;
    }

    public int hashCode() {
        String str = this.f32467b;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f32468c.hashCode()) * 1000003;
        String str2 = this.f32469d;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f32470e;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j10 = this.f32471f;
        int i10 = (iHashCode3 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f32472g;
        int i11 = (i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f32473h;
        return i11 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // n6.d
    public d.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f32467b + ", registrationStatus=" + this.f32468c + ", authToken=" + this.f32469d + ", refreshToken=" + this.f32470e + ", expiresInSecs=" + this.f32471f + ", tokenCreationEpochInSecs=" + this.f32472g + ", fisError=" + this.f32473h + "}";
    }

    private a(String str, c.a aVar, String str2, String str3, long j10, long j11, String str4) {
        this.f32467b = str;
        this.f32468c = aVar;
        this.f32469d = str2;
        this.f32470e = str3;
        this.f32471f = j10;
        this.f32472g = j11;
        this.f32473h = str4;
    }
}
