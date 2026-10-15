package m3;

import java.util.Objects;
import m3.g;

/* JADX INFO: compiled from: AutoValue_BackendResponse.java */
/* JADX INFO: loaded from: classes.dex */
final class b extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g.a f32131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f32132b;

    b(g.a aVar, long j10) {
        Objects.requireNonNull(aVar, "Null status");
        this.f32131a = aVar;
        this.f32132b = j10;
    }

    @Override // m3.g
    public long b() {
        return this.f32132b;
    }

    @Override // m3.g
    public g.a c() {
        return this.f32131a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f32131a.equals(gVar.c()) && this.f32132b == gVar.b();
    }

    public int hashCode() {
        int iHashCode = (this.f32131a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f32132b;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f32131a + ", nextRequestWaitMillis=" + this.f32132b + "}";
    }
}
