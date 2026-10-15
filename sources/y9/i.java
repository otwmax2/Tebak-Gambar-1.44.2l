package y9;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i extends g {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f37151s = new a(null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final i f37152t = new i(1, 0);

    /* JADX INFO: compiled from: Ranges.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public i(long j10, long j11) {
        super(j10, j11, 1L);
    }

    public boolean equals(Object obj) {
        if (obj instanceof i) {
            if (!isEmpty() || !((i) obj).isEmpty()) {
                i iVar = (i) obj;
                if (c() != iVar.c() || g() != iVar.g()) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((((long) 31) * (c() ^ (c() >>> 32))) + (g() ^ (g() >>> 32)));
    }

    public boolean isEmpty() {
        return c() > g();
    }

    public boolean j(long j10) {
        return c() <= j10 && j10 <= g();
    }

    public String toString() {
        return c() + ".." + g();
    }
}
