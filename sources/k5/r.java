package k5;

/* JADX INFO: compiled from: Dependency.java */
/* JADX INFO: loaded from: classes2.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f0<?> f31578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f31579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f31580c;

    private r(Class<?> cls, int i10, int i11) {
        this((f0<?>) f0.b(cls), i10, i11);
    }

    public static r a(Class<?> cls) {
        return new r(cls, 0, 2);
    }

    private static String b(int i10) {
        if (i10 == 0) {
            return "direct";
        }
        if (i10 == 1) {
            return "provider";
        }
        if (i10 == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i10);
    }

    @Deprecated
    public static r h(Class<?> cls) {
        return new r(cls, 0, 0);
    }

    public static r i(Class<?> cls) {
        return new r(cls, 0, 1);
    }

    public static r j(Class<?> cls) {
        return new r(cls, 1, 0);
    }

    public static r k(f0<?> f0Var) {
        return new r(f0Var, 1, 0);
    }

    public static r l(Class<?> cls) {
        return new r(cls, 1, 1);
    }

    public static r m(f0<?> f0Var) {
        return new r(f0Var, 1, 1);
    }

    public static r n(Class<?> cls) {
        return new r(cls, 2, 0);
    }

    public f0<?> c() {
        return this.f31578a;
    }

    public boolean d() {
        return this.f31580c == 2;
    }

    public boolean e() {
        return this.f31580c == 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f31578a.equals(rVar.f31578a) && this.f31579b == rVar.f31579b && this.f31580c == rVar.f31580c;
    }

    public boolean f() {
        return this.f31579b == 1;
    }

    public boolean g() {
        return this.f31579b == 2;
    }

    public int hashCode() {
        return ((((this.f31578a.hashCode() ^ 1000003) * 1000003) ^ this.f31579b) * 1000003) ^ this.f31580c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f31578a);
        sb.append(", type=");
        int i10 = this.f31579b;
        sb.append(i10 == 1 ? "required" : i10 == 0 ? "optional" : "set");
        sb.append(", injection=");
        sb.append(b(this.f31580c));
        sb.append("}");
        return sb.toString();
    }

    private r(f0<?> f0Var, int i10, int i11) {
        this.f31578a = (f0) e0.c(f0Var, "Null dependency anInterface.");
        this.f31579b = i10;
        this.f31580c = i11;
    }
}
