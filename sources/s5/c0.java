package s5;

import java.util.Objects;
import s5.g0;

/* JADX INFO: compiled from: AutoValue_StaticSessionData_AppData.java */
/* JADX INFO: loaded from: classes2.dex */
final class c0 extends g0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f34758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f34759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n5.f f34760f;

    c0(String str, String str2, String str3, String str4, int i10, n5.f fVar) {
        Objects.requireNonNull(str, "Null appIdentifier");
        this.f34755a = str;
        Objects.requireNonNull(str2, "Null versionCode");
        this.f34756b = str2;
        Objects.requireNonNull(str3, "Null versionName");
        this.f34757c = str3;
        Objects.requireNonNull(str4, "Null installUuid");
        this.f34758d = str4;
        this.f34759e = i10;
        Objects.requireNonNull(fVar, "Null developmentPlatformProvider");
        this.f34760f = fVar;
    }

    @Override // s5.g0.a
    public String a() {
        return this.f34755a;
    }

    @Override // s5.g0.a
    public int c() {
        return this.f34759e;
    }

    @Override // s5.g0.a
    public n5.f d() {
        return this.f34760f;
    }

    @Override // s5.g0.a
    public String e() {
        return this.f34758d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.a)) {
            return false;
        }
        g0.a aVar = (g0.a) obj;
        return this.f34755a.equals(aVar.a()) && this.f34756b.equals(aVar.f()) && this.f34757c.equals(aVar.g()) && this.f34758d.equals(aVar.e()) && this.f34759e == aVar.c() && this.f34760f.equals(aVar.d());
    }

    @Override // s5.g0.a
    public String f() {
        return this.f34756b;
    }

    @Override // s5.g0.a
    public String g() {
        return this.f34757c;
    }

    public int hashCode() {
        return ((((((((((this.f34755a.hashCode() ^ 1000003) * 1000003) ^ this.f34756b.hashCode()) * 1000003) ^ this.f34757c.hashCode()) * 1000003) ^ this.f34758d.hashCode()) * 1000003) ^ this.f34759e) * 1000003) ^ this.f34760f.hashCode();
    }

    public String toString() {
        return "AppData{appIdentifier=" + this.f34755a + ", versionCode=" + this.f34756b + ", versionName=" + this.f34757c + ", installUuid=" + this.f34758d + ", deliveryMechanism=" + this.f34759e + ", developmentPlatformProvider=" + this.f34760f + "}";
    }
}
