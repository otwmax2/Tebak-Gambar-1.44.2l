package h9;

/* JADX INFO: compiled from: KotlinVersion.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f implements Comparable<f> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f30286s = new a(null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final f f30287t = g.a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f30288o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f30289p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f30290q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f30291r;

    /* JADX INFO: compiled from: KotlinVersion.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public f(int i10, int i11, int i12) {
        this.f30288o = i10;
        this.f30289p = i11;
        this.f30290q = i12;
        this.f30291r = e(i10, i11, i12);
    }

    private final int e(int i10, int i11, int i12) {
        boolean z10 = false;
        if (new y9.f(0, 255).l(i10) && new y9.f(0, 255).l(i11) && new y9.f(0, 255).l(i12)) {
            z10 = true;
        }
        if (z10) {
            return (i10 << 16) + (i11 << 8) + i12;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i10 + '.' + i11 + '.' + i12).toString());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        t9.m.e(fVar, "other");
        return this.f30291r - fVar.f30291r;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        f fVar = obj instanceof f ? (f) obj : null;
        return fVar != null && this.f30291r == fVar.f30291r;
    }

    public int hashCode() {
        return this.f30291r;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f30288o);
        sb.append('.');
        sb.append(this.f30289p);
        sb.append('.');
        sb.append(this.f30290q);
        return sb.toString();
    }
}
