package k7;

/* JADX INFO: compiled from: Token.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final g f31613b = new e(null, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f31614a;

    g(g gVar) {
        this.f31614a = gVar;
    }

    final g a(int i10, int i11) {
        return new e(this, i10, i11);
    }

    final g b(int i10, int i11) {
        return new b(this, i10, i11);
    }

    abstract void c(l7.a aVar, byte[] bArr);

    final g d() {
        return this.f31614a;
    }
}
