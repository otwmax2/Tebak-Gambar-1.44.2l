package com.google.android.gms.internal.drive;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjr extends zzjb {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f22100b = Logger.getLogger(zzjr.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f22101c = zznd.r();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    zzjt f22102a;

    static class zza extends zzjr {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final byte[] f22103d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f22104e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f22105f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f22106g;

        zza(byte[] bArr, int i10, int i11) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            int i12 = i11 + 0;
            if ((i11 | 0 | (bArr.length - i12)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i11)));
            }
            this.f22103d = bArr;
            this.f22104e = 0;
            this.f22106g = 0;
            this.f22105f = i12;
        }

        private final void G0(byte[] bArr, int i10, int i11) throws IOException {
            try {
                System.arraycopy(bArr, i10, this.f22103d, this.f22106g, i11);
                this.f22106g += i11;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22106g), Integer.valueOf(this.f22105f), Integer.valueOf(i11)), e10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void D0(int i10) throws IOException {
            if (i10 >= 0) {
                E0(i10);
            } else {
                s0(i10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void E0(int i10) throws IOException {
            if (!zzjr.f22101c || zzix.a() || X() < 5) {
                while ((i10 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.f22103d;
                        int i11 = this.f22106g;
                        this.f22106g = i11 + 1;
                        bArr[i11] = (byte) ((i10 & 127) | 128);
                        i10 >>>= 7;
                    } catch (IndexOutOfBoundsException e10) {
                        throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22106g), Integer.valueOf(this.f22105f), 1), e10);
                    }
                }
                byte[] bArr2 = this.f22103d;
                int i12 = this.f22106g;
                this.f22106g = i12 + 1;
                bArr2[i12] = (byte) i10;
                return;
            }
            if ((i10 & (-128)) == 0) {
                byte[] bArr3 = this.f22103d;
                int i13 = this.f22106g;
                this.f22106g = i13 + 1;
                zznd.i(bArr3, i13, (byte) i10);
                return;
            }
            byte[] bArr4 = this.f22103d;
            int i14 = this.f22106g;
            this.f22106g = i14 + 1;
            zznd.i(bArr4, i14, (byte) (i10 | 128));
            int i15 = i10 >>> 7;
            if ((i15 & (-128)) == 0) {
                byte[] bArr5 = this.f22103d;
                int i16 = this.f22106g;
                this.f22106g = i16 + 1;
                zznd.i(bArr5, i16, (byte) i15);
                return;
            }
            byte[] bArr6 = this.f22103d;
            int i17 = this.f22106g;
            this.f22106g = i17 + 1;
            zznd.i(bArr6, i17, (byte) (i15 | 128));
            int i18 = i15 >>> 7;
            if ((i18 & (-128)) == 0) {
                byte[] bArr7 = this.f22103d;
                int i19 = this.f22106g;
                this.f22106g = i19 + 1;
                zznd.i(bArr7, i19, (byte) i18);
                return;
            }
            byte[] bArr8 = this.f22103d;
            int i20 = this.f22106g;
            this.f22106g = i20 + 1;
            zznd.i(bArr8, i20, (byte) (i18 | 128));
            int i21 = i18 >>> 7;
            if ((i21 & (-128)) == 0) {
                byte[] bArr9 = this.f22103d;
                int i22 = this.f22106g;
                this.f22106g = i22 + 1;
                zznd.i(bArr9, i22, (byte) i21);
                return;
            }
            byte[] bArr10 = this.f22103d;
            int i23 = this.f22106g;
            this.f22106g = i23 + 1;
            zznd.i(bArr10, i23, (byte) (i21 | 128));
            byte[] bArr11 = this.f22103d;
            int i24 = this.f22106g;
            this.f22106g = i24 + 1;
            zznd.i(bArr11, i24, (byte) (i21 >>> 7));
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void J(int i10, int i11) throws IOException {
            E0((i10 << 3) | i11);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void L(int i10, zzjc zzjcVar) throws IOException {
            J(1, 3);
            e0(2, i10);
            j(3, zzjcVar);
            J(1, 4);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void M(int i10, boolean z10) throws IOException {
            J(i10, 0);
            T(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void N(zzlq zzlqVar) throws IOException {
            E0(zzlqVar.f());
            zzlqVar.d(this);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void T(byte b10) throws IOException {
            try {
                byte[] bArr = this.f22103d;
                int i10 = this.f22106g;
                this.f22106g = i10 + 1;
                bArr[i10] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22106g), Integer.valueOf(this.f22105f), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void U(int i10, int i11) throws IOException {
            J(i10, 0);
            D0(i11);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void V(int i10, long j10) throws IOException {
            J(i10, 1);
            w0(j10);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final int X() {
            return this.f22105f - this.f22106g;
        }

        @Override // com.google.android.gms.internal.drive.zzjb
        public final void a(byte[] bArr, int i10, int i11) throws IOException {
            G0(bArr, i10, i11);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void e0(int i10, int i11) throws IOException {
            J(i10, 0);
            E0(i11);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void f0(byte[] bArr, int i10, int i11) throws IOException {
            E0(i11);
            G0(bArr, 0, i11);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void i(int i10, long j10) throws IOException {
            J(i10, 0);
            s0(j10);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void j(int i10, zzjc zzjcVar) throws IOException {
            J(i10, 2);
            n(zzjcVar);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void j0(int i10, int i11) throws IOException {
            J(i10, 5);
            p(i11);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void k(int i10, zzlq zzlqVar) throws IOException {
            J(1, 3);
            e0(2, i10);
            J(3, 2);
            N(zzlqVar);
            J(1, 4);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        final void l(int i10, zzlq zzlqVar, zzmf zzmfVar) throws IOException {
            J(i10, 2);
            zzit zzitVar = (zzit) zzlqVar;
            int iE = zzitVar.e();
            if (iE == -1) {
                iE = zzmfVar.e(zzitVar);
                zzitVar.h(iE);
            }
            E0(iE);
            zzmfVar.f(zzlqVar, this.f22102a);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void m(int i10, String str) throws IOException {
            J(i10, 2);
            t0(str);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void n(zzjc zzjcVar) throws IOException {
            E0(zzjcVar.size());
            zzjcVar.k(this);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void p(int i10) throws IOException {
            try {
                byte[] bArr = this.f22103d;
                int i11 = this.f22106g;
                int i12 = i11 + 1;
                this.f22106g = i12;
                bArr[i11] = (byte) i10;
                int i13 = i12 + 1;
                this.f22106g = i13;
                bArr[i12] = (byte) (i10 >> 8);
                int i14 = i13 + 1;
                this.f22106g = i14;
                bArr[i13] = (byte) (i10 >> 16);
                this.f22106g = i14 + 1;
                bArr[i14] = (byte) (i10 >>> 24);
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22106g), Integer.valueOf(this.f22105f), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void s0(long j10) throws IOException {
            if (zzjr.f22101c && X() >= 10) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f22103d;
                    int i10 = this.f22106g;
                    this.f22106g = i10 + 1;
                    zznd.i(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f22103d;
                int i11 = this.f22106g;
                this.f22106g = i11 + 1;
                zznd.i(bArr2, i11, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f22103d;
                    int i12 = this.f22106g;
                    this.f22106g = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22106g), Integer.valueOf(this.f22105f), 1), e10);
                }
            }
            byte[] bArr4 = this.f22103d;
            int i13 = this.f22106g;
            this.f22106g = i13 + 1;
            bArr4[i13] = (byte) j10;
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void t0(String str) throws IOException {
            int i10 = this.f22106g;
            try {
                int iS = zzjr.s(str.length() * 3);
                int iS2 = zzjr.s(str.length());
                if (iS2 != iS) {
                    E0(zznf.a(str));
                    this.f22106g = zznf.b(str, this.f22103d, this.f22106g, X());
                    return;
                }
                int i11 = i10 + iS2;
                this.f22106g = i11;
                int iB = zznf.b(str, this.f22103d, i11, X());
                this.f22106g = i10;
                E0((iB - i10) - iS2);
                this.f22106g = iB;
            } catch (zznj e10) {
                this.f22106g = i10;
                o(str, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new zzb(e11);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void w0(long j10) throws IOException {
            try {
                byte[] bArr = this.f22103d;
                int i10 = this.f22106g;
                int i11 = i10 + 1;
                this.f22106g = i11;
                bArr[i10] = (byte) j10;
                int i12 = i11 + 1;
                this.f22106g = i12;
                bArr[i11] = (byte) (j10 >> 8);
                int i13 = i12 + 1;
                this.f22106g = i13;
                bArr[i12] = (byte) (j10 >> 16);
                int i14 = i13 + 1;
                this.f22106g = i14;
                bArr[i13] = (byte) (j10 >> 24);
                int i15 = i14 + 1;
                this.f22106g = i15;
                bArr[i14] = (byte) (j10 >> 32);
                int i16 = i15 + 1;
                this.f22106g = i16;
                bArr[i15] = (byte) (j10 >> 40);
                int i17 = i16 + 1;
                this.f22106g = i17;
                bArr[i16] = (byte) (j10 >> 48);
                this.f22106g = i17 + 1;
                bArr[i17] = (byte) (j10 >> 56);
            } catch (IndexOutOfBoundsException e10) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22106g), Integer.valueOf(this.f22105f), 1), e10);
            }
        }
    }

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

    private zzjr() {
    }

    public static int A(float f10) {
        return 4;
    }

    public static int A0(long j10) {
        return 8;
    }

    public static int B(int i10, double d10) {
        return q(i10) + 8;
    }

    public static int B0(long j10) {
        return 8;
    }

    public static int C(int i10, float f10) {
        return q(i10) + 4;
    }

    private static long C0(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public static int D(int i10, zzkx zzkxVar) {
        return (q(1) << 1) + m0(2, i10) + b(3, zzkxVar);
    }

    public static int E(int i10, zzlq zzlqVar) {
        return (q(1) << 1) + m0(2, i10) + q(3) + R(zzlqVar);
    }

    static int F(int i10, zzlq zzlqVar, zzmf zzmfVar) {
        return q(i10) + d(zzlqVar, zzmfVar);
    }

    public static int G(int i10, String str) {
        return q(i10) + u0(str);
    }

    public static int H(zzjc zzjcVar) {
        int size = zzjcVar.size();
        return s(size) + size;
    }

    public static zzjr I(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int O(int i10, zzjc zzjcVar) {
        int iQ = q(i10);
        int size = zzjcVar.size();
        return iQ + s(size) + size;
    }

    @Deprecated
    static int P(int i10, zzlq zzlqVar, zzmf zzmfVar) {
        int iQ = q(i10) << 1;
        zzit zzitVar = (zzit) zzlqVar;
        int iE = zzitVar.e();
        if (iE == -1) {
            iE = zzmfVar.e(zzitVar);
            zzitVar.h(iE);
        }
        return iQ + iE;
    }

    public static int Q(int i10, boolean z10) {
        return q(i10) + 1;
    }

    public static int R(zzlq zzlqVar) {
        int iF = zzlqVar.f();
        return s(iF) + iF;
    }

    public static int S(byte[] bArr) {
        int length = bArr.length;
        return s(length) + length;
    }

    public static int a0(int i10, long j10) {
        return q(i10) + y0(j10);
    }

    public static int b(int i10, zzkx zzkxVar) {
        int iQ = q(i10);
        int iB = zzkxVar.b();
        return iQ + s(iB) + iB;
    }

    public static int b0(int i10, zzjc zzjcVar) {
        return (q(1) << 1) + m0(2, i10) + O(3, zzjcVar);
    }

    public static int c(zzkx zzkxVar) {
        int iB = zzkxVar.b();
        return s(iB) + iB;
    }

    @Deprecated
    public static int c0(zzlq zzlqVar) {
        return zzlqVar.f();
    }

    static int d(zzlq zzlqVar, zzmf zzmfVar) {
        zzit zzitVar = (zzit) zzlqVar;
        int iE = zzitVar.e();
        if (iE == -1) {
            iE = zzmfVar.e(zzitVar);
            zzitVar.h(iE);
        }
        return s(iE) + iE;
    }

    public static int d0(boolean z10) {
        return 1;
    }

    public static int g0(int i10, long j10) {
        return q(i10) + y0(j10);
    }

    public static int i0(int i10, long j10) {
        return q(i10) + y0(C0(j10));
    }

    public static int k0(int i10, int i11) {
        return q(i10) + r(i11);
    }

    public static int l0(int i10, long j10) {
        return q(i10) + 8;
    }

    public static int m0(int i10, int i11) {
        return q(i10) + s(i11);
    }

    public static int n0(int i10, long j10) {
        return q(i10) + 8;
    }

    public static int o0(int i10, int i11) {
        return q(i10) + s(x(i11));
    }

    public static int p0(int i10, int i11) {
        return q(i10) + 4;
    }

    public static int q(int i10) {
        return s(i10 << 3);
    }

    public static int q0(int i10, int i11) {
        return q(i10) + 4;
    }

    public static int r(int i10) {
        if (i10 >= 0) {
            return s(i10);
        }
        return 10;
    }

    public static int r0(int i10, int i11) {
        return q(i10) + r(i11);
    }

    public static int s(int i10) {
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

    public static int t(int i10) {
        return s(x(i10));
    }

    public static int u(int i10) {
        return 4;
    }

    public static int u0(String str) {
        int length;
        try {
            length = zznf.a(str);
        } catch (zznj unused) {
            length = str.getBytes(zzkm.f22193a).length;
        }
        return s(length) + length;
    }

    public static int v(int i10) {
        return 4;
    }

    public static int w(int i10) {
        return r(i10);
    }

    private static int x(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public static int x0(long j10) {
        return y0(j10);
    }

    @Deprecated
    public static int y(int i10) {
        return s(i10);
    }

    public static int y0(long j10) {
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

    public static int z(double d10) {
        return 8;
    }

    public static int z0(long j10) {
        return y0(C0(j10));
    }

    public abstract void D0(int i10) throws IOException;

    public abstract void E0(int i10) throws IOException;

    public final void F0(int i10) throws IOException {
        E0(x(i10));
    }

    public abstract void J(int i10, int i11) throws IOException;

    public final void K(int i10, long j10) throws IOException {
        i(i10, C0(j10));
    }

    public abstract void L(int i10, zzjc zzjcVar) throws IOException;

    public abstract void M(int i10, boolean z10) throws IOException;

    public abstract void N(zzlq zzlqVar) throws IOException;

    public abstract void T(byte b10) throws IOException;

    public abstract void U(int i10, int i11) throws IOException;

    public abstract void V(int i10, long j10) throws IOException;

    public final void W(boolean z10) throws IOException {
        T(z10 ? (byte) 1 : (byte) 0);
    }

    public abstract int X();

    public final void Y() {
        if (X() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void e(double d10) throws IOException {
        w0(Double.doubleToRawLongBits(d10));
    }

    public abstract void e0(int i10, int i11) throws IOException;

    public final void f(float f10) throws IOException {
        p(Float.floatToRawIntBits(f10));
    }

    abstract void f0(byte[] bArr, int i10, int i11) throws IOException;

    public final void g(int i10, double d10) throws IOException {
        V(i10, Double.doubleToRawLongBits(d10));
    }

    public final void h(int i10, float f10) throws IOException {
        j0(i10, Float.floatToRawIntBits(f10));
    }

    public final void h0(int i10, int i11) throws IOException {
        e0(i10, x(i11));
    }

    public abstract void i(int i10, long j10) throws IOException;

    public abstract void j(int i10, zzjc zzjcVar) throws IOException;

    public abstract void j0(int i10, int i11) throws IOException;

    public abstract void k(int i10, zzlq zzlqVar) throws IOException;

    abstract void l(int i10, zzlq zzlqVar, zzmf zzmfVar) throws IOException;

    public abstract void m(int i10, String str) throws IOException;

    public abstract void n(zzjc zzjcVar) throws IOException;

    final void o(String str, zznj zznjVar) throws IOException {
        f22100b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zznjVar);
        byte[] bytes = str.getBytes(zzkm.f22193a);
        try {
            E0(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (zzb e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new zzb(e11);
        }
    }

    public abstract void p(int i10) throws IOException;

    public abstract void s0(long j10) throws IOException;

    public abstract void t0(String str) throws IOException;

    public final void v0(long j10) throws IOException {
        s0(C0(j10));
    }

    public abstract void w0(long j10) throws IOException;
}
