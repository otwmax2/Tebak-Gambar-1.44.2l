package s5;

import java.util.Objects;
import s5.g0;

/* JADX INFO: compiled from: AutoValue_StaticSessionData.java */
/* JADX INFO: loaded from: classes2.dex */
final class b0 extends g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g0.a f34734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g0.c f34735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g0.b f34736c;

    b0(g0.a aVar, g0.c cVar, g0.b bVar) {
        Objects.requireNonNull(aVar, "Null appData");
        this.f34734a = aVar;
        Objects.requireNonNull(cVar, "Null osData");
        this.f34735b = cVar;
        Objects.requireNonNull(bVar, "Null deviceData");
        this.f34736c = bVar;
    }

    @Override // s5.g0
    public g0.a a() {
        return this.f34734a;
    }

    @Override // s5.g0
    public g0.b c() {
        return this.f34736c;
    }

    @Override // s5.g0
    public g0.c d() {
        return this.f34735b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.f34734a.equals(g0Var.a()) && this.f34735b.equals(g0Var.d()) && this.f34736c.equals(g0Var.c());
    }

    public int hashCode() {
        return ((((this.f34734a.hashCode() ^ 1000003) * 1000003) ^ this.f34735b.hashCode()) * 1000003) ^ this.f34736c.hashCode();
    }

    public String toString() {
        return "StaticSessionData{appData=" + this.f34734a + ", osData=" + this.f34735b + ", deviceData=" + this.f34736c + "}";
    }
}
