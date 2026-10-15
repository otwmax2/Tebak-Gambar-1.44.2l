package k3;

/* JADX INFO: compiled from: AutoValue_LogResponse.java */
/* JADX INFO: loaded from: classes.dex */
final class h extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f31465a;

    h(long j10) {
        this.f31465a = j10;
    }

    @Override // k3.n
    public long c() {
        return this.f31465a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof n) && this.f31465a == ((n) obj).c();
    }

    public int hashCode() {
        long j10 = this.f31465a;
        return 1000003 ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f31465a + "}";
    }
}
