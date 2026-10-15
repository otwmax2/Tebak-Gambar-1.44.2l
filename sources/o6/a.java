package o6;

import o6.d;

/* JADX INFO: compiled from: AutoValue_InstallationResponse.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f33092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f33093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d.b f33094e;

    /* JADX INFO: compiled from: AutoValue_InstallationResponse.java */
    static final class b extends d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f33095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f33096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f33097c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f f33098d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d.b f33099e;

        b() {
        }

        @Override // o6.d.a
        public d a() {
            return new a(this.f33095a, this.f33096b, this.f33097c, this.f33098d, this.f33099e);
        }

        @Override // o6.d.a
        public d.a b(f fVar) {
            this.f33098d = fVar;
            return this;
        }

        @Override // o6.d.a
        public d.a c(String str) {
            this.f33096b = str;
            return this;
        }

        @Override // o6.d.a
        public d.a d(String str) {
            this.f33097c = str;
            return this;
        }

        @Override // o6.d.a
        public d.a e(d.b bVar) {
            this.f33099e = bVar;
            return this;
        }

        @Override // o6.d.a
        public d.a f(String str) {
            this.f33095a = str;
            return this;
        }
    }

    @Override // o6.d
    public f b() {
        return this.f33093d;
    }

    @Override // o6.d
    public String c() {
        return this.f33091b;
    }

    @Override // o6.d
    public String d() {
        return this.f33092c;
    }

    @Override // o6.d
    public d.b e() {
        return this.f33094e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f33090a;
        if (str != null ? str.equals(dVar.f()) : dVar.f() == null) {
            String str2 = this.f33091b;
            if (str2 != null ? str2.equals(dVar.c()) : dVar.c() == null) {
                String str3 = this.f33092c;
                if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
                    f fVar = this.f33093d;
                    if (fVar != null ? fVar.equals(dVar.b()) : dVar.b() == null) {
                        d.b bVar = this.f33094e;
                        if (bVar == null) {
                            if (dVar.e() == null) {
                                return true;
                            }
                        } else if (bVar.equals(dVar.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // o6.d
    public String f() {
        return this.f33090a;
    }

    public int hashCode() {
        String str = this.f33090a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f33091b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f33092c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        f fVar = this.f33093d;
        int iHashCode4 = (iHashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        d.b bVar = this.f33094e;
        return iHashCode4 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f33090a + ", fid=" + this.f33091b + ", refreshToken=" + this.f33092c + ", authToken=" + this.f33093d + ", responseCode=" + this.f33094e + "}";
    }

    private a(String str, String str2, String str3, f fVar, d.b bVar) {
        this.f33090a = str;
        this.f33091b = str2;
        this.f33092c = str3;
        this.f33093d = fVar;
        this.f33094e = bVar;
    }
}
