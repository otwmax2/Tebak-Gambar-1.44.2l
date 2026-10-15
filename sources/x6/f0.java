package x6;

/* JADX INFO: compiled from: SessionEvent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f36401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f36402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f36403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f36404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f36405f;

    public f0(String str, String str2, int i10, long j10, f fVar, String str3) {
        t9.m.e(str, "sessionId");
        t9.m.e(str2, "firstSessionId");
        t9.m.e(fVar, "dataCollectionStatus");
        t9.m.e(str3, "firebaseInstallationId");
        this.f36400a = str;
        this.f36401b = str2;
        this.f36402c = i10;
        this.f36403d = j10;
        this.f36404e = fVar;
        this.f36405f = str3;
    }

    public final f a() {
        return this.f36404e;
    }

    public final long b() {
        return this.f36403d;
    }

    public final String c() {
        return this.f36405f;
    }

    public final String d() {
        return this.f36401b;
    }

    public final String e() {
        return this.f36400a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return t9.m.a(this.f36400a, f0Var.f36400a) && t9.m.a(this.f36401b, f0Var.f36401b) && this.f36402c == f0Var.f36402c && this.f36403d == f0Var.f36403d && t9.m.a(this.f36404e, f0Var.f36404e) && t9.m.a(this.f36405f, f0Var.f36405f);
    }

    public final int f() {
        return this.f36402c;
    }

    public int hashCode() {
        return (((((((((this.f36400a.hashCode() * 31) + this.f36401b.hashCode()) * 31) + this.f36402c) * 31) + com.facebook.e.a(this.f36403d)) * 31) + this.f36404e.hashCode()) * 31) + this.f36405f.hashCode();
    }

    public String toString() {
        return "SessionInfo(sessionId=" + this.f36400a + ", firstSessionId=" + this.f36401b + ", sessionIndex=" + this.f36402c + ", eventTimestampUs=" + this.f36403d + ", dataCollectionStatus=" + this.f36404e + ", firebaseInstallationId=" + this.f36405f + ')';
    }
}
