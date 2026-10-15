package t3;

import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_PersistedEvent.java */
/* JADX INFO: loaded from: classes.dex */
final class b extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f35305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l3.p f35306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l3.i f35307c;

    b(long j10, l3.p pVar, l3.i iVar) {
        this.f35305a = j10;
        Objects.requireNonNull(pVar, "Null transportContext");
        this.f35306b = pVar;
        Objects.requireNonNull(iVar, "Null event");
        this.f35307c = iVar;
    }

    @Override // t3.k
    public l3.i b() {
        return this.f35307c;
    }

    @Override // t3.k
    public long c() {
        return this.f35305a;
    }

    @Override // t3.k
    public l3.p d() {
        return this.f35306b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f35305a == kVar.c() && this.f35306b.equals(kVar.d()) && this.f35307c.equals(kVar.b());
    }

    public int hashCode() {
        long j10 = this.f35305a;
        return this.f35307c.hashCode() ^ ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f35306b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f35305a + ", transportContext=" + this.f35306b + ", event=" + this.f35307c + "}";
    }
}
