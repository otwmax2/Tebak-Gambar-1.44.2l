package s5;

import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Application_Organization.java */
/* JADX INFO: loaded from: classes2.dex */
final class j extends f0.e.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34830a;

    @Override // s5.f0.e.a.b
    public String a() {
        return this.f34830a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.a.b) {
            return this.f34830a.equals(((f0.e.a.b) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f34830a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Organization{clsId=" + this.f34830a + "}";
    }
}
