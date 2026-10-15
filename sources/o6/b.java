package o6;

import com.vungle.mediation.BuildConfig;
import o6.f;

/* JADX INFO: compiled from: AutoValue_TokenResult.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f33101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f.b f33102c;

    /* JADX INFO: renamed from: o6.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoValue_TokenResult.java */
    static final class C0212b extends f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f33103a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f33104b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private f.b f33105c;

        C0212b() {
        }

        @Override // o6.f.a
        public f a() {
            Long l10 = this.f33104b;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.f33103a, this.f33104b.longValue(), this.f33105c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // o6.f.a
        public f.a b(f.b bVar) {
            this.f33105c = bVar;
            return this;
        }

        @Override // o6.f.a
        public f.a c(String str) {
            this.f33103a = str;
            return this;
        }

        @Override // o6.f.a
        public f.a d(long j10) {
            this.f33104b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // o6.f
    public f.b b() {
        return this.f33102c;
    }

    @Override // o6.f
    public String c() {
        return this.f33100a;
    }

    @Override // o6.f
    public long d() {
        return this.f33101b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.f33100a;
        if (str != null ? str.equals(fVar.c()) : fVar.c() == null) {
            if (this.f33101b == fVar.d()) {
                f.b bVar = this.f33102c;
                if (bVar == null) {
                    if (fVar.b() == null) {
                        return true;
                    }
                } else if (bVar.equals(fVar.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f33100a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f33101b;
        int i10 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        f.b bVar = this.f33102c;
        return i10 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.f33100a + ", tokenExpirationTimestamp=" + this.f33101b + ", responseCode=" + this.f33102c + "}";
    }

    private b(String str, long j10, f.b bVar) {
        this.f33100a = str;
        this.f33101b = j10;
        this.f33102c = bVar;
    }
}
