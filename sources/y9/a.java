package y9;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: classes2.dex */
public class a implements Iterable<Character>, u9.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final C0305a f37123r = new C0305a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final char f37124o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final char f37125p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f37126q;

    /* JADX INFO: renamed from: y9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Progressions.kt */
    public static final class C0305a {
        private C0305a() {
        }

        public /* synthetic */ C0305a(t9.g gVar) {
            this();
        }
    }

    public a(char c10, char c11, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i10 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f37124o = c10;
        this.f37125p = (char) n9.c.c(c10, c11, i10);
        this.f37126q = i10;
    }

    public final char c() {
        return this.f37124o;
    }

    public final char g() {
        return this.f37125p;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public i9.i iterator() {
        return new b(this.f37124o, this.f37125p, this.f37126q);
    }
}
