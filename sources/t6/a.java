package t6;

import java.util.Objects;
import javax.annotation.Nonnull;

/* JADX INFO: compiled from: AutoValue_LibraryVersion.java */
/* JADX INFO: loaded from: classes.dex */
final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f35399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f35400b;

    a(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.f35399a = str;
        Objects.requireNonNull(str2, "Null version");
        this.f35400b = str2;
    }

    @Override // t6.f
    @Nonnull
    public String b() {
        return this.f35399a;
    }

    @Override // t6.f
    @Nonnull
    public String c() {
        return this.f35400b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f35399a.equals(fVar.b()) && this.f35400b.equals(fVar.c());
    }

    public int hashCode() {
        return ((this.f35399a.hashCode() ^ 1000003) * 1000003) ^ this.f35400b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f35399a + ", version=" + this.f35400b + "}";
    }
}
