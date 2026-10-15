package r7;

/* JADX INFO: compiled from: BarcodeRow.java */
/* JADX INFO: loaded from: classes2.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f34311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34312b = 0;

    b(int i10) {
        this.f34311a = new byte[i10];
    }

    private void c(int i10, boolean z10) {
        this.f34311a[i10] = z10 ? (byte) 1 : (byte) 0;
    }

    void a(boolean z10, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f34312b;
            this.f34312b = i12 + 1;
            c(i12, z10);
        }
    }

    byte[] b(int i10) {
        int length = this.f34311a.length * i10;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            bArr[i11] = this.f34311a[i11 / i10];
        }
        return bArr;
    }
}
