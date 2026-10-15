package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpg extends zzgpm {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f19383f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f19384g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f19385h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f19386i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f19387j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f19388k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f19389l;

    /* synthetic */ zzgpg(byte[] bArr, int i10, int i11, boolean z10, zzgpf zzgpfVar) {
        super(null);
        this.f19389l = Integer.MAX_VALUE;
        this.f19383f = bArr;
        this.f19384g = i11 + i10;
        this.f19386i = i10;
        this.f19387j = i10;
    }

    private final void D() {
        int i10 = this.f19384g + this.f19385h;
        this.f19384g = i10;
        int i11 = i10 - this.f19387j;
        int i12 = this.f19389l;
        if (i11 <= i12) {
            this.f19385h = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f19385h = i13;
        this.f19384g = i10 - i13;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final String A() throws IOException {
        int iG = G();
        if (iG > 0) {
            int i10 = this.f19384g;
            int i11 = this.f19386i;
            if (iG <= i10 - i11) {
                String strH = zzgtv.h(this.f19383f, i11, iG);
                this.f19386i += iG;
                return strH;
            }
        }
        if (iG == 0) {
            return BuildConfig.FLAVOR;
        }
        if (iG <= 0) {
            throw zzgqy.f();
        }
        throw zzgqy.j();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void B(int i10) throws zzgqy {
        if (this.f19388k != i10) {
            throw zzgqy.b();
        }
    }

    public final void C(int i10) throws IOException {
        if (i10 >= 0) {
            int i11 = this.f19384g;
            int i12 = this.f19386i;
            if (i10 <= i11 - i12) {
                this.f19386i = i12 + i10;
                return;
            }
        }
        if (i10 >= 0) {
            throw zzgqy.j();
        }
        throw zzgqy.f();
    }

    public final byte E() throws IOException {
        int i10 = this.f19386i;
        if (i10 == this.f19384g) {
            throw zzgqy.j();
        }
        byte[] bArr = this.f19383f;
        this.f19386i = i10 + 1;
        return bArr[i10];
    }

    public final int F() throws IOException {
        int i10 = this.f19386i;
        if (this.f19384g - i10 < 4) {
            throw zzgqy.j();
        }
        byte[] bArr = this.f19383f;
        this.f19386i = i10 + 4;
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
    public final int G() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.f19386i
            int r1 = r5.f19384g
            if (r1 != r0) goto L7
            goto L6d
        L7:
            byte[] r2 = r5.f19383f
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r5.f19386i = r3
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
            r5.f19386i = r1
            return r0
        L6d:
            long r0 = r5.J()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgpg.G():int");
    }

    public final long H() throws IOException {
        int i10 = this.f19386i;
        if (this.f19384g - i10 < 8) {
            throw zzgqy.j();
        }
        byte[] bArr = this.f19383f;
        this.f19386i = i10 + 8;
        long j10 = bArr[i10];
        long j11 = (((long) bArr[i10 + 1]) & 255) << 8;
        long j12 = bArr[i10 + 2];
        long j13 = bArr[i10 + 3];
        long j14 = bArr[i10 + 4];
        long j15 = bArr[i10 + 5];
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (j10 & 255) | j11 | ((j12 & 255) << 16) | ((j13 & 255) << 24) | ((j14 & 255) << 32) | ((j15 & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final long I() throws IOException {
        long j10;
        long j11;
        long j12;
        long j13;
        int i10;
        int i11 = this.f19386i;
        int i12 = this.f19384g;
        if (i12 != i11) {
            byte[] bArr = this.f19383f;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f19386i = i13;
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
                                                    this.f19386i = i14;
                                                    return j11;
                                                }
                                            }
                                        }
                                    }
                                }
                                j11 = j12 ^ j15;
                                i14 = i19;
                                this.f19386i = i14;
                                return j11;
                            }
                            j13 = 266354560;
                            j10 = j14 ^ j13;
                        }
                    }
                    i14 = i16;
                    j11 = j10;
                    this.f19386i = i14;
                    return j11;
                }
                i10 = i15 ^ (-128);
                j11 = i10;
                this.f19386i = i14;
                return j11;
            }
        }
        return J();
    }

    final long J() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            byte bE = E();
            j10 |= ((long) (bE & 127)) << i10;
            if ((bE & 128) == 0) {
                return j10;
            }
        }
        throw zzgqy.e();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void a(int i10) {
        this.f19389l = i10;
        D();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean b() throws IOException {
        return this.f19386i == this.f19384g;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean c() throws IOException {
        return I() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean d(int i10) throws IOException {
        int iR;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.f19384g - this.f19386i < 10) {
                while (i12 < 10) {
                    if (E() < 0) {
                        i12++;
                    }
                }
                throw zzgqy.e();
            }
            while (i12 < 10) {
                byte[] bArr = this.f19383f;
                int i13 = this.f19386i;
                this.f19386i = i13 + 1;
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
            C(G());
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
        return Double.longBitsToDouble(H());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final float j() throws IOException {
        return Float.intBitsToFloat(F());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int k() {
        return this.f19386i - this.f19387j;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int l(int i10) throws zzgqy {
        if (i10 < 0) {
            throw zzgqy.f();
        }
        int i11 = i10 + (this.f19386i - this.f19387j);
        if (i11 < 0) {
            throw zzgqy.g();
        }
        int i12 = this.f19389l;
        if (i11 > i12) {
            throw zzgqy.j();
        }
        this.f19389l = i11;
        D();
        return i12;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int m() throws IOException {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int n() throws IOException {
        return F();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int o() throws IOException {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int p() throws IOException {
        return F();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int q() throws IOException {
        return zzgpm.e(G());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int r() throws IOException {
        if (b()) {
            this.f19388k = 0;
            return 0;
        }
        int iG = G();
        this.f19388k = iG;
        if ((iG >>> 3) != 0) {
            return iG;
        }
        throw zzgqy.c();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int s() throws IOException {
        return G();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long t() throws IOException {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long u() throws IOException {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long v() throws IOException {
        return H();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long w() throws IOException {
        return zzgpm.f(I());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long x() throws IOException {
        return I();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final zzgpe y() throws IOException {
        int iG = G();
        if (iG > 0) {
            int i10 = this.f19384g;
            int i11 = this.f19386i;
            if (iG <= i10 - i11) {
                zzgpe zzgpeVarL = zzgpe.L(this.f19383f, i11, iG);
                this.f19386i += iG;
                return zzgpeVarL;
            }
        }
        if (iG == 0) {
            return zzgpe.f19379p;
        }
        if (iG > 0) {
            int i12 = this.f19384g;
            int i13 = this.f19386i;
            if (iG <= i12 - i13) {
                int i14 = iG + i13;
                this.f19386i = i14;
                return zzgpe.O(Arrays.copyOfRange(this.f19383f, i13, i14));
            }
        }
        if (iG <= 0) {
            throw zzgqy.f();
        }
        throw zzgqy.j();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final String z() throws IOException {
        int iG = G();
        if (iG > 0) {
            int i10 = this.f19384g;
            int i11 = this.f19386i;
            if (iG <= i10 - i11) {
                String str = new String(this.f19383f, i11, iG, zzgqw.f19490b);
                this.f19386i += iG;
                return str;
            }
        }
        if (iG == 0) {
            return BuildConfig.FLAVOR;
        }
        if (iG < 0) {
            throw zzgqy.f();
        }
        throw zzgqy.j();
    }
}
