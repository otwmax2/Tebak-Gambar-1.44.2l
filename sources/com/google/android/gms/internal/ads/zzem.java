package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f16938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f16939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f16940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f16941d;

    public zzem() {
        this.f16938a = zzew.f17499f;
    }

    public zzem(byte[] bArr, int i10) {
        this.f16938a = bArr;
        this.f16941d = i10;
    }

    private final void o() {
        int i10;
        int i11 = this.f16939b;
        boolean z10 = true;
        if (i11 < 0 || (i11 >= (i10 = this.f16941d) && (i11 != i10 || this.f16940c != 0))) {
            z10 = false;
        }
        zzdl.f(z10);
    }

    public final int a() {
        return ((this.f16941d - this.f16939b) * 8) - this.f16940c;
    }

    public final int b() {
        zzdl.f(this.f16940c == 0);
        return this.f16939b;
    }

    public final int c() {
        return (this.f16939b * 8) + this.f16940c;
    }

    public final int d(int i10) {
        int i11;
        if (i10 == 0) {
            return 0;
        }
        this.f16940c += i10;
        int i12 = 0;
        while (true) {
            i11 = this.f16940c;
            if (i11 <= 8) {
                break;
            }
            int i13 = i11 - 8;
            this.f16940c = i13;
            byte[] bArr = this.f16938a;
            int i14 = this.f16939b;
            this.f16939b = i14 + 1;
            i12 |= (bArr[i14] & 255) << i13;
        }
        byte[] bArr2 = this.f16938a;
        int i15 = this.f16939b;
        int i16 = i12 | ((bArr2[i15] & 255) >> (8 - i11));
        int i17 = 32 - i10;
        if (i11 == 8) {
            this.f16940c = 0;
            this.f16939b = i15 + 1;
        }
        int i18 = ((-1) >>> i17) & i16;
        o();
        return i18;
    }

    public final void e() {
        if (this.f16940c == 0) {
            return;
        }
        this.f16940c = 0;
        this.f16939b++;
        o();
    }

    public final void f(int i10, int i11) {
        int iMin = Math.min(8 - this.f16940c, 14);
        int i12 = this.f16940c;
        int i13 = (8 - i12) - iMin;
        byte[] bArr = this.f16938a;
        int i14 = this.f16939b;
        byte b10 = (byte) (((65280 >> i12) | ((1 << i13) - 1)) & bArr[i14]);
        bArr[i14] = b10;
        int i15 = 14 - iMin;
        int i16 = i10 & 16383;
        bArr[i14] = (byte) (b10 | ((i16 >>> i15) << i13));
        int i17 = i14 + 1;
        while (i15 > 8) {
            i15 -= 8;
            this.f16938a[i17] = (byte) (i16 >>> i15);
            i17++;
        }
        byte[] bArr2 = this.f16938a;
        byte b11 = (byte) (bArr2[i17] & ((1 << r0) - 1));
        bArr2[i17] = b11;
        bArr2[i17] = (byte) (((i16 & ((1 << i15) - 1)) << (8 - i15)) | b11);
        l(14);
        o();
    }

    public final void g(byte[] bArr, int i10, int i11) {
        int i12;
        int i13 = 0;
        while (true) {
            i12 = i11 >> 3;
            if (i13 >= i12) {
                break;
            }
            byte[] bArr2 = this.f16938a;
            int i14 = this.f16939b;
            int i15 = i14 + 1;
            this.f16939b = i15;
            byte b10 = bArr2[i14];
            int i16 = this.f16940c;
            byte b11 = (byte) (b10 << i16);
            bArr[i13] = b11;
            bArr[i13] = (byte) (((bArr2[i15] & 255) >> (8 - i16)) | b11);
            i13++;
        }
        int i17 = i11 & 7;
        if (i17 == 0) {
            return;
        }
        byte b12 = (byte) (bArr[i12] & (255 >> i17));
        bArr[i12] = b12;
        int i18 = this.f16940c;
        if (i18 + i17 > 8) {
            byte[] bArr3 = this.f16938a;
            int i19 = this.f16939b;
            this.f16939b = i19 + 1;
            b12 = (byte) (b12 | ((bArr3[i19] & 255) << i18));
            bArr[i12] = b12;
            i18 -= 8;
        }
        int i20 = i18 + i17;
        this.f16940c = i20;
        byte[] bArr4 = this.f16938a;
        int i21 = this.f16939b;
        bArr[i12] = (byte) (((byte) (((255 & bArr4[i21]) >> (8 - i20)) << (8 - i17))) | b12);
        if (i20 == 8) {
            this.f16940c = 0;
            this.f16939b = i21 + 1;
        }
        o();
    }

    public final void h(zzen zzenVar) {
        i(zzenVar.h(), zzenVar.l());
        j(zzenVar.k() * 8);
    }

    public final void i(byte[] bArr, int i10) {
        this.f16938a = bArr;
        this.f16939b = 0;
        this.f16940c = 0;
        this.f16941d = i10;
    }

    public final void j(int i10) {
        int i11 = i10 / 8;
        this.f16939b = i11;
        this.f16940c = i10 - (i11 * 8);
        o();
    }

    public final void k() {
        int i10 = this.f16940c + 1;
        this.f16940c = i10;
        if (i10 == 8) {
            this.f16940c = 0;
            this.f16939b++;
        }
        o();
    }

    public final void l(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f16939b + i11;
        this.f16939b = i12;
        int i13 = this.f16940c + (i10 - (i11 * 8));
        this.f16940c = i13;
        if (i13 > 7) {
            this.f16939b = i12 + 1;
            this.f16940c = i13 - 8;
        }
        o();
    }

    public final void m(int i10) {
        zzdl.f(this.f16940c == 0);
        this.f16939b += i10;
        o();
    }

    public final boolean n() {
        int i10 = this.f16938a[this.f16939b] & (128 >> this.f16940c);
        k();
        return i10 != 0;
    }
}
