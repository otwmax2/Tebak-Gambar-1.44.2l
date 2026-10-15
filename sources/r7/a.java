package r7;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: BarcodeMatrix.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b[] f34307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f34309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f34310d;

    a(int i10, int i11) {
        b[] bVarArr = new b[i10];
        this.f34307a = bVarArr;
        int length = bVarArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            this.f34307a[i12] = new b(((i11 + 4) * 17) + 1);
        }
        this.f34310d = i11 * 17;
        this.f34309c = i10;
        this.f34308b = -1;
    }

    b a() {
        return this.f34307a[this.f34308b];
    }

    public byte[][] b(int i10, int i11) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f34309c * i11, this.f34310d * i10);
        int i12 = this.f34309c * i11;
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[(i12 - i13) - 1] = this.f34307a[i13 / i11].b(i10);
        }
        return bArr;
    }

    void c() {
        this.f34308b++;
    }
}
