package x6;

/* JADX INFO: compiled from: SessionEvent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f36312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f0 f36313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f36314c;

    public a0(j jVar, f0 f0Var, b bVar) {
        t9.m.e(jVar, "eventType");
        t9.m.e(f0Var, "sessionData");
        t9.m.e(bVar, "applicationInfo");
        this.f36312a = jVar;
        this.f36313b = f0Var;
        this.f36314c = bVar;
    }

    public final b a() {
        return this.f36314c;
    }

    public final j b() {
        return this.f36312a;
    }

    public final f0 c() {
        return this.f36313b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f36312a == a0Var.f36312a && t9.m.a(this.f36313b, a0Var.f36313b) && t9.m.a(this.f36314c, a0Var.f36314c);
    }

    public int hashCode() {
        return (((this.f36312a.hashCode() * 31) + this.f36313b.hashCode()) * 31) + this.f36314c.hashCode();
    }

    public String toString() {
        return "SessionEvent(eventType=" + this.f36312a + ", sessionData=" + this.f36313b + ", applicationInfo=" + this.f36314c + ')';
    }
}
