package x6;

/* JADX INFO: compiled from: SessionEvent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f36397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f36398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f36399c;

    public f() {
        this(null, null, 0.0d, 7, null);
    }

    public f(d dVar, d dVar2, double d10) {
        t9.m.e(dVar, "performance");
        t9.m.e(dVar2, "crashlytics");
        this.f36397a = dVar;
        this.f36398b = dVar2;
        this.f36399c = d10;
    }

    public final d a() {
        return this.f36398b;
    }

    public final d b() {
        return this.f36397a;
    }

    public final double c() {
        return this.f36399c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f36397a == fVar.f36397a && this.f36398b == fVar.f36398b && t9.m.a(Double.valueOf(this.f36399c), Double.valueOf(fVar.f36399c));
    }

    public int hashCode() {
        return (((this.f36397a.hashCode() * 31) + this.f36398b.hashCode()) * 31) + e.a(this.f36399c);
    }

    public String toString() {
        return "DataCollectionStatus(performance=" + this.f36397a + ", crashlytics=" + this.f36398b + ", sessionSamplingRate=" + this.f36399c + ')';
    }

    public /* synthetic */ f(d dVar, d dVar2, double d10, int i10, t9.g gVar) {
        this((i10 & 1) != 0 ? d.COLLECTION_SDK_NOT_INSTALLED : dVar, (i10 & 2) != 0 ? d.COLLECTION_SDK_NOT_INSTALLED : dVar2, (i10 & 4) != 0 ? 1.0d : d10);
    }
}
