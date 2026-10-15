package i7;

/* JADX INFO: compiled from: Dimension.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f30512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f30513b;

    public int a() {
        return this.f30513b;
    }

    public int b() {
        return this.f30512a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f30512a == bVar.f30512a && this.f30513b == bVar.f30513b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f30512a * 32713) + this.f30513b;
    }

    public String toString() {
        return this.f30512a + "x" + this.f30513b;
    }
}
