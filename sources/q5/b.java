package q5;

import java.io.File;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReportWithSessionId.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s5.f0 f33874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f33876c;

    b(s5.f0 f0Var, String str, File file) {
        Objects.requireNonNull(f0Var, "Null report");
        this.f33874a = f0Var;
        Objects.requireNonNull(str, "Null sessionId");
        this.f33875b = str;
        Objects.requireNonNull(file, "Null reportFile");
        this.f33876c = file;
    }

    @Override // q5.u
    public s5.f0 b() {
        return this.f33874a;
    }

    @Override // q5.u
    public File c() {
        return this.f33876c;
    }

    @Override // q5.u
    public String d() {
        return this.f33875b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f33874a.equals(uVar.b()) && this.f33875b.equals(uVar.d()) && this.f33876c.equals(uVar.c());
    }

    public int hashCode() {
        return ((((this.f33874a.hashCode() ^ 1000003) * 1000003) ^ this.f33875b.hashCode()) * 1000003) ^ this.f33876c.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f33874a + ", sessionId=" + this.f33875b + ", reportFile=" + this.f33876c + "}";
    }
}
