package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzhm extends zzgs {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f22671b = Logger.getLogger(zzhm.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f22672c = zzlf.m();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    zzhp f22673a;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    static class zza extends zzhm {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final byte[] f22674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f22675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f22676f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f22677g;

        zza(byte[] bArr, int i10, int i11) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            int i12 = i11 + 0;
            if ((i11 | 0 | (bArr.length - i12)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i11)));
            }
            this.f22674d = bArr;
            this.f22675e = 0;
            this.f22677g = 0;
            this.f22676f = i12;
        }

        private final void G0(byte[] bArr, int i10, int i11) throws IOException {
            try {
                System.arraycopy(bArr, i10, this.f22674d, this.f22677g, i11);
                this.f22677g += i11;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22677g), Integer.valueOf(this.f22676f), Integer.valueOf(i11)), e10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void O(int i10) throws IOException {
            if (!zzhm.f22672c || zzgq.b() || b() < 5) {
                while ((i10 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.f22674d;
                        int i11 = this.f22677g;
                        this.f22677g = i11 + 1;
                        bArr[i11] = (byte) ((i10 & 127) | 128);
                        i10 >>>= 7;
                    } catch (IndexOutOfBoundsException e10) {
                        throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22677g), Integer.valueOf(this.f22676f), 1), e10);
                    }
                }
                byte[] bArr2 = this.f22674d;
                int i12 = this.f22677g;
                this.f22677g = i12 + 1;
                bArr2[i12] = (byte) i10;
                return;
            }
            if ((i10 & (-128)) == 0) {
                byte[] bArr3 = this.f22674d;
                int i13 = this.f22677g;
                this.f22677g = i13 + 1;
                zzlf.l(bArr3, i13, (byte) i10);
                return;
            }
            byte[] bArr4 = this.f22674d;
            int i14 = this.f22677g;
            this.f22677g = i14 + 1;
            zzlf.l(bArr4, i14, (byte) (i10 | 128));
            int i15 = i10 >>> 7;
            if ((i15 & (-128)) == 0) {
                byte[] bArr5 = this.f22674d;
                int i16 = this.f22677g;
                this.f22677g = i16 + 1;
                zzlf.l(bArr5, i16, (byte) i15);
                return;
            }
            byte[] bArr6 = this.f22674d;
            int i17 = this.f22677g;
            this.f22677g = i17 + 1;
            zzlf.l(bArr6, i17, (byte) (i15 | 128));
            int i18 = i15 >>> 7;
            if ((i18 & (-128)) == 0) {
                byte[] bArr7 = this.f22674d;
                int i19 = this.f22677g;
                this.f22677g = i19 + 1;
                zzlf.l(bArr7, i19, (byte) i18);
                return;
            }
            byte[] bArr8 = this.f22674d;
            int i20 = this.f22677g;
            this.f22677g = i20 + 1;
            zzlf.l(bArr8, i20, (byte) (i18 | 128));
            int i21 = i18 >>> 7;
            if ((i21 & (-128)) == 0) {
                byte[] bArr9 = this.f22674d;
                int i22 = this.f22677g;
                this.f22677g = i22 + 1;
                zzlf.l(bArr9, i22, (byte) i21);
                return;
            }
            byte[] bArr10 = this.f22674d;
            int i23 = this.f22677g;
            this.f22677g = i23 + 1;
            zzlf.l(bArr10, i23, (byte) (i21 | 128));
            byte[] bArr11 = this.f22674d;
            int i24 = this.f22677g;
            this.f22677g = i24 + 1;
            zzlf.l(bArr11, i24, (byte) (i21 >>> 7));
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void P(int i10, int i11) throws IOException {
            m(i10, 0);
            j(i11);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void R(int i10, zzgv zzgvVar) throws IOException {
            m(1, 3);
            Y(2, i10);
            o(3, zzgvVar);
            m(1, 4);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void T(byte[] bArr, int i10, int i11) throws IOException {
            O(i11);
            G0(bArr, 0, i11);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void Y(int i10, int i11) throws IOException {
            m(i10, 0);
            O(i11);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void Z(int i10, long j10) throws IOException {
            m(i10, 1);
            a0(j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzgs
        public final void a(byte[] bArr, int i10, int i11) throws IOException {
            G0(bArr, i10, i11);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void a0(long j10) throws IOException {
            try {
                byte[] bArr = this.f22674d;
                int i10 = this.f22677g;
                int i11 = i10 + 1;
                this.f22677g = i11;
                bArr[i10] = (byte) j10;
                int i12 = i11 + 1;
                this.f22677g = i12;
                bArr[i11] = (byte) (j10 >> 8);
                int i13 = i12 + 1;
                this.f22677g = i13;
                bArr[i12] = (byte) (j10 >> 16);
                int i14 = i13 + 1;
                this.f22677g = i14;
                bArr[i13] = (byte) (j10 >> 24);
                int i15 = i14 + 1;
                this.f22677g = i15;
                bArr[i14] = (byte) (j10 >> 32);
                int i16 = i15 + 1;
                this.f22677g = i16;
                bArr[i15] = (byte) (j10 >> 40);
                int i17 = i16 + 1;
                this.f22677g = i17;
                bArr[i16] = (byte) (j10 >> 48);
                this.f22677g = i17 + 1;
                bArr[i17] = (byte) (j10 >> 56);
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22677g), Integer.valueOf(this.f22676f), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final int b() {
            return this.f22676f - this.f22677g;
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void f0(int i10) throws IOException {
            try {
                byte[] bArr = this.f22674d;
                int i11 = this.f22677g;
                int i12 = i11 + 1;
                this.f22677g = i12;
                bArr[i11] = (byte) i10;
                int i13 = i12 + 1;
                this.f22677g = i13;
                bArr[i12] = (byte) (i10 >> 8);
                int i14 = i13 + 1;
                this.f22677g = i14;
                bArr[i13] = (byte) (i10 >> 16);
                this.f22677g = i14 + 1;
                bArr[i14] = (byte) (i10 >>> 24);
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22677g), Integer.valueOf(this.f22676f), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void g(byte b10) throws IOException {
            try {
                byte[] bArr = this.f22674d;
                int i10 = this.f22677g;
                this.f22677g = i10 + 1;
                bArr[i10] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22677g), Integer.valueOf(this.f22676f), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void j(int i10) throws IOException {
            if (i10 >= 0) {
                O(i10);
            } else {
                t(i10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void k0(int i10, int i11) throws IOException {
            m(i10, 5);
            f0(i11);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void m(int i10, int i11) throws IOException {
            O((i10 << 3) | i11);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void n(int i10, long j10) throws IOException {
            m(i10, 0);
            t(j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void o(int i10, zzgv zzgvVar) throws IOException {
            m(i10, 2);
            u(zzgvVar);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void p(int i10, zzjn zzjnVar) throws IOException {
            m(1, 3);
            Y(2, i10);
            m(3, 2);
            v(zzjnVar);
            m(1, 4);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        final void q(int i10, zzjn zzjnVar, zzkd zzkdVar) throws IOException {
            m(i10, 2);
            zzgn zzgnVar = (zzgn) zzjnVar;
            int iG = zzgnVar.g();
            if (iG == -1) {
                iG = zzkdVar.c(zzgnVar);
                zzgnVar.f(iG);
            }
            O(iG);
            zzkdVar.g(zzjnVar, this.f22673a);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void r(int i10, String str) throws IOException {
            m(i10, 2);
            w(str);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void s(int i10, boolean z10) throws IOException {
            m(i10, 0);
            g(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void t(long j10) throws IOException {
            if (zzhm.f22672c && b() >= 10) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f22674d;
                    int i10 = this.f22677g;
                    this.f22677g = i10 + 1;
                    zzlf.l(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f22674d;
                int i11 = this.f22677g;
                this.f22677g = i11 + 1;
                zzlf.l(bArr2, i11, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f22674d;
                    int i12 = this.f22677g;
                    this.f22677g = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22677g), Integer.valueOf(this.f22676f), 1), e10);
                }
            }
            byte[] bArr4 = this.f22674d;
            int i13 = this.f22677g;
            this.f22677g = i13 + 1;
            bArr4[i13] = (byte) j10;
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void u(zzgv zzgvVar) throws IOException {
            O(zzgvVar.g());
            zzgvVar.n(this);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void v(zzjn zzjnVar) throws IOException {
            O(zzjnVar.A());
            zzjnVar.d(this);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhm
        public final void w(String str) throws IOException {
            int i10 = this.f22677g;
            try {
                int iP0 = zzhm.p0(str.length() * 3);
                int iP02 = zzhm.p0(str.length());
                if (iP02 != iP0) {
                    O(zzlh.d(str));
                    this.f22677g = zzlh.e(str, this.f22674d, this.f22677g, b());
                    return;
                }
                int i11 = i10 + iP02;
                this.f22677g = i11;
                int iE = zzlh.e(str, this.f22674d, i11, b());
                this.f22677g = i10;
                O((iE - i10) - iP02);
                this.f22677g = iE;
            } catch (zzll e10) {
                this.f22677g = i10;
                x(str, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new zzb(e11);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static class zzb extends IOException {
        zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        zzb(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        zzb(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }
    }

    private zzhm() {
    }

    public static int A(float f10) {
        return 4;
    }

    public static int A0(int i10) {
        return 4;
    }

    public static int B(int i10, double d10) {
        return h0(i10) + 8;
    }

    public static int B0(int i10, int i11) {
        return h0(i10) + 4;
    }

    public static int C(int i10, float f10) {
        return h0(i10) + 4;
    }

    public static int C0(int i10) {
        return l0(i10);
    }

    public static int D(int i10, zziw zziwVar) {
        return (h0(1) << 1) + q0(2, i10) + c(3, zziwVar);
    }

    public static int D0(int i10, int i11) {
        return h0(i10) + l0(i11);
    }

    public static int E(int i10, zzjn zzjnVar) {
        return (h0(1) << 1) + q0(2, i10) + h0(3) + J(zzjnVar);
    }

    @Deprecated
    public static int E0(int i10) {
        return p0(i10);
    }

    static int F(int i10, zzjn zzjnVar, zzkd zzkdVar) {
        return h0(i10) + e(zzjnVar, zzkdVar);
    }

    private static int F0(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public static int G(int i10, String str) {
        return h0(i10) + K(str);
    }

    public static int H(int i10, boolean z10) {
        return h0(i10) + 1;
    }

    public static int I(zzgv zzgvVar) {
        int iG = zzgvVar.g();
        return p0(iG) + iG;
    }

    public static int J(zzjn zzjnVar) {
        int iA = zzjnVar.A();
        return p0(iA) + iA;
    }

    public static int K(String str) {
        int length;
        try {
            length = zzlh.d(str);
        } catch (zzll unused) {
            length = str.getBytes(zzii.f22764a).length;
        }
        return p0(length) + length;
    }

    public static int L(boolean z10) {
        return 1;
    }

    public static int M(byte[] bArr) {
        int length = bArr.length;
        return p0(length) + length;
    }

    public static int U(int i10, zzgv zzgvVar) {
        int iH0 = h0(i10);
        int iG = zzgvVar.g();
        return iH0 + p0(iG) + iG;
    }

    @Deprecated
    static int V(int i10, zzjn zzjnVar, zzkd zzkdVar) {
        int iH0 = h0(i10) << 1;
        zzgn zzgnVar = (zzgn) zzjnVar;
        int iG = zzgnVar.g();
        if (iG == -1) {
            iG = zzkdVar.c(zzgnVar);
            zzgnVar.f(iG);
        }
        return iH0 + iG;
    }

    @Deprecated
    public static int W(zzjn zzjnVar) {
        return zzjnVar.A();
    }

    public static int c(int i10, zziw zziwVar) {
        int iH0 = h0(i10);
        int iB = zziwVar.b();
        return iH0 + p0(iB) + iB;
    }

    public static int c0(int i10, long j10) {
        return h0(i10) + j0(j10);
    }

    public static int d(zziw zziwVar) {
        int iB = zziwVar.b();
        return p0(iB) + iB;
    }

    public static int d0(int i10, zzgv zzgvVar) {
        return (h0(1) << 1) + q0(2, i10) + U(3, zzgvVar);
    }

    static int e(zzjn zzjnVar, zzkd zzkdVar) {
        zzgn zzgnVar = (zzgn) zzjnVar;
        int iG = zzgnVar.g();
        if (iG == -1) {
            iG = zzkdVar.c(zzgnVar);
            zzgnVar.f(iG);
        }
        return p0(iG) + iG;
    }

    public static int e0(long j10) {
        return j0(j10);
    }

    public static zzhm f(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int h0(int i10) {
        return p0(i10 << 3);
    }

    public static int i0(int i10, long j10) {
        return h0(i10) + j0(j10);
    }

    public static int j0(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            i10 = 6;
            j10 >>>= 28;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j10) != 0) {
            i10 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static int l0(int i10) {
        if (i10 >= 0) {
            return p0(i10);
        }
        return 10;
    }

    public static int m0(int i10, int i11) {
        return h0(i10) + l0(i11);
    }

    public static int n0(int i10, long j10) {
        return h0(i10) + j0(z0(j10));
    }

    public static int o0(long j10) {
        return j0(z0(j10));
    }

    public static int p0(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int q0(int i10, int i11) {
        return h0(i10) + p0(i11);
    }

    public static int r0(int i10, long j10) {
        return h0(i10) + 8;
    }

    public static int s0(long j10) {
        return 8;
    }

    public static int t0(int i10) {
        return p0(F0(i10));
    }

    public static int u0(int i10, int i11) {
        return h0(i10) + p0(F0(i11));
    }

    public static int v0(int i10, long j10) {
        return h0(i10) + 8;
    }

    public static int w0(long j10) {
        return 8;
    }

    public static int x0(int i10) {
        return 4;
    }

    public static int y0(int i10, int i11) {
        return h0(i10) + 4;
    }

    public static int z(double d10) {
        return 8;
    }

    private static long z0(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public final void N() {
        if (b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void O(int i10) throws IOException;

    public abstract void P(int i10, int i11) throws IOException;

    public final void Q(int i10, long j10) throws IOException {
        n(i10, z0(j10));
    }

    public abstract void R(int i10, zzgv zzgvVar) throws IOException;

    public final void S(long j10) throws IOException {
        t(z0(j10));
    }

    abstract void T(byte[] bArr, int i10, int i11) throws IOException;

    public final void X(int i10) throws IOException {
        O(F0(i10));
    }

    public abstract void Y(int i10, int i11) throws IOException;

    public abstract void Z(int i10, long j10) throws IOException;

    public abstract void a0(long j10) throws IOException;

    public abstract int b();

    public abstract void f0(int i10) throws IOException;

    public abstract void g(byte b10) throws IOException;

    public final void g0(int i10, int i11) throws IOException {
        Y(i10, F0(i11));
    }

    public final void h(double d10) throws IOException {
        a0(Double.doubleToRawLongBits(d10));
    }

    public final void i(float f10) throws IOException {
        f0(Float.floatToRawIntBits(f10));
    }

    public abstract void j(int i10) throws IOException;

    public final void k(int i10, double d10) throws IOException {
        Z(i10, Double.doubleToRawLongBits(d10));
    }

    public abstract void k0(int i10, int i11) throws IOException;

    public final void l(int i10, float f10) throws IOException {
        k0(i10, Float.floatToRawIntBits(f10));
    }

    public abstract void m(int i10, int i11) throws IOException;

    public abstract void n(int i10, long j10) throws IOException;

    public abstract void o(int i10, zzgv zzgvVar) throws IOException;

    public abstract void p(int i10, zzjn zzjnVar) throws IOException;

    abstract void q(int i10, zzjn zzjnVar, zzkd zzkdVar) throws IOException;

    public abstract void r(int i10, String str) throws IOException;

    public abstract void s(int i10, boolean z10) throws IOException;

    public abstract void t(long j10) throws IOException;

    public abstract void u(zzgv zzgvVar) throws IOException;

    public abstract void v(zzjn zzjnVar) throws IOException;

    public abstract void w(String str) throws IOException;

    final void x(String str, zzll zzllVar) throws IOException {
        f22671b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzllVar);
        byte[] bytes = str.getBytes(zzii.f22764a);
        try {
            O(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (zzb e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new zzb(e11);
        }
    }

    public final void y(boolean z10) throws IOException {
        g(z10 ? (byte) 1 : (byte) 0);
    }
}
