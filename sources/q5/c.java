package q5;

import java.util.Objects;
import q5.c0;

/* JADX INFO: compiled from: AutoValue_InstallIdProvider_InstallIds.java */
/* JADX INFO: loaded from: classes2.dex */
final class c extends c0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33886b;

    c(String str, String str2) {
        Objects.requireNonNull(str, "Null crashlyticsInstallId");
        this.f33885a = str;
        this.f33886b = str2;
    }

    @Override // q5.c0.a
    public String c() {
        return this.f33885a;
    }

    @Override // q5.c0.a
    public String d() {
        return this.f33886b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c0.a)) {
            return false;
        }
        c0.a aVar = (c0.a) obj;
        if (this.f33885a.equals(aVar.c())) {
            String str = this.f33886b;
            if (str == null) {
                if (aVar.d() == null) {
                    return true;
                }
            } else if (str.equals(aVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f33885a.hashCode() ^ 1000003) * 1000003;
        String str = this.f33886b;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "InstallIds{crashlyticsInstallId=" + this.f33885a + ", firebaseInstallationId=" + this.f33886b + "}";
    }
}
