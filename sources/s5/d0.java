package s5;

import java.util.Objects;
import s5.g0;

/* JADX INFO: compiled from: AutoValue_StaticSessionData_DeviceData.java */
/* JADX INFO: loaded from: classes2.dex */
final class d0 extends g0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f34767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f34769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f34770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f34771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f34772f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f34773g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f34774h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f34775i;

    d0(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f34767a = i10;
        Objects.requireNonNull(str, "Null model");
        this.f34768b = str;
        this.f34769c = i11;
        this.f34770d = j10;
        this.f34771e = j11;
        this.f34772f = z10;
        this.f34773g = i12;
        Objects.requireNonNull(str2, "Null manufacturer");
        this.f34774h = str2;
        Objects.requireNonNull(str3, "Null modelClass");
        this.f34775i = str3;
    }

    @Override // s5.g0.b
    public int a() {
        return this.f34767a;
    }

    @Override // s5.g0.b
    public int b() {
        return this.f34769c;
    }

    @Override // s5.g0.b
    public long d() {
        return this.f34771e;
    }

    @Override // s5.g0.b
    public boolean e() {
        return this.f34772f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.b)) {
            return false;
        }
        g0.b bVar = (g0.b) obj;
        return this.f34767a == bVar.a() && this.f34768b.equals(bVar.g()) && this.f34769c == bVar.b() && this.f34770d == bVar.j() && this.f34771e == bVar.d() && this.f34772f == bVar.e() && this.f34773g == bVar.i() && this.f34774h.equals(bVar.f()) && this.f34775i.equals(bVar.h());
    }

    @Override // s5.g0.b
    public String f() {
        return this.f34774h;
    }

    @Override // s5.g0.b
    public String g() {
        return this.f34768b;
    }

    @Override // s5.g0.b
    public String h() {
        return this.f34775i;
    }

    public int hashCode() {
        int iHashCode = (((((this.f34767a ^ 1000003) * 1000003) ^ this.f34768b.hashCode()) * 1000003) ^ this.f34769c) * 1000003;
        long j10 = this.f34770d;
        int i10 = (iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f34771e;
        return ((((((((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ (this.f34772f ? 1231 : 1237)) * 1000003) ^ this.f34773g) * 1000003) ^ this.f34774h.hashCode()) * 1000003) ^ this.f34775i.hashCode();
    }

    @Override // s5.g0.b
    public int i() {
        return this.f34773g;
    }

    @Override // s5.g0.b
    public long j() {
        return this.f34770d;
    }

    public String toString() {
        return "DeviceData{arch=" + this.f34767a + ", model=" + this.f34768b + ", availableProcessors=" + this.f34769c + ", totalRam=" + this.f34770d + ", diskSpace=" + this.f34771e + ", isEmulator=" + this.f34772f + ", state=" + this.f34773g + ", manufacturer=" + this.f34774h + ", modelClass=" + this.f34775i + "}";
    }
}
