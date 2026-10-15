package x6;

/* JADX INFO: compiled from: SessionGenerator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f36494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f36495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f36496d;

    public z(String str, String str2, int i10, long j10) {
        t9.m.e(str, "sessionId");
        t9.m.e(str2, "firstSessionId");
        this.f36493a = str;
        this.f36494b = str2;
        this.f36495c = i10;
        this.f36496d = j10;
    }

    public final String a() {
        return this.f36494b;
    }

    public final String b() {
        return this.f36493a;
    }

    public final int c() {
        return this.f36495c;
    }

    public final long d() {
        return this.f36496d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return t9.m.a(this.f36493a, zVar.f36493a) && t9.m.a(this.f36494b, zVar.f36494b) && this.f36495c == zVar.f36495c && this.f36496d == zVar.f36496d;
    }

    public int hashCode() {
        return (((((this.f36493a.hashCode() * 31) + this.f36494b.hashCode()) * 31) + this.f36495c) * 31) + com.facebook.e.a(this.f36496d);
    }

    public String toString() {
        return "SessionDetails(sessionId=" + this.f36493a + ", firstSessionId=" + this.f36494b + ", sessionIndex=" + this.f36495c + ", sessionStartTimestampUs=" + this.f36496d + ')';
    }
}
