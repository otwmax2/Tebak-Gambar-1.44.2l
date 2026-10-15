package y9;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends d {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f37141s = new a(null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final f f37142t = new f(1, 0);

    /* JADX INFO: compiled from: Ranges.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }

        public final f a() {
            return f.f37142t;
        }
    }

    public f(int i10, int i11) {
        super(i10, i11, 1);
    }

    @Override // y9.d
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            if (!isEmpty() || !((f) obj).isEmpty()) {
                f fVar = (f) obj;
                if (c() != fVar.c() || g() != fVar.g()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // y9.d
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (c() * 31) + g();
    }

    @Override // y9.d
    public boolean isEmpty() {
        return c() > g();
    }

    public boolean l(int i10) {
        return c() <= i10 && i10 <= g();
    }

    public Integer m() {
        return Integer.valueOf(g());
    }

    public Integer n() {
        return Integer.valueOf(c());
    }

    @Override // y9.d
    public String toString() {
        return c() + ".." + g();
    }
}
