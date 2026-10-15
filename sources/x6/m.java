package x6;

/* JADX INFO: compiled from: SessionDatastore.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36441a;

    public m(String str) {
        this.f36441a = str;
    }

    public final String a() {
        return this.f36441a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m) && t9.m.a(this.f36441a, ((m) obj).f36441a);
    }

    public int hashCode() {
        String str = this.f36441a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "FirebaseSessionsData(sessionId=" + this.f36441a + ')';
    }
}
