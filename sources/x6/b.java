package x6;

/* JADX INFO: compiled from: ApplicationInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f36316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f36317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f36318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final t f36319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f36320f;

    public b(String str, String str2, String str3, String str4, t tVar, a aVar) {
        t9.m.e(str, "appId");
        t9.m.e(str2, "deviceModel");
        t9.m.e(str3, "sessionSdkVersion");
        t9.m.e(str4, "osVersion");
        t9.m.e(tVar, "logEnvironment");
        t9.m.e(aVar, "androidAppInfo");
        this.f36315a = str;
        this.f36316b = str2;
        this.f36317c = str3;
        this.f36318d = str4;
        this.f36319e = tVar;
        this.f36320f = aVar;
    }

    public final a a() {
        return this.f36320f;
    }

    public final String b() {
        return this.f36315a;
    }

    public final String c() {
        return this.f36316b;
    }

    public final t d() {
        return this.f36319e;
    }

    public final String e() {
        return this.f36318d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return t9.m.a(this.f36315a, bVar.f36315a) && t9.m.a(this.f36316b, bVar.f36316b) && t9.m.a(this.f36317c, bVar.f36317c) && t9.m.a(this.f36318d, bVar.f36318d) && this.f36319e == bVar.f36319e && t9.m.a(this.f36320f, bVar.f36320f);
    }

    public final String f() {
        return this.f36317c;
    }

    public int hashCode() {
        return (((((((((this.f36315a.hashCode() * 31) + this.f36316b.hashCode()) * 31) + this.f36317c.hashCode()) * 31) + this.f36318d.hashCode()) * 31) + this.f36319e.hashCode()) * 31) + this.f36320f.hashCode();
    }

    public String toString() {
        return "ApplicationInfo(appId=" + this.f36315a + ", deviceModel=" + this.f36316b + ", sessionSdkVersion=" + this.f36317c + ", osVersion=" + this.f36318d + ", logEnvironment=" + this.f36319e + ", androidAppInfo=" + this.f36320f + ')';
    }
}
