package k7;

/* JADX INFO: compiled from: SimpleToken.java */
/* JADX INFO: loaded from: classes2.dex */
final class e extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final short f31606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final short f31607d;

    e(g gVar, int i10, int i11) {
        super(gVar);
        this.f31606c = (short) i10;
        this.f31607d = (short) i11;
    }

    @Override // k7.g
    void c(l7.a aVar, byte[] bArr) {
        aVar.d(this.f31606c, this.f31607d);
    }

    public String toString() {
        short s10 = this.f31606c;
        short s11 = this.f31607d;
        return "<" + Integer.toBinaryString((s10 & ((1 << s11) - 1)) | (1 << s11) | (1 << this.f31607d)).substring(1) + '>';
    }
}
