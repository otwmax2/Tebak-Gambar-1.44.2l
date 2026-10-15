package l7;

import java.util.Arrays;

/* JADX INFO: compiled from: BitArray.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f32028o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f32029p;

    public a() {
        this.f32029p = 0;
        this.f32028o = new int[1];
    }

    private void g(int i10) {
        if (i10 > (this.f32028o.length << 5)) {
            int[] iArrK = k(i10);
            int[] iArr = this.f32028o;
            System.arraycopy(iArr, 0, iArrK, 0, iArr.length);
            this.f32028o = iArrK;
        }
    }

    private static int[] k(int i10) {
        return new int[(i10 + 31) / 32];
    }

    public void a(boolean z10) {
        g(this.f32029p + 1);
        if (z10) {
            int[] iArr = this.f32028o;
            int i10 = this.f32029p;
            int i11 = i10 / 32;
            iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
        }
        this.f32029p++;
    }

    public void b(a aVar) {
        int i10 = aVar.f32029p;
        g(this.f32029p + i10);
        for (int i11 = 0; i11 < i10; i11++) {
            a(aVar.h(i11));
        }
    }

    public void d(int i10, int i11) {
        if (i11 < 0 || i11 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        g(this.f32029p + i11);
        while (i11 > 0) {
            boolean z10 = true;
            if (((i10 >> (i11 - 1)) & 1) != 1) {
                z10 = false;
            }
            a(z10);
            i11--;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f32029p == aVar.f32029p && Arrays.equals(this.f32028o, aVar.f32028o);
    }

    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public a clone() {
        return new a((int[]) this.f32028o.clone(), this.f32029p);
    }

    public boolean h(int i10) {
        return ((1 << (i10 & 31)) & this.f32028o[i10 / 32]) != 0;
    }

    public int hashCode() {
        return (this.f32029p * 31) + Arrays.hashCode(this.f32028o);
    }

    public int i() {
        return this.f32029p;
    }

    public int j() {
        return (this.f32029p + 7) / 8;
    }

    public void l(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < 8; i15++) {
                if (h(i10)) {
                    i14 |= 1 << (7 - i15);
                }
                i10++;
            }
            bArr[i11 + i13] = (byte) i14;
        }
    }

    public void m(a aVar) {
        if (this.f32029p != aVar.f32029p) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.f32028o;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = iArr[i10] ^ aVar.f32028o[i10];
            i10++;
        }
    }

    public String toString() {
        int i10 = this.f32029p;
        StringBuilder sb = new StringBuilder(i10 + (i10 / 8) + 1);
        for (int i11 = 0; i11 < this.f32029p; i11++) {
            if ((i11 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(h(i11) ? 'X' : '.');
        }
        return sb.toString();
    }

    a(int[] iArr, int i10) {
        this.f32028o = iArr;
        this.f32029p = i10;
    }
}
