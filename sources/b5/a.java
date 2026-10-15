package b5;

/* JADX INFO: compiled from: AutoValue_StartupTime.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f4648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f4650c;

    a(long j10, long j11, long j12) {
        this.f4648a = j10;
        this.f4649b = j11;
        this.f4650c = j12;
    }

    @Override // b5.s
    public long b() {
        return this.f4649b;
    }

    @Override // b5.s
    public long c() {
        return this.f4648a;
    }

    @Override // b5.s
    public long d() {
        return this.f4650c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.f4648a == sVar.c() && this.f4649b == sVar.b() && this.f4650c == sVar.d();
    }

    public int hashCode() {
        long j10 = this.f4648a;
        long j11 = this.f4649b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f4650c;
        return ((int) (j12 ^ (j12 >>> 32))) ^ i10;
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.f4648a + ", elapsedRealtime=" + this.f4649b + ", uptimeMillis=" + this.f4650c + "}";
    }
}
