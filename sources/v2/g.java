package v2;

/* JADX INFO: compiled from: SimpleTarget.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g<Z> extends a<Z> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f35779p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f35780q;

    public g() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // v2.j
    public final void i(h hVar) {
        if (x2.h.l(this.f35779p, this.f35780q)) {
            hVar.g(this.f35779p, this.f35780q);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f35779p + " and height: " + this.f35780q + ", either provide dimensions in the constructor or call override()");
    }

    public g(int i10, int i11) {
        this.f35779p = i10;
        this.f35780q = i11;
    }
}
