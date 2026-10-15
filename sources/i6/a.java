package i6;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_HeartBeatResult.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f30481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f30482b;

    a(String str, List<String> list) {
        Objects.requireNonNull(str, "Null userAgent");
        this.f30481a = str;
        Objects.requireNonNull(list, "Null usedDates");
        this.f30482b = list;
    }

    @Override // i6.l
    public List<String> b() {
        return this.f30482b;
    }

    @Override // i6.l
    public String c() {
        return this.f30481a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f30481a.equals(lVar.c()) && this.f30482b.equals(lVar.b());
    }

    public int hashCode() {
        return ((this.f30481a.hashCode() ^ 1000003) * 1000003) ^ this.f30482b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f30481a + ", usedDates=" + this.f30482b + "}";
    }
}
