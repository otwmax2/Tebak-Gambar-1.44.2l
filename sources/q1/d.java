package q1;

/* JADX INFO: compiled from: Preference.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f33750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f33751b;

    public d(String str, boolean z10) {
        this(str, z10 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.f33750a.equals(dVar.f33750a)) {
            return false;
        }
        Long l10 = this.f33751b;
        Long l11 = dVar.f33751b;
        return l10 != null ? l10.equals(l11) : l11 == null;
    }

    public int hashCode() {
        int iHashCode = this.f33750a.hashCode() * 31;
        Long l10 = this.f33751b;
        return iHashCode + (l10 != null ? l10.hashCode() : 0);
    }

    public d(String str, long j10) {
        this.f33750a = str;
        this.f33751b = Long.valueOf(j10);
    }
}
