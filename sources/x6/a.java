package x6;

import java.util.List;

/* JADX INFO: compiled from: ApplicationInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f36307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f36308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f36309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f36310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<u> f36311f;

    public a(String str, String str2, String str3, String str4, u uVar, List<u> list) {
        t9.m.e(str, "packageName");
        t9.m.e(str2, "versionName");
        t9.m.e(str3, "appBuildVersion");
        t9.m.e(str4, "deviceManufacturer");
        t9.m.e(uVar, "currentProcessDetails");
        t9.m.e(list, "appProcessDetails");
        this.f36306a = str;
        this.f36307b = str2;
        this.f36308c = str3;
        this.f36309d = str4;
        this.f36310e = uVar;
        this.f36311f = list;
    }

    public final String a() {
        return this.f36308c;
    }

    public final List<u> b() {
        return this.f36311f;
    }

    public final u c() {
        return this.f36310e;
    }

    public final String d() {
        return this.f36309d;
    }

    public final String e() {
        return this.f36306a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return t9.m.a(this.f36306a, aVar.f36306a) && t9.m.a(this.f36307b, aVar.f36307b) && t9.m.a(this.f36308c, aVar.f36308c) && t9.m.a(this.f36309d, aVar.f36309d) && t9.m.a(this.f36310e, aVar.f36310e) && t9.m.a(this.f36311f, aVar.f36311f);
    }

    public final String f() {
        return this.f36307b;
    }

    public int hashCode() {
        return (((((((((this.f36306a.hashCode() * 31) + this.f36307b.hashCode()) * 31) + this.f36308c.hashCode()) * 31) + this.f36309d.hashCode()) * 31) + this.f36310e.hashCode()) * 31) + this.f36311f.hashCode();
    }

    public String toString() {
        return "AndroidApplicationInfo(packageName=" + this.f36306a + ", versionName=" + this.f36307b + ", appBuildVersion=" + this.f36308c + ", deviceManufacturer=" + this.f36309d + ", currentProcessDetails=" + this.f36310e + ", appProcessDetails=" + this.f36311f + ')';
    }
}
