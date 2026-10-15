package b2;

import com.vungle.mediation.BuildConfig;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: compiled from: EngineKey.java */
/* JADX INFO: loaded from: classes.dex */
class f implements z1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z1.e f4610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z1.e f4611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z1.g f4612f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z1.f f4613g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final p2.c f4614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final z1.b f4615i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final z1.c f4616j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f4617k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f4618l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private z1.c f4619m;

    public f(String str, z1.c cVar, int i10, int i11, z1.e eVar, z1.e eVar2, z1.g gVar, z1.f fVar, p2.c cVar2, z1.b bVar) {
        this.f4607a = str;
        this.f4616j = cVar;
        this.f4608b = i10;
        this.f4609c = i11;
        this.f4610d = eVar;
        this.f4611e = eVar2;
        this.f4612f = gVar;
        this.f4613g = fVar;
        this.f4614h = cVar2;
        this.f4615i = bVar;
    }

    @Override // z1.c
    public void a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        byte[] bArrArray = ByteBuffer.allocate(8).putInt(this.f4608b).putInt(this.f4609c).array();
        this.f4616j.a(messageDigest);
        messageDigest.update(this.f4607a.getBytes("UTF-8"));
        messageDigest.update(bArrArray);
        z1.e eVar = this.f4610d;
        String strA = BuildConfig.FLAVOR;
        messageDigest.update((eVar != null ? eVar.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        z1.e eVar2 = this.f4611e;
        messageDigest.update((eVar2 != null ? eVar2.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        z1.g gVar = this.f4612f;
        messageDigest.update((gVar != null ? gVar.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        z1.f fVar = this.f4613g;
        messageDigest.update((fVar != null ? fVar.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        z1.b bVar = this.f4615i;
        if (bVar != null) {
            strA = bVar.a();
        }
        messageDigest.update(strA.getBytes("UTF-8"));
    }

    public z1.c b() {
        if (this.f4619m == null) {
            this.f4619m = new k(this.f4607a, this.f4616j);
        }
        return this.f4619m;
    }

    @Override // z1.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (!this.f4607a.equals(fVar.f4607a) || !this.f4616j.equals(fVar.f4616j) || this.f4609c != fVar.f4609c || this.f4608b != fVar.f4608b) {
            return false;
        }
        z1.g gVar = this.f4612f;
        if ((gVar == null) ^ (fVar.f4612f == null)) {
            return false;
        }
        if (gVar != null && !gVar.a().equals(fVar.f4612f.a())) {
            return false;
        }
        z1.e eVar = this.f4611e;
        if ((eVar == null) ^ (fVar.f4611e == null)) {
            return false;
        }
        if (eVar != null && !eVar.a().equals(fVar.f4611e.a())) {
            return false;
        }
        z1.e eVar2 = this.f4610d;
        if ((eVar2 == null) ^ (fVar.f4610d == null)) {
            return false;
        }
        if (eVar2 != null && !eVar2.a().equals(fVar.f4610d.a())) {
            return false;
        }
        z1.f fVar2 = this.f4613g;
        if ((fVar2 == null) ^ (fVar.f4613g == null)) {
            return false;
        }
        if (fVar2 != null && !fVar2.a().equals(fVar.f4613g.a())) {
            return false;
        }
        p2.c cVar = this.f4614h;
        if ((cVar == null) ^ (fVar.f4614h == null)) {
            return false;
        }
        if (cVar != null && !cVar.a().equals(fVar.f4614h.a())) {
            return false;
        }
        z1.b bVar = this.f4615i;
        if ((bVar == null) ^ (fVar.f4615i == null)) {
            return false;
        }
        return bVar == null || bVar.a().equals(fVar.f4615i.a());
    }

    @Override // z1.c
    public int hashCode() {
        if (this.f4618l == 0) {
            int iHashCode = this.f4607a.hashCode();
            this.f4618l = iHashCode;
            int iHashCode2 = (iHashCode * 31) + this.f4616j.hashCode();
            this.f4618l = iHashCode2;
            int i10 = (iHashCode2 * 31) + this.f4608b;
            this.f4618l = i10;
            int i11 = (i10 * 31) + this.f4609c;
            this.f4618l = i11;
            int i12 = i11 * 31;
            z1.e eVar = this.f4610d;
            int iHashCode3 = i12 + (eVar != null ? eVar.a().hashCode() : 0);
            this.f4618l = iHashCode3;
            int i13 = iHashCode3 * 31;
            z1.e eVar2 = this.f4611e;
            int iHashCode4 = i13 + (eVar2 != null ? eVar2.a().hashCode() : 0);
            this.f4618l = iHashCode4;
            int i14 = iHashCode4 * 31;
            z1.g gVar = this.f4612f;
            int iHashCode5 = i14 + (gVar != null ? gVar.a().hashCode() : 0);
            this.f4618l = iHashCode5;
            int i15 = iHashCode5 * 31;
            z1.f fVar = this.f4613g;
            int iHashCode6 = i15 + (fVar != null ? fVar.a().hashCode() : 0);
            this.f4618l = iHashCode6;
            int i16 = iHashCode6 * 31;
            p2.c cVar = this.f4614h;
            int iHashCode7 = i16 + (cVar != null ? cVar.a().hashCode() : 0);
            this.f4618l = iHashCode7;
            int i17 = iHashCode7 * 31;
            z1.b bVar = this.f4615i;
            this.f4618l = i17 + (bVar != null ? bVar.a().hashCode() : 0);
        }
        return this.f4618l;
    }

    public String toString() {
        if (this.f4617k == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("EngineKey{");
            sb.append(this.f4607a);
            sb.append('+');
            sb.append(this.f4616j);
            sb.append("+[");
            sb.append(this.f4608b);
            sb.append('x');
            sb.append(this.f4609c);
            sb.append("]+");
            sb.append('\'');
            z1.e eVar = this.f4610d;
            String strA = BuildConfig.FLAVOR;
            sb.append(eVar != null ? eVar.a() : BuildConfig.FLAVOR);
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            z1.e eVar2 = this.f4611e;
            sb.append(eVar2 != null ? eVar2.a() : BuildConfig.FLAVOR);
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            z1.g gVar = this.f4612f;
            sb.append(gVar != null ? gVar.a() : BuildConfig.FLAVOR);
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            z1.f fVar = this.f4613g;
            sb.append(fVar != null ? fVar.a() : BuildConfig.FLAVOR);
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            p2.c cVar = this.f4614h;
            sb.append(cVar != null ? cVar.a() : BuildConfig.FLAVOR);
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            z1.b bVar = this.f4615i;
            if (bVar != null) {
                strA = bVar.a();
            }
            sb.append(strA);
            sb.append('\'');
            sb.append('}');
            this.f4617k = sb.toString();
        }
        return this.f4617k;
    }
}
