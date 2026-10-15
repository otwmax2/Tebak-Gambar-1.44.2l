package s5;

import java.util.Objects;
import s5.g0;

/* JADX INFO: compiled from: AutoValue_StaticSessionData_OsData.java */
/* JADX INFO: loaded from: classes2.dex */
final class e0 extends g0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f34782c;

    e0(String str, String str2, boolean z10) {
        Objects.requireNonNull(str, "Null osRelease");
        this.f34780a = str;
        Objects.requireNonNull(str2, "Null osCodeName");
        this.f34781b = str2;
        this.f34782c = z10;
    }

    @Override // s5.g0.c
    public boolean b() {
        return this.f34782c;
    }

    @Override // s5.g0.c
    public String c() {
        return this.f34781b;
    }

    @Override // s5.g0.c
    public String d() {
        return this.f34780a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.c)) {
            return false;
        }
        g0.c cVar = (g0.c) obj;
        return this.f34780a.equals(cVar.d()) && this.f34781b.equals(cVar.c()) && this.f34782c == cVar.b();
    }

    public int hashCode() {
        return ((((this.f34780a.hashCode() ^ 1000003) * 1000003) ^ this.f34781b.hashCode()) * 1000003) ^ (this.f34782c ? 1231 : 1237);
    }

    public String toString() {
        return "OsData{osRelease=" + this.f34780a + ", osCodeName=" + this.f34781b + ", isRooted=" + this.f34782c + "}";
    }
}
