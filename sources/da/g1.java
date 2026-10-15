package da;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
final class g1 implements s1 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f28807o;

    public g1(boolean z10) {
        this.f28807o = z10;
    }

    @Override // da.s1
    public boolean c() {
        return this.f28807o;
    }

    @Override // da.s1
    public i2 f() {
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(c() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
