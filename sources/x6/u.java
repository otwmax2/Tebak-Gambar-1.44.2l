package x6;

/* JADX INFO: compiled from: SessionEvent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f36455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f36456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f36457d;

    public u(String str, int i10, int i11, boolean z10) {
        t9.m.e(str, "processName");
        this.f36454a = str;
        this.f36455b = i10;
        this.f36456c = i11;
        this.f36457d = z10;
    }

    public final int a() {
        return this.f36456c;
    }

    public final int b() {
        return this.f36455b;
    }

    public final String c() {
        return this.f36454a;
    }

    public final boolean d() {
        return this.f36457d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return t9.m.a(this.f36454a, uVar.f36454a) && this.f36455b == uVar.f36455b && this.f36456c == uVar.f36456c && this.f36457d == uVar.f36457d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public int hashCode() {
        int iHashCode = ((((this.f36454a.hashCode() * 31) + this.f36455b) * 31) + this.f36456c) * 31;
        boolean z10 = this.f36457d;
        ?? r12 = z10;
        if (z10) {
            r12 = 1;
        }
        return iHashCode + r12;
    }

    public String toString() {
        return "ProcessDetails(processName=" + this.f36454a + ", pid=" + this.f36455b + ", importance=" + this.f36456c + ", isDefaultProcess=" + this.f36457d + ')';
    }
}
