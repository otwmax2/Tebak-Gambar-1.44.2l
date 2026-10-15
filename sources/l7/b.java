package l7;

import java.util.Arrays;

/* JADX INFO: compiled from: BitMatrix.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements Cloneable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f32030o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f32031p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f32032q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int[] f32033r;

    public b(int i10) {
        this(i10, i10);
    }

    private String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f32031p * (this.f32030o + 1));
        for (int i10 = 0; i10 < this.f32031p; i10++) {
            for (int i11 = 0; i11 < this.f32030o; i11++) {
                sb.append(f(i11, i10) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public void b() {
        int length = this.f32033r.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f32033r[i10] = 0;
        }
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public b clone() {
        return new b(this.f32030o, this.f32031p, this.f32032q, (int[]) this.f32033r.clone());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f32030o == bVar.f32030o && this.f32031p == bVar.f32031p && this.f32032q == bVar.f32032q && Arrays.equals(this.f32033r, bVar.f32033r);
    }

    public boolean f(int i10, int i11) {
        return ((this.f32033r[(i11 * this.f32032q) + (i10 / 32)] >>> (i10 & 31)) & 1) != 0;
    }

    public int g() {
        return this.f32031p;
    }

    public int h() {
        return this.f32030o;
    }

    public int hashCode() {
        int i10 = this.f32030o;
        return (((((((i10 * 31) + i10) * 31) + this.f32031p) * 31) + this.f32032q) * 31) + Arrays.hashCode(this.f32033r);
    }

    public void i(int i10, int i11) {
        int i12 = (i11 * this.f32032q) + (i10 / 32);
        int[] iArr = this.f32033r;
        iArr[i12] = (1 << (i10 & 31)) | iArr[i12];
    }

    public void j(int i10, int i11, int i12, int i13) {
        if (i11 < 0 || i10 < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i13 <= 0 || i12 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i14 = i12 + i10;
        int i15 = i13 + i11;
        if (i15 > this.f32031p || i14 > this.f32030o) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i11 < i15) {
            int i16 = this.f32032q * i11;
            for (int i17 = i10; i17 < i14; i17++) {
                int[] iArr = this.f32033r;
                int i18 = (i17 / 32) + i16;
                iArr[i18] = iArr[i18] | (1 << (i17 & 31));
            }
            i11++;
        }
    }

    public String k(String str, String str2) {
        return a(str, str2, "\n");
    }

    public String toString() {
        return k("X ", "  ");
    }

    public b(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f32030o = i10;
        this.f32031p = i11;
        int i12 = (i10 + 31) / 32;
        this.f32032q = i12;
        this.f32033r = new int[i12 * i11];
    }

    private b(int i10, int i11, int i12, int[] iArr) {
        this.f32030o = i10;
        this.f32031p = i11;
        this.f32032q = i12;
        this.f32033r = iArr;
    }
}
