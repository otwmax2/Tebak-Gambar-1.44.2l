package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzen {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzfqp f16986d = zzfqp.u(zzfnh.f18474a, zzfnh.f18476c, zzfnh.f18479f, zzfnh.f18477d, zzfnh.f18478e);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f16987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f16988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f16989c;

    public zzen() {
        this.f16987a = zzew.f17499f;
    }

    public zzen(byte[] bArr, int i10) {
        this.f16987a = bArr;
        this.f16989c = i10;
    }

    public final long A() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        long j10 = bArr[i10];
        int i12 = i11 + 1;
        this.f16988b = i12;
        long j11 = bArr[i11];
        int i13 = i12 + 1;
        this.f16988b = i13;
        long j12 = bArr[i12];
        this.f16988b = i13 + 1;
        return (((long) bArr[i13]) & 255) | ((j10 & 255) << 24) | ((j11 & 255) << 16) | ((j12 & 255) << 8);
    }

    public final long B() {
        long jZ = z();
        if (jZ >= 0) {
            return jZ;
        }
        throw new IllegalStateException("Top bit not zero: " + jZ);
    }

    public final long C() {
        int i10;
        int i11;
        long j10 = this.f16987a[this.f16988b];
        int i12 = 7;
        while (true) {
            i10 = 0;
            if (i12 < 0) {
                break;
            }
            int i13 = 1 << i12;
            if ((((long) i13) & j10) != 0) {
                i12--;
            } else if (i12 < 6) {
                j10 &= (long) (i13 - 1);
                i10 = 7 - i12;
            } else if (i12 == 7) {
                i10 = 1;
            }
        }
        if (i10 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j10);
        }
        for (i11 = 1; i11 < i10; i11++) {
            byte b10 = this.f16987a[this.f16988b + i11];
            if ((b10 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j10);
            }
            j10 = (j10 << 6) | ((long) (b10 & 63));
        }
        this.f16988b += i10;
        return j10;
    }

    public final String D(char c10) {
        int i10 = this.f16989c;
        int i11 = this.f16988b;
        if (i10 - i11 == 0) {
            return null;
        }
        while (i11 < this.f16989c && this.f16987a[i11] != 0) {
            i11++;
        }
        byte[] bArr = this.f16987a;
        int i12 = this.f16988b;
        String strJ = zzew.j(bArr, i12, i11 - i12);
        this.f16988b = i11;
        if (i11 < this.f16989c) {
            this.f16988b = i11 + 1;
        }
        return strJ;
    }

    public final String E(int i10) {
        if (i10 == 0) {
            return BuildConfig.FLAVOR;
        }
        int i11 = this.f16988b;
        int i12 = (i11 + i10) - 1;
        String strJ = zzew.j(this.f16987a, i11, (i12 >= this.f16989c || this.f16987a[i12] != 0) ? i10 : i10 - 1);
        this.f16988b += i10;
        return strJ;
    }

    public final String F(int i10, Charset charset) {
        byte[] bArr = this.f16987a;
        int i11 = this.f16988b;
        String str = new String(bArr, i11, i10, charset);
        this.f16988b = i11 + i10;
        return str;
    }

    public final short G() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        this.f16988b = i11 + 1;
        return (short) ((bArr[i11] & 255) | (i12 << 8));
    }

    public final void H(int i10) {
        byte[] bArr = this.f16987a;
        if (i10 > bArr.length) {
            this.f16987a = Arrays.copyOf(bArr, i10);
        }
    }

    public final void a(zzem zzemVar, int i10) {
        b(zzemVar.f16938a, 0, i10);
        zzemVar.j(0);
    }

    public final void b(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.f16987a, this.f16988b, bArr, i10, i11);
        this.f16988b += i11;
    }

    public final void c(int i10) {
        byte[] bArr = this.f16987a;
        if (bArr.length < i10) {
            bArr = new byte[i10];
        }
        d(bArr, i10);
    }

    public final void d(byte[] bArr, int i10) {
        this.f16987a = bArr;
        this.f16989c = i10;
        this.f16988b = 0;
    }

    public final void e(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 <= this.f16987a.length) {
            z10 = true;
        }
        zzdl.d(z10);
        this.f16989c = i10;
    }

    public final void f(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 <= this.f16989c) {
            z10 = true;
        }
        zzdl.d(z10);
        this.f16988b = i10;
    }

    public final void g(int i10) {
        f(this.f16988b + i10);
    }

    public final byte[] h() {
        return this.f16987a;
    }

    public final int i() {
        return this.f16989c - this.f16988b;
    }

    public final int j() {
        return this.f16987a.length;
    }

    public final int k() {
        return this.f16988b;
    }

    public final int l() {
        return this.f16989c;
    }

    public final int m() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i11 + 1;
        this.f16988b = i13;
        int i14 = bArr[i11] & 255;
        int i15 = i13 + 1;
        this.f16988b = i15;
        int i16 = bArr[i13] & 255;
        this.f16988b = i15 + 1;
        return (bArr[i15] & 255) | (i12 << 24) | (i14 << 16) | (i16 << 8);
    }

    public final int n() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i11 + 1;
        this.f16988b = i13;
        int i14 = bArr[i11] & 255;
        this.f16988b = i13 + 1;
        return (bArr[i13] & 255) | ((i12 << 24) >> 8) | (i14 << 8);
    }

    public final int o() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i11 + 1;
        this.f16988b = i13;
        int i14 = bArr[i11] & 255;
        int i15 = i13 + 1;
        this.f16988b = i15;
        int i16 = bArr[i13] & 255;
        this.f16988b = i15 + 1;
        return ((bArr[i15] & 255) << 24) | i12 | (i14 << 8) | (i16 << 16);
    }

    public final int p() {
        int iO = o();
        if (iO >= 0) {
            return iO;
        }
        throw new IllegalStateException("Top bit not zero: " + iO);
    }

    public final int q() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        this.f16988b = i11 + 1;
        return ((bArr[i11] & 255) << 8) | i12;
    }

    public final int r() {
        return (s() << 21) | (s() << 14) | (s() << 7) | s();
    }

    public final int s() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        this.f16988b = i10 + 1;
        return bArr[i10] & 255;
    }

    public final int t() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i11 + 1;
        this.f16988b = i13;
        int i14 = bArr[i11] & 255;
        this.f16988b = i13 + 2;
        return i14 | (i12 << 8);
    }

    public final int u() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i11 + 1;
        this.f16988b = i13;
        int i14 = bArr[i11] & 255;
        this.f16988b = i13 + 1;
        return (bArr[i13] & 255) | (i12 << 16) | (i14 << 8);
    }

    public final int v() {
        int iM = m();
        if (iM >= 0) {
            return iM;
        }
        throw new IllegalStateException("Top bit not zero: " + iM);
    }

    public final int w() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        int i12 = bArr[i10] & 255;
        this.f16988b = i11 + 1;
        return (bArr[i11] & 255) | (i12 << 8);
    }

    public final long x() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        long j10 = bArr[i10];
        int i12 = i11 + 1;
        this.f16988b = i12;
        long j11 = bArr[i11];
        int i13 = i12 + 1;
        this.f16988b = i13;
        long j12 = bArr[i12];
        int i14 = i13 + 1;
        this.f16988b = i14;
        long j13 = bArr[i13];
        int i15 = i14 + 1;
        this.f16988b = i15;
        long j14 = bArr[i14];
        int i16 = i15 + 1;
        this.f16988b = i16;
        long j15 = bArr[i15];
        int i17 = i16 + 1;
        this.f16988b = i17;
        long j16 = bArr[i16];
        this.f16988b = i17 + 1;
        return ((((long) bArr[i17]) & 255) << 56) | ((j16 & 255) << 48) | (j10 & 255) | ((j11 & 255) << 8) | ((j12 & 255) << 16) | ((j13 & 255) << 24) | ((j14 & 255) << 32) | ((j15 & 255) << 40);
    }

    public final long y() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        long j10 = bArr[i10];
        int i12 = i11 + 1;
        this.f16988b = i12;
        long j11 = bArr[i11];
        int i13 = i12 + 1;
        this.f16988b = i13;
        long j12 = bArr[i12];
        this.f16988b = i13 + 1;
        return ((((long) bArr[i13]) & 255) << 24) | (j10 & 255) | ((j11 & 255) << 8) | ((j12 & 255) << 16);
    }

    public final long z() {
        byte[] bArr = this.f16987a;
        int i10 = this.f16988b;
        int i11 = i10 + 1;
        this.f16988b = i11;
        long j10 = bArr[i10];
        int i12 = i11 + 1;
        this.f16988b = i12;
        long j11 = bArr[i11];
        int i13 = i12 + 1;
        this.f16988b = i13;
        long j12 = bArr[i12];
        int i14 = i13 + 1;
        this.f16988b = i14;
        long j13 = bArr[i13];
        int i15 = i14 + 1;
        this.f16988b = i15;
        long j14 = bArr[i14];
        int i16 = i15 + 1;
        this.f16988b = i16;
        long j15 = bArr[i15];
        int i17 = i16 + 1;
        this.f16988b = i17;
        long j16 = bArr[i16];
        this.f16988b = i17 + 1;
        return (((long) bArr[i17]) & 255) | ((j10 & 255) << 56) | ((j11 & 255) << 48) | ((j12 & 255) << 40) | ((j13 & 255) << 32) | ((j14 & 255) << 24) | ((j15 & 255) << 16) | ((j16 & 255) << 8);
    }

    public zzen(int i10) {
        this.f16987a = new byte[i10];
        this.f16989c = i10;
    }

    public zzen(byte[] bArr) {
        this.f16987a = bArr;
        this.f16989c = bArr.length;
    }
}
