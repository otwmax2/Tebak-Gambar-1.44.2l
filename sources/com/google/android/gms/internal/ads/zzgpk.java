package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import com.vungle.warren.downloader.DownloadRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpk extends zzgpm {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final InputStream f19401f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final byte[] f19402g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f19403h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f19404i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f19405j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f19406k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f19407l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f19408m;

    /* synthetic */ zzgpk(InputStream inputStream, int i10, zzgpj zzgpjVar) {
        super(null);
        this.f19408m = Integer.MAX_VALUE;
        zzgqw.f(inputStream, "input");
        this.f19401f = inputStream;
        this.f19402g = new byte[4096];
        this.f19403h = 0;
        this.f19405j = 0;
        this.f19407l = 0;
    }

    private final List D(int i10) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i10 > 0) {
            int iMin = Math.min(i10, 4096);
            byte[] bArr = new byte[iMin];
            int i11 = 0;
            while (i11 < iMin) {
                int i12 = this.f19401f.read(bArr, i11, iMin - i11);
                if (i12 == -1) {
                    throw zzgqy.j();
                }
                this.f19407l += i12;
                i11 += i12;
            }
            i10 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void E() {
        int i10 = this.f19403h + this.f19404i;
        this.f19403h = i10;
        int i11 = this.f19407l + i10;
        int i12 = this.f19408m;
        if (i11 <= i12) {
            this.f19404i = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f19404i = i13;
        this.f19403h = i10 - i13;
    }

    private final void F(int i10) throws IOException {
        if (G(i10)) {
            return;
        }
        if (i10 <= (Integer.MAX_VALUE - this.f19407l) - this.f19405j) {
            throw zzgqy.j();
        }
        throw zzgqy.i();
    }

    private final boolean G(int i10) throws IOException {
        int i11 = this.f19405j;
        int i12 = i11 + i10;
        int i13 = this.f19403h;
        if (i12 <= i13) {
            throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
        }
        int i14 = this.f19407l;
        if (i10 > (Integer.MAX_VALUE - i14) - i11 || i14 + i11 + i10 > this.f19408m) {
            return false;
        }
        if (i11 > 0) {
            if (i13 > i11) {
                byte[] bArr = this.f19402g;
                System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
            }
            i14 = this.f19407l + i11;
            this.f19407l = i14;
            i13 = this.f19403h - i11;
            this.f19403h = i13;
            this.f19405j = 0;
        }
        try {
            int i15 = this.f19401f.read(this.f19402g, i13, Math.min(4096 - i13, (Integer.MAX_VALUE - i14) - i13));
            if (i15 == 0 || i15 < -1 || i15 > 4096) {
                throw new IllegalStateException(String.valueOf(this.f19401f.getClass()) + "#read(byte[]) returned invalid result: " + i15 + "\nThe InputStream implementation is buggy.");
            }
            if (i15 <= 0) {
                return false;
            }
            this.f19403h += i15;
            E();
            if (this.f19403h >= i10) {
                return true;
            }
            return G(i10);
        } catch (zzgqy e10) {
            e10.k();
            throw e10;
        }
    }

    private final byte[] H(int i10, boolean z10) throws IOException {
        byte[] bArrI = I(i10);
        if (bArrI != null) {
            return bArrI;
        }
        int i11 = this.f19405j;
        int i12 = this.f19403h;
        int i13 = i12 - i11;
        this.f19407l += i12;
        this.f19405j = 0;
        this.f19403h = 0;
        List<byte[]> listD = D(i10 - i13);
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f19402g, i11, bArr, 0, i13);
        for (byte[] bArr2 : listD) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i13, length);
            i13 += length;
        }
        return bArr;
    }

    private final byte[] I(int i10) throws IOException {
        if (i10 == 0) {
            return zzgqw.f19492d;
        }
        if (i10 < 0) {
            throw zzgqy.f();
        }
        int i11 = this.f19407l;
        int i12 = this.f19405j;
        int i13 = i11 + i12 + i10;
        if (DownloadRequest.Priority.CRITICAL + i13 > 0) {
            throw zzgqy.i();
        }
        int i14 = this.f19408m;
        if (i13 > i14) {
            C((i14 - i11) - i12);
            throw zzgqy.j();
        }
        int i15 = this.f19403h - i12;
        int i16 = i10 - i15;
        if (i16 >= 4096) {
            try {
                if (i16 > this.f19401f.available()) {
                    return null;
                }
            } catch (zzgqy e10) {
                e10.k();
                throw e10;
            }
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f19402g, this.f19405j, bArr, 0, i15);
        this.f19407l += this.f19403h;
        this.f19405j = 0;
        this.f19403h = 0;
        while (i15 < i10) {
            try {
                int i17 = this.f19401f.read(bArr, i15, i10 - i15);
                if (i17 == -1) {
                    throw zzgqy.j();
                }
                this.f19407l += i17;
                i15 += i17;
            } catch (zzgqy e11) {
                e11.k();
                throw e11;
            }
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final String A() throws IOException {
        byte[] bArrH;
        int iL = L();
        int i10 = this.f19405j;
        int i11 = this.f19403h;
        if (iL <= i11 - i10 && iL > 0) {
            bArrH = this.f19402g;
            this.f19405j = i10 + iL;
        } else {
            if (iL == 0) {
                return BuildConfig.FLAVOR;
            }
            if (iL <= i11) {
                F(iL);
                bArrH = this.f19402g;
                this.f19405j = iL;
            } else {
                bArrH = H(iL, false);
            }
            i10 = 0;
        }
        return zzgtv.h(bArrH, i10, iL);
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void B(int i10) throws zzgqy {
        if (this.f19406k != i10) {
            throw zzgqy.b();
        }
    }

    public final void C(int i10) throws IOException {
        int i11 = this.f19403h;
        int i12 = this.f19405j;
        int i13 = i11 - i12;
        if (i10 <= i13 && i10 >= 0) {
            this.f19405j = i12 + i10;
            return;
        }
        if (i10 < 0) {
            throw zzgqy.f();
        }
        int i14 = this.f19407l;
        int i15 = i14 + i12;
        int i16 = this.f19408m;
        if (i15 + i10 > i16) {
            C((i16 - i14) - i12);
            throw zzgqy.j();
        }
        this.f19407l = i15;
        this.f19403h = 0;
        this.f19405j = 0;
        while (i13 < i10) {
            try {
                long j10 = i10 - i13;
                try {
                    long jSkip = this.f19401f.skip(j10);
                    if (jSkip < 0 || jSkip > j10) {
                        throw new IllegalStateException(String.valueOf(this.f19401f.getClass()) + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i13 += (int) jSkip;
                    }
                } catch (zzgqy e10) {
                    e10.k();
                    throw e10;
                }
            } finally {
                this.f19407l += i13;
                E();
            }
        }
        if (i13 >= i10) {
            return;
        }
        int i17 = this.f19403h;
        int i18 = i17 - this.f19405j;
        this.f19405j = i17;
        F(1);
        while (true) {
            int i19 = i10 - i18;
            int i20 = this.f19403h;
            if (i19 <= i20) {
                this.f19405j = i19;
                return;
            } else {
                i18 += i20;
                this.f19405j = i20;
                F(1);
            }
        }
    }

    public final byte J() throws IOException {
        if (this.f19405j == this.f19403h) {
            F(1);
        }
        byte[] bArr = this.f19402g;
        int i10 = this.f19405j;
        this.f19405j = i10 + 1;
        return bArr[i10];
    }

    public final int K() throws IOException {
        int i10 = this.f19405j;
        if (this.f19403h - i10 < 4) {
            F(4);
            i10 = this.f19405j;
        }
        byte[] bArr = this.f19402g;
        this.f19405j = i10 + 4;
        int i11 = bArr[i10] & 255;
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        return ((bArr[i10 + 3] & 255) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if (r2[r3] < 0) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int L() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.f19405j
            int r1 = r5.f19403h
            if (r1 != r0) goto L7
            goto L6d
        L7:
            byte[] r2 = r5.f19402g
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r5.f19405j = r3
            return r0
        L12:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6d
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L23
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L6a
        L23:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L30
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2e:
            r1 = r3
            goto L6a
        L30:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3e
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L6a
        L3e:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L6a
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L6a
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 >= 0) goto L6a
            goto L6d
        L6a:
            r5.f19405j = r1
            return r0
        L6d:
            long r0 = r5.O()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgpk.L():int");
    }

    public final long M() throws IOException {
        int i10 = this.f19405j;
        if (this.f19403h - i10 < 8) {
            F(8);
            i10 = this.f19405j;
        }
        byte[] bArr = this.f19402g;
        this.f19405j = i10 + 8;
        long j10 = bArr[i10];
        long j11 = (((long) bArr[i10 + 1]) & 255) << 8;
        long j12 = bArr[i10 + 2];
        long j13 = bArr[i10 + 3];
        long j14 = bArr[i10 + 4];
        long j15 = bArr[i10 + 5];
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (j10 & 255) | j11 | ((j12 & 255) << 16) | ((j13 & 255) << 24) | ((j14 & 255) << 32) | ((j15 & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final long N() throws IOException {
        long j10;
        long j11;
        long j12;
        long j13;
        int i10;
        int i11 = this.f19405j;
        int i12 = this.f19403h;
        if (i12 != i11) {
            byte[] bArr = this.f19402g;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f19405j = i13;
                return b10;
            }
            if (i12 - i13 >= 9) {
                int i14 = i13 + 1;
                int i15 = b10 ^ (bArr[i13] << 7);
                if (i15 >= 0) {
                    int i16 = i14 + 1;
                    int i17 = i15 ^ (bArr[i14] << 14);
                    if (i17 >= 0) {
                        j10 = i17 ^ 16256;
                    } else {
                        i14 = i16 + 1;
                        int i18 = i17 ^ (bArr[i16] << 21);
                        if (i18 < 0) {
                            i10 = i18 ^ (-2080896);
                        } else {
                            i16 = i14 + 1;
                            long j14 = ((long) i18) ^ (((long) bArr[i14]) << 28);
                            if (j14 < 0) {
                                int i19 = i16 + 1;
                                long j15 = j14 ^ (((long) bArr[i16]) << 35);
                                if (j15 < 0) {
                                    j12 = -34093383808L;
                                } else {
                                    i16 = i19 + 1;
                                    j14 = j15 ^ (((long) bArr[i19]) << 42);
                                    if (j14 >= 0) {
                                        j13 = 4363953127296L;
                                    } else {
                                        i19 = i16 + 1;
                                        j15 = j14 ^ (((long) bArr[i16]) << 49);
                                        if (j15 < 0) {
                                            j12 = -558586000294016L;
                                        } else {
                                            i16 = i19 + 1;
                                            j10 = (j15 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                            if (j10 < 0) {
                                                i19 = i16 + 1;
                                                if (bArr[i16] >= 0) {
                                                    j11 = j10;
                                                    i14 = i19;
                                                    this.f19405j = i14;
                                                    return j11;
                                                }
                                            }
                                        }
                                    }
                                }
                                j11 = j12 ^ j15;
                                i14 = i19;
                                this.f19405j = i14;
                                return j11;
                            }
                            j13 = 266354560;
                            j10 = j14 ^ j13;
                        }
                    }
                    i14 = i16;
                    j11 = j10;
                    this.f19405j = i14;
                    return j11;
                }
                i10 = i15 ^ (-128);
                j11 = i10;
                this.f19405j = i14;
                return j11;
            }
        }
        return O();
    }

    final long O() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            byte bJ = J();
            j10 |= ((long) (bJ & 127)) << i10;
            if ((bJ & 128) == 0) {
                return j10;
            }
        }
        throw zzgqy.e();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void a(int i10) {
        this.f19408m = i10;
        E();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean b() throws IOException {
        return this.f19405j == this.f19403h && !G(1);
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean c() throws IOException {
        return N() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean d(int i10) throws IOException {
        int iR;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.f19403h - this.f19405j < 10) {
                while (i12 < 10) {
                    if (J() < 0) {
                        i12++;
                    }
                }
                throw zzgqy.e();
            }
            while (i12 < 10) {
                byte[] bArr = this.f19402g;
                int i13 = this.f19405j;
                this.f19405j = i13 + 1;
                if (bArr[i13] < 0) {
                    i12++;
                }
            }
            throw zzgqy.e();
            return true;
        }
        if (i11 == 1) {
            C(8);
            return true;
        }
        if (i11 == 2) {
            C(L());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw zzgqy.a();
            }
            C(4);
            return true;
        }
        do {
            iR = r();
            if (iR == 0) {
                break;
            }
        } while (d(iR));
        B(((i10 >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final double i() throws IOException {
        return Double.longBitsToDouble(M());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final float j() throws IOException {
        return Float.intBitsToFloat(K());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int k() {
        return this.f19407l + this.f19405j;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int l(int i10) throws zzgqy {
        if (i10 < 0) {
            throw zzgqy.f();
        }
        int i11 = this.f19407l + this.f19405j;
        int i12 = this.f19408m;
        int i13 = i10 + i11;
        if (i13 > i12) {
            throw zzgqy.j();
        }
        this.f19408m = i13;
        E();
        return i12;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int m() throws IOException {
        return L();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int n() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int o() throws IOException {
        return L();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int p() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int q() throws IOException {
        return zzgpm.e(L());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int r() throws IOException {
        if (b()) {
            this.f19406k = 0;
            return 0;
        }
        int iL = L();
        this.f19406k = iL;
        if ((iL >>> 3) != 0) {
            return iL;
        }
        throw zzgqy.c();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int s() throws IOException {
        return L();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long t() throws IOException {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long u() throws IOException {
        return N();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long v() throws IOException {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long w() throws IOException {
        return zzgpm.f(N());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long x() throws IOException {
        return N();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final zzgpe y() throws IOException {
        int iL = L();
        int i10 = this.f19403h;
        int i11 = this.f19405j;
        if (iL <= i10 - i11 && iL > 0) {
            zzgpe zzgpeVarL = zzgpe.L(this.f19402g, i11, iL);
            this.f19405j += iL;
            return zzgpeVarL;
        }
        if (iL == 0) {
            return zzgpe.f19379p;
        }
        byte[] bArrI = I(iL);
        if (bArrI != null) {
            return zzgpe.J(bArrI);
        }
        int i12 = this.f19405j;
        int i13 = this.f19403h;
        int i14 = i13 - i12;
        this.f19407l += i13;
        this.f19405j = 0;
        this.f19403h = 0;
        List<byte[]> listD = D(iL - i14);
        byte[] bArr = new byte[iL];
        System.arraycopy(this.f19402g, i12, bArr, 0, i14);
        for (byte[] bArr2 : listD) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i14, length);
            i14 += length;
        }
        return zzgpe.O(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final String z() throws IOException {
        int iL = L();
        if (iL > 0) {
            int i10 = this.f19403h;
            int i11 = this.f19405j;
            if (iL <= i10 - i11) {
                String str = new String(this.f19402g, i11, iL, zzgqw.f19490b);
                this.f19405j += iL;
                return str;
            }
        }
        if (iL == 0) {
            return BuildConfig.FLAVOR;
        }
        if (iL > this.f19403h) {
            return new String(H(iL, false), zzgqw.f19490b);
        }
        F(iL);
        String str2 = new String(this.f19402g, this.f19405j, iL, zzgqw.f19490b);
        this.f19405j += iL;
        return str2;
    }
}
