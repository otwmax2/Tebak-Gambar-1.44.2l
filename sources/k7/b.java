package k7;

/* JADX INFO: compiled from: BinaryShiftToken.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final short f31597c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final short f31598d;

    b(g gVar, int i10, int i11) {
        super(gVar);
        this.f31597c = (short) i10;
        this.f31598d = (short) i11;
    }

    @Override // k7.g
    public void c(l7.a aVar, byte[] bArr) {
        int i10 = 0;
        while (true) {
            short s10 = this.f31598d;
            if (i10 >= s10) {
                return;
            }
            if (i10 == 0 || (i10 == 31 && s10 <= 62)) {
                aVar.d(31, 5);
                short s11 = this.f31598d;
                if (s11 > 62) {
                    aVar.d(s11 - 31, 16);
                } else if (i10 == 0) {
                    aVar.d(Math.min((int) s11, 31), 5);
                } else {
                    aVar.d(s11 - 31, 5);
                }
            }
            aVar.d(bArr[this.f31597c + i10], 8);
            i10++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append((int) this.f31597c);
        sb.append("::");
        sb.append((this.f31597c + this.f31598d) - 1);
        sb.append('>');
        return sb.toString();
    }
}
