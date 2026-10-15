package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpi extends zzgpm {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Iterable f19390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Iterator f19391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ByteBuffer f19392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f19393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f19394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f19395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f19396l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f19397m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f19398n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f19399o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f19400p;

    /* synthetic */ zzgpi(Iterable iterable, int i10, boolean z10, zzgph zzgphVar) {
        super(null);
        this.f19395k = Integer.MAX_VALUE;
        this.f19393i = i10;
        this.f19390f = iterable;
        this.f19391g = iterable.iterator();
        this.f19397m = 0;
        if (i10 != 0) {
            H();
            return;
        }
        this.f19392h = zzgqw.f19493e;
        this.f19398n = 0L;
        this.f19399o = 0L;
        this.f19400p = 0L;
    }

    private final int D() {
        return (int) ((((long) (this.f19393i - this.f19397m)) - this.f19398n) + this.f19399o);
    }

    private final void E() throws zzgqy {
        if (!this.f19391g.hasNext()) {
            throw zzgqy.j();
        }
        H();
    }

    private final void F(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 > D()) {
            if (i11 > 0) {
                throw zzgqy.j();
            }
            return;
        }
        int i12 = i11;
        while (i12 > 0) {
            if (this.f19400p - this.f19398n == 0) {
                E();
            }
            int iMin = Math.min(i12, (int) (this.f19400p - this.f19398n));
            long j10 = iMin;
            zzgtq.w(this.f19398n, bArr, i11 - i12, j10);
            i12 -= iMin;
            this.f19398n += j10;
        }
    }

    private final void G() {
        int i10 = this.f19393i + this.f19394j;
        this.f19393i = i10;
        int i11 = this.f19395k;
        if (i10 <= i11) {
            this.f19394j = 0;
            return;
        }
        int i12 = i10 - i11;
        this.f19394j = i12;
        this.f19393i = i10 - i12;
    }

    private final void H() {
        ByteBuffer byteBuffer = (ByteBuffer) this.f19391g.next();
        this.f19392h = byteBuffer;
        this.f19397m += (int) (this.f19398n - this.f19399o);
        long jPosition = byteBuffer.position();
        this.f19398n = jPosition;
        this.f19399o = jPosition;
        this.f19400p = this.f19392h.limit();
        long jM = zzgtq.m(this.f19392h);
        this.f19398n += jM;
        this.f19399o += jM;
        this.f19400p += jM;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final String A() throws IOException {
        int iK = K();
        if (iK > 0) {
            long j10 = this.f19400p;
            long j11 = this.f19398n;
            long j12 = iK;
            if (j12 <= j10 - j11) {
                String strG = zzgtv.g(this.f19392h, (int) (j11 - this.f19399o), iK);
                this.f19398n += j12;
                return strG;
            }
        }
        if (iK >= 0 && iK <= D()) {
            byte[] bArr = new byte[iK];
            F(bArr, 0, iK);
            return zzgtv.h(bArr, 0, iK);
        }
        if (iK == 0) {
            return BuildConfig.FLAVOR;
        }
        if (iK <= 0) {
            throw zzgqy.f();
        }
        throw zzgqy.j();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void B(int i10) throws zzgqy {
        if (this.f19396l != i10) {
            throw zzgqy.b();
        }
    }

    public final void C(int i10) throws IOException {
        if (i10 >= 0) {
            if (i10 <= (((long) (this.f19393i - this.f19397m)) - this.f19398n) + this.f19399o) {
                while (i10 > 0) {
                    if (this.f19400p - this.f19398n == 0) {
                        E();
                    }
                    int iMin = Math.min(i10, (int) (this.f19400p - this.f19398n));
                    i10 -= iMin;
                    this.f19398n += (long) iMin;
                }
                return;
            }
        }
        if (i10 >= 0) {
            throw zzgqy.j();
        }
        throw zzgqy.f();
    }

    public final byte I() throws IOException {
        if (this.f19400p - this.f19398n == 0) {
            E();
        }
        long j10 = this.f19398n;
        this.f19398n = 1 + j10;
        return zzgtq.i(j10);
    }

    public final int J() throws IOException {
        long j10 = this.f19400p;
        long j11 = this.f19398n;
        if (j10 - j11 < 4) {
            int I = I() & 255;
            int I2 = (I() & 255) << 8;
            return I | I2 | ((I() & 255) << 16) | ((I() & 255) << 24);
        }
        this.f19398n = 4 + j11;
        int i10 = zzgtq.i(j11) & 255;
        int i11 = (zzgtq.i(1 + j11) & 255) << 8;
        return i10 | i11 | ((zzgtq.i(2 + j11) & 255) << 16) | ((zzgtq.i(j11 + 3) & 255) << 24);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
    
        if (com.google.android.gms.internal.ads.zzgtq.i(r4) >= 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int K() throws java.io.IOException {
        /*
            r10 = this;
            long r0 = r10.f19398n
            long r2 = r10.f19400p
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 != 0) goto La
            goto L8c
        La:
            r2 = 1
            long r4 = r0 + r2
            byte r0 = com.google.android.gms.internal.ads.zzgtq.i(r0)
            if (r0 < 0) goto L1a
            long r4 = r10.f19398n
            long r4 = r4 + r2
            r10.f19398n = r4
            return r0
        L1a:
            long r6 = r10.f19400p
            long r8 = r10.f19398n
            long r6 = r6 - r8
            r8 = 10
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 < 0) goto L8c
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r4)
            int r1 = r1 << 7
            r0 = r0 ^ r1
            if (r0 >= 0) goto L33
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L89
        L33:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r6)
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L42
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L40:
            r6 = r4
            goto L89
        L42:
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r4)
            int r1 = r1 << 21
            r0 = r0 ^ r1
            if (r0 >= 0) goto L52
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L89
        L52:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r6)
            int r6 = r1 << 28
            r0 = r0 ^ r6
            r6 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r6
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgtq.i(r4)
            if (r1 < 0) goto L8c
        L89:
            r10.f19398n = r6
            return r0
        L8c:
            long r0 = r10.N()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgpi.K():int");
    }

    public final long L() throws IOException {
        long j10 = this.f19400p;
        long j11 = this.f19398n;
        if (j10 - j11 < 8) {
            long jI = ((long) I()) & 255;
            long jI2 = (((long) I()) & 255) << 8;
            long jI3 = (((long) I()) & 255) << 16;
            long jI4 = (((long) I()) & 255) << 24;
            long jI5 = (((long) I()) & 255) << 32;
            long jI6 = (((long) I()) & 255) << 40;
            return jI | jI2 | jI3 | jI4 | jI5 | jI6 | ((((long) I()) & 255) << 48) | ((((long) I()) & 255) << 56);
        }
        this.f19398n = 8 + j11;
        long jI7 = ((long) zzgtq.i(j11)) & 255;
        long jI8 = (((long) zzgtq.i(1 + j11)) & 255) << 8;
        long jI9 = (((long) zzgtq.i(j11 + 2)) & 255) << 16;
        long jI10 = (((long) zzgtq.i(j11 + 3)) & 255) << 24;
        long jI11 = (((long) zzgtq.i(4 + j11)) & 255) << 32;
        long jI12 = (((long) zzgtq.i(j11 + 5)) & 255) << 40;
        return jI7 | jI8 | jI9 | jI10 | jI11 | jI12 | ((((long) zzgtq.i(j11 + 6)) & 255) << 48) | ((((long) zzgtq.i(j11 + 7)) & 255) << 56);
    }

    public final long M() throws IOException {
        long jI;
        long j10;
        long j11;
        int i10;
        long j12 = this.f19398n;
        if (this.f19400p != j12) {
            long j13 = j12 + 1;
            byte bI = zzgtq.i(j12);
            if (bI >= 0) {
                this.f19398n++;
                return bI;
            }
            if (this.f19400p - this.f19398n >= 10) {
                long j14 = j13 + 1;
                int i11 = bI ^ (zzgtq.i(j13) << 7);
                if (i11 >= 0) {
                    long j15 = j14 + 1;
                    int i12 = i11 ^ (zzgtq.i(j14) << 14);
                    if (i12 >= 0) {
                        jI = i12 ^ 16256;
                    } else {
                        j14 = j15 + 1;
                        int i13 = i12 ^ (zzgtq.i(j15) << 21);
                        if (i13 < 0) {
                            i10 = i13 ^ (-2080896);
                        } else {
                            j15 = j14 + 1;
                            long jI2 = ((long) i13) ^ (((long) zzgtq.i(j14)) << 28);
                            if (jI2 < 0) {
                                long j16 = j15 + 1;
                                long jI3 = jI2 ^ (((long) zzgtq.i(j15)) << 35);
                                if (jI3 < 0) {
                                    j10 = -34093383808L;
                                } else {
                                    j15 = j16 + 1;
                                    jI2 = jI3 ^ (((long) zzgtq.i(j16)) << 42);
                                    if (jI2 >= 0) {
                                        j11 = 4363953127296L;
                                    } else {
                                        j16 = j15 + 1;
                                        jI3 = jI2 ^ (((long) zzgtq.i(j15)) << 49);
                                        if (jI3 >= 0) {
                                            j15 = j16 + 1;
                                            jI = (jI3 ^ (((long) zzgtq.i(j16)) << 56)) ^ 71499008037633920L;
                                            if (jI < 0) {
                                                long j17 = 1 + j15;
                                                if (zzgtq.i(j15) >= 0) {
                                                    j14 = j17;
                                                }
                                            }
                                            this.f19398n = j14;
                                            return jI;
                                        }
                                        j10 = -558586000294016L;
                                    }
                                }
                                jI = jI3 ^ j10;
                                j14 = j16;
                                this.f19398n = j14;
                                return jI;
                            }
                            j11 = 266354560;
                            jI = jI2 ^ j11;
                        }
                    }
                    j14 = j15;
                    this.f19398n = j14;
                    return jI;
                }
                i10 = i11 ^ (-128);
                jI = i10;
                this.f19398n = j14;
                return jI;
            }
        }
        return N();
    }

    final long N() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            byte bI = I();
            j10 |= ((long) (bI & 127)) << i10;
            if ((bI & 128) == 0) {
                return j10;
            }
        }
        throw zzgqy.e();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void a(int i10) {
        this.f19395k = i10;
        G();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean b() throws IOException {
        return (((long) this.f19397m) + this.f19398n) - this.f19399o == ((long) this.f19393i);
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean c() throws IOException {
        return M() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final boolean d(int i10) throws IOException {
        int iR;
        int i11 = i10 & 7;
        if (i11 == 0) {
            for (int i12 = 0; i12 < 10; i12++) {
                if (I() >= 0) {
                    return true;
                }
            }
            throw zzgqy.e();
        }
        if (i11 == 1) {
            C(8);
            return true;
        }
        if (i11 == 2) {
            C(K());
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
        return Double.longBitsToDouble(L());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final float j() throws IOException {
        return Float.intBitsToFloat(J());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int k() {
        return (int) ((((long) this.f19397m) + this.f19398n) - this.f19399o);
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int l(int i10) throws zzgqy {
        if (i10 < 0) {
            throw zzgqy.f();
        }
        int iK = i10 + k();
        int i11 = this.f19395k;
        if (iK > i11) {
            throw zzgqy.j();
        }
        this.f19395k = iK;
        G();
        return i11;
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int m() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int n() throws IOException {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int o() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int p() throws IOException {
        return J();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int q() throws IOException {
        return zzgpm.e(K());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int r() throws IOException {
        if (b()) {
            this.f19396l = 0;
            return 0;
        }
        int iK = K();
        this.f19396l = iK;
        if ((iK >>> 3) != 0) {
            return iK;
        }
        throw zzgqy.c();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final int s() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long t() throws IOException {
        return L();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long u() throws IOException {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long v() throws IOException {
        return L();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long w() throws IOException {
        return zzgpm.f(M());
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final long x() throws IOException {
        return M();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final zzgpe y() throws IOException {
        int iK = K();
        if (iK > 0) {
            long j10 = this.f19400p;
            long j11 = this.f19398n;
            long j12 = iK;
            if (j12 <= j10 - j11) {
                byte[] bArr = new byte[iK];
                zzgtq.w(j11, bArr, 0L, j12);
                this.f19398n += j12;
                return zzgpe.O(bArr);
            }
        }
        if (iK > 0 && iK <= D()) {
            byte[] bArr2 = new byte[iK];
            F(bArr2, 0, iK);
            return zzgpe.O(bArr2);
        }
        if (iK == 0) {
            return zzgpe.f19379p;
        }
        if (iK < 0) {
            throw zzgqy.f();
        }
        throw zzgqy.j();
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final String z() throws IOException {
        int iK = K();
        if (iK > 0) {
            long j10 = this.f19400p;
            long j11 = this.f19398n;
            long j12 = iK;
            if (j12 <= j10 - j11) {
                byte[] bArr = new byte[iK];
                zzgtq.w(j11, bArr, 0L, j12);
                String str = new String(bArr, zzgqw.f19490b);
                this.f19398n += j12;
                return str;
            }
        }
        if (iK > 0 && iK <= D()) {
            byte[] bArr2 = new byte[iK];
            F(bArr2, 0, iK);
            return new String(bArr2, zzgqw.f19490b);
        }
        if (iK == 0) {
            return BuildConfig.FLAVOR;
        }
        if (iK < 0) {
            throw zzgqy.f();
        }
        throw zzgqy.j();
    }
}
