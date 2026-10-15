package androidx.datastore.preferences.protobuf;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: CodedInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2721c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    j f2722d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2723e;

    /* JADX INFO: compiled from: CodedInputStream.java */
    private static final class b extends i {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final byte[] f2724f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f2725g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f2726h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f2727i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f2728j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f2729k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f2730l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f2731m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f2732n;

        private void M() {
            int i10 = this.f2726h + this.f2727i;
            this.f2726h = i10;
            int i11 = i10 - this.f2729k;
            int i12 = this.f2732n;
            if (i11 <= i12) {
                this.f2727i = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f2727i = i13;
            this.f2726h = i10 - i13;
        }

        private void P() throws IOException {
            if (this.f2726h - this.f2728j >= 10) {
                Q();
            } else {
                R();
            }
        }

        private void Q() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f2724f;
                int i11 = this.f2728j;
                this.f2728j = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw b0.e();
        }

        private void R() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (F() >= 0) {
                    return;
                }
            }
            throw b0.e();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String A() throws IOException {
            int iJ = J();
            if (iJ > 0) {
                int i10 = this.f2726h;
                int i11 = this.f2728j;
                if (iJ <= i10 - i11) {
                    String strE = s1.e(this.f2724f, i11, iJ);
                    this.f2728j += iJ;
                    return strE;
                }
            }
            if (iJ == 0) {
                return BuildConfig.FLAVOR;
            }
            if (iJ <= 0) {
                throw b0.f();
            }
            throw b0.k();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int B() throws IOException {
            if (e()) {
                this.f2730l = 0;
                return 0;
            }
            int iJ = J();
            this.f2730l = iJ;
            if (t1.a(iJ) != 0) {
                return this.f2730l;
            }
            throw b0.b();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int C() throws IOException {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long D() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean E(int i10) throws IOException {
            int iB = t1.b(i10);
            if (iB == 0) {
                P();
                return true;
            }
            if (iB == 1) {
                O(8);
                return true;
            }
            if (iB == 2) {
                O(J());
                return true;
            }
            if (iB == 3) {
                N();
                a(t1.c(t1.a(i10), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw b0.d();
            }
            O(4);
            return true;
        }

        public byte F() throws IOException {
            int i10 = this.f2728j;
            if (i10 == this.f2726h) {
                throw b0.k();
            }
            byte[] bArr = this.f2724f;
            this.f2728j = i10 + 1;
            return bArr[i10];
        }

        public byte[] G(int i10) throws IOException {
            if (i10 > 0) {
                int i11 = this.f2726h;
                int i12 = this.f2728j;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.f2728j = i13;
                    return Arrays.copyOfRange(this.f2724f, i12, i13);
                }
            }
            if (i10 > 0) {
                throw b0.k();
            }
            if (i10 == 0) {
                return a0.f2649c;
            }
            throw b0.f();
        }

        public int H() throws IOException {
            int i10 = this.f2728j;
            if (this.f2726h - i10 < 4) {
                throw b0.k();
            }
            byte[] bArr = this.f2724f;
            this.f2728j = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        public long I() throws IOException {
            int i10 = this.f2728j;
            if (this.f2726h - i10 < 8) {
                throw b0.k();
            }
            byte[] bArr = this.f2724f;
            this.f2728j = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int J() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.f2728j
                int r1 = r5.f2726h
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f2724f
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f2728j = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.L()
                int r1 = (int) r0
                return r1
            L70:
                r5.f2728j = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.i.b.J():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L41;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public long K() throws java.io.IOException {
            /*
                r11 = this;
                int r0 = r11.f2728j
                int r1 = r11.f2726h
                if (r1 != r0) goto L8
                goto Lb6
            L8:
                byte[] r2 = r11.f2724f
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L14
                r11.f2728j = r3
                long r0 = (long) r0
                return r0
            L14:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L1b
                goto Lb6
            L1b:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L29
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            L26:
                long r2 = (long) r0
                goto Lbd
            L29:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L3a
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
                long r0 = (long) r0
                r9 = r0
                r1 = r3
                r2 = r9
                goto Lbd
            L3a:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L48
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L26
            L48:
                long r3 = (long) r0
                int r0 = r1 + 1
                r1 = r2[r1]
                long r5 = (long) r1
                r1 = 28
                long r5 = r5 << r1
                long r3 = r3 ^ r5
                r5 = 0
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L5f
                r1 = 266354560(0xfe03f80, double:1.315966377E-315)
            L5b:
                long r1 = r1 ^ r3
                r2 = r1
                r1 = r0
                goto Lbd
            L5f:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 35
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L74
                r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
            L71:
                long r3 = r3 ^ r5
            L72:
                r2 = r3
                goto Lbd
            L74:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 42
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L87
                r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
                goto L5b
            L87:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 49
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L9a
                r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
                goto L71
            L9a:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 56
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 >= 0) goto Lbb
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
                if (r0 >= 0) goto L72
            Lb6:
                long r0 = r11.L()
                return r0
            Lbb:
                r1 = r0
                goto L72
            Lbd:
                r11.f2728j = r1
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.i.b.K():long");
        }

        long L() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bF = F();
                j10 |= ((long) (bF & 127)) << i10;
                if ((bF & 128) == 0) {
                    return j10;
                }
            }
            throw b0.e();
        }

        public void N() throws IOException {
            int iB;
            do {
                iB = B();
                if (iB == 0) {
                    return;
                }
            } while (E(iB));
        }

        public void O(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.f2726h;
                int i12 = this.f2728j;
                if (i10 <= i11 - i12) {
                    this.f2728j = i12 + i10;
                    return;
                }
            }
            if (i10 >= 0) {
                throw b0.k();
            }
            throw b0.f();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void a(int i10) throws b0 {
            if (this.f2730l != i10) {
                throw b0.a();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int d() {
            return this.f2728j - this.f2729k;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean e() throws IOException {
            return this.f2728j == this.f2726h;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void k(int i10) {
            this.f2732n = i10;
            M();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int l(int i10) throws b0 {
            if (i10 < 0) {
                throw b0.f();
            }
            int iD = i10 + d();
            int i11 = this.f2732n;
            if (iD > i11) {
                throw b0.k();
            }
            this.f2732n = iD;
            M();
            return i11;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean m() throws IOException {
            return K() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public h n() throws IOException {
            int iJ = J();
            if (iJ > 0) {
                int i10 = this.f2726h;
                int i11 = this.f2728j;
                if (iJ <= i10 - i11) {
                    h hVarE = (this.f2725g && this.f2731m) ? h.E(this.f2724f, i11, iJ) : h.l(this.f2724f, i11, iJ);
                    this.f2728j += iJ;
                    return hVarE;
                }
            }
            return iJ == 0 ? h.f2704p : h.D(G(iJ));
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public double o() throws IOException {
            return Double.longBitsToDouble(I());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int p() throws IOException {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int q() throws IOException {
            return H();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long r() throws IOException {
            return I();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public float s() throws IOException {
            return Float.intBitsToFloat(H());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int t() throws IOException {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long u() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int v() throws IOException {
            return H();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long w() throws IOException {
            return I();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int x() throws IOException {
            return i.b(J());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long y() throws IOException {
            return i.c(K());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String z() throws IOException {
            int iJ = J();
            if (iJ > 0) {
                int i10 = this.f2726h;
                int i11 = this.f2728j;
                if (iJ <= i10 - i11) {
                    String str = new String(this.f2724f, i11, iJ, a0.f2647a);
                    this.f2728j += iJ;
                    return str;
                }
            }
            if (iJ == 0) {
                return BuildConfig.FLAVOR;
            }
            if (iJ < 0) {
                throw b0.f();
            }
            throw b0.k();
        }

        private b(byte[] bArr, int i10, int i11, boolean z10) {
            super();
            this.f2732n = Integer.MAX_VALUE;
            this.f2724f = bArr;
            this.f2726h = i11 + i10;
            this.f2728j = i10;
            this.f2729k = i10;
            this.f2725g = z10;
        }
    }

    /* JADX INFO: compiled from: CodedInputStream.java */
    private static final class c extends i {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final InputStream f2733f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final byte[] f2734g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f2735h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f2736i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f2737j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f2738k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f2739l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f2740m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private a f2741n;

        /* JADX INFO: compiled from: CodedInputStream.java */
        private interface a {
            void a();
        }

        private h F(int i10) throws IOException {
            byte[] bArrI = I(i10);
            if (bArrI != null) {
                return h.k(bArrI);
            }
            int i11 = this.f2737j;
            int i12 = this.f2735h;
            int length = i12 - i11;
            this.f2739l += i12;
            this.f2737j = 0;
            this.f2735h = 0;
            List<byte[]> listJ = J(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f2734g, i11, bArr, 0, length);
            for (byte[] bArr2 : listJ) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return h.D(bArr);
        }

        private byte[] H(int i10, boolean z10) throws IOException {
            byte[] bArrI = I(i10);
            if (bArrI != null) {
                return z10 ? (byte[]) bArrI.clone() : bArrI;
            }
            int i11 = this.f2737j;
            int i12 = this.f2735h;
            int length = i12 - i11;
            this.f2739l += i12;
            this.f2737j = 0;
            this.f2735h = 0;
            List<byte[]> listJ = J(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f2734g, i11, bArr, 0, length);
            for (byte[] bArr2 : listJ) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private byte[] I(int i10) throws IOException {
            if (i10 == 0) {
                return a0.f2649c;
            }
            if (i10 < 0) {
                throw b0.f();
            }
            int i11 = this.f2739l;
            int i12 = this.f2737j;
            int i13 = i11 + i12 + i10;
            if (i13 - this.f2721c > 0) {
                throw b0.j();
            }
            int i14 = this.f2740m;
            if (i13 > i14) {
                S((i14 - i11) - i12);
                throw b0.k();
            }
            int i15 = this.f2735h - i12;
            int i16 = i10 - i15;
            if (i16 >= 4096 && i16 > this.f2733f.available()) {
                return null;
            }
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f2734g, this.f2737j, bArr, 0, i15);
            this.f2739l += this.f2735h;
            this.f2737j = 0;
            this.f2735h = 0;
            while (i15 < i10) {
                int i17 = this.f2733f.read(bArr, i15, i10 - i15);
                if (i17 == -1) {
                    throw b0.k();
                }
                this.f2739l += i17;
                i15 += i17;
            }
            return bArr;
        }

        private List<byte[]> J(int i10) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int iMin = Math.min(i10, 4096);
                byte[] bArr = new byte[iMin];
                int i11 = 0;
                while (i11 < iMin) {
                    int i12 = this.f2733f.read(bArr, i11, iMin - i11);
                    if (i12 == -1) {
                        throw b0.k();
                    }
                    this.f2739l += i12;
                    i11 += i12;
                }
                i10 -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void P() {
            int i10 = this.f2735h + this.f2736i;
            this.f2735h = i10;
            int i11 = this.f2739l + i10;
            int i12 = this.f2740m;
            if (i11 <= i12) {
                this.f2736i = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f2736i = i13;
            this.f2735h = i10 - i13;
        }

        private void Q(int i10) throws IOException {
            if (X(i10)) {
                return;
            }
            if (i10 <= (this.f2721c - this.f2739l) - this.f2737j) {
                throw b0.k();
            }
            throw b0.j();
        }

        private void T(int i10) throws IOException {
            if (i10 < 0) {
                throw b0.f();
            }
            int i11 = this.f2739l;
            int i12 = this.f2737j;
            int i13 = i11 + i12 + i10;
            int i14 = this.f2740m;
            if (i13 > i14) {
                S((i14 - i11) - i12);
                throw b0.k();
            }
            int i15 = 0;
            if (this.f2741n == null) {
                this.f2739l = i11 + i12;
                int i16 = this.f2735h - i12;
                this.f2735h = 0;
                this.f2737j = 0;
                i15 = i16;
                while (i15 < i10) {
                    try {
                        long j10 = i10 - i15;
                        long jSkip = this.f2733f.skip(j10);
                        if (jSkip < 0 || jSkip > j10) {
                            throw new IllegalStateException(this.f2733f.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                        }
                        if (jSkip == 0) {
                            break;
                        } else {
                            i15 += (int) jSkip;
                        }
                    } finally {
                        this.f2739l += i15;
                        P();
                    }
                }
            }
            if (i15 >= i10) {
                return;
            }
            int i17 = this.f2735h;
            int i18 = i17 - this.f2737j;
            this.f2737j = i17;
            Q(1);
            while (true) {
                int i19 = i10 - i18;
                int i20 = this.f2735h;
                if (i19 <= i20) {
                    this.f2737j = i19;
                    return;
                } else {
                    i18 += i20;
                    this.f2737j = i20;
                    Q(1);
                }
            }
        }

        private void U() throws IOException {
            if (this.f2735h - this.f2737j >= 10) {
                V();
            } else {
                W();
            }
        }

        private void V() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f2734g;
                int i11 = this.f2737j;
                this.f2737j = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw b0.e();
        }

        private void W() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (G() >= 0) {
                    return;
                }
            }
            throw b0.e();
        }

        private boolean X(int i10) throws IOException {
            int i11 = this.f2737j;
            if (i11 + i10 <= this.f2735h) {
                throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
            }
            int i12 = this.f2721c;
            int i13 = this.f2739l;
            if (i10 > (i12 - i13) - i11 || i13 + i11 + i10 > this.f2740m) {
                return false;
            }
            a aVar = this.f2741n;
            if (aVar != null) {
                aVar.a();
            }
            int i14 = this.f2737j;
            if (i14 > 0) {
                int i15 = this.f2735h;
                if (i15 > i14) {
                    byte[] bArr = this.f2734g;
                    System.arraycopy(bArr, i14, bArr, 0, i15 - i14);
                }
                this.f2739l += i14;
                this.f2735h -= i14;
                this.f2737j = 0;
            }
            InputStream inputStream = this.f2733f;
            byte[] bArr2 = this.f2734g;
            int i16 = this.f2735h;
            int i17 = inputStream.read(bArr2, i16, Math.min(bArr2.length - i16, (this.f2721c - this.f2739l) - i16));
            if (i17 == 0 || i17 < -1 || i17 > this.f2734g.length) {
                throw new IllegalStateException(this.f2733f.getClass() + "#read(byte[]) returned invalid result: " + i17 + "\nThe InputStream implementation is buggy.");
            }
            if (i17 <= 0) {
                return false;
            }
            this.f2735h += i17;
            P();
            if (this.f2735h >= i10) {
                return true;
            }
            return X(i10);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String A() throws IOException {
            byte[] bArrH;
            int iM = M();
            int i10 = this.f2737j;
            int i11 = this.f2735h;
            if (iM <= i11 - i10 && iM > 0) {
                bArrH = this.f2734g;
                this.f2737j = i10 + iM;
            } else {
                if (iM == 0) {
                    return BuildConfig.FLAVOR;
                }
                if (iM <= i11) {
                    Q(iM);
                    bArrH = this.f2734g;
                    this.f2737j = iM + 0;
                } else {
                    bArrH = H(iM, false);
                }
                i10 = 0;
            }
            return s1.e(bArrH, i10, iM);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int B() throws IOException {
            if (e()) {
                this.f2738k = 0;
                return 0;
            }
            int iM = M();
            this.f2738k = iM;
            if (t1.a(iM) != 0) {
                return this.f2738k;
            }
            throw b0.b();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int C() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long D() throws IOException {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean E(int i10) throws IOException {
            int iB = t1.b(i10);
            if (iB == 0) {
                U();
                return true;
            }
            if (iB == 1) {
                S(8);
                return true;
            }
            if (iB == 2) {
                S(M());
                return true;
            }
            if (iB == 3) {
                R();
                a(t1.c(t1.a(i10), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw b0.d();
            }
            S(4);
            return true;
        }

        public byte G() throws IOException {
            if (this.f2737j == this.f2735h) {
                Q(1);
            }
            byte[] bArr = this.f2734g;
            int i10 = this.f2737j;
            this.f2737j = i10 + 1;
            return bArr[i10];
        }

        public int K() throws IOException {
            int i10 = this.f2737j;
            if (this.f2735h - i10 < 4) {
                Q(4);
                i10 = this.f2737j;
            }
            byte[] bArr = this.f2734g;
            this.f2737j = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        public long L() throws IOException {
            int i10 = this.f2737j;
            if (this.f2735h - i10 < 8) {
                Q(8);
                i10 = this.f2737j;
            }
            byte[] bArr = this.f2734g;
            this.f2737j = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int M() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.f2737j
                int r1 = r5.f2735h
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f2734g
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f2737j = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.O()
                int r1 = (int) r0
                return r1
            L70:
                r5.f2737j = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.i.c.M():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L41;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public long N() throws java.io.IOException {
            /*
                r11 = this;
                int r0 = r11.f2737j
                int r1 = r11.f2735h
                if (r1 != r0) goto L8
                goto Lb6
            L8:
                byte[] r2 = r11.f2734g
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L14
                r11.f2737j = r3
                long r0 = (long) r0
                return r0
            L14:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L1b
                goto Lb6
            L1b:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L29
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            L26:
                long r2 = (long) r0
                goto Lbd
            L29:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L3a
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
                long r0 = (long) r0
                r9 = r0
                r1 = r3
                r2 = r9
                goto Lbd
            L3a:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L48
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L26
            L48:
                long r3 = (long) r0
                int r0 = r1 + 1
                r1 = r2[r1]
                long r5 = (long) r1
                r1 = 28
                long r5 = r5 << r1
                long r3 = r3 ^ r5
                r5 = 0
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L5f
                r1 = 266354560(0xfe03f80, double:1.315966377E-315)
            L5b:
                long r1 = r1 ^ r3
                r2 = r1
                r1 = r0
                goto Lbd
            L5f:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 35
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L74
                r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
            L71:
                long r3 = r3 ^ r5
            L72:
                r2 = r3
                goto Lbd
            L74:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 42
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 < 0) goto L87
                r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
                goto L5b
            L87:
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                r0 = 49
                long r7 = r7 << r0
                long r3 = r3 ^ r7
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 >= 0) goto L9a
                r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
                goto L71
            L9a:
                int r0 = r1 + 1
                r1 = r2[r1]
                long r7 = (long) r1
                r1 = 56
                long r7 = r7 << r1
                long r3 = r3 ^ r7
                r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
                long r3 = r3 ^ r7
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 >= 0) goto Lbb
                int r1 = r0 + 1
                r0 = r2[r0]
                long r7 = (long) r0
                int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
                if (r0 >= 0) goto L72
            Lb6:
                long r0 = r11.O()
                return r0
            Lbb:
                r1 = r0
                goto L72
            Lbd:
                r11.f2737j = r1
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.i.c.N():long");
        }

        long O() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bG = G();
                j10 |= ((long) (bG & 127)) << i10;
                if ((bG & 128) == 0) {
                    return j10;
                }
            }
            throw b0.e();
        }

        public void R() throws IOException {
            int iB;
            do {
                iB = B();
                if (iB == 0) {
                    return;
                }
            } while (E(iB));
        }

        public void S(int i10) throws IOException {
            int i11 = this.f2735h;
            int i12 = this.f2737j;
            if (i10 > i11 - i12 || i10 < 0) {
                T(i10);
            } else {
                this.f2737j = i12 + i10;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void a(int i10) throws b0 {
            if (this.f2738k != i10) {
                throw b0.a();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int d() {
            return this.f2739l + this.f2737j;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean e() throws IOException {
            return this.f2737j == this.f2735h && !X(1);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void k(int i10) {
            this.f2740m = i10;
            P();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int l(int i10) throws b0 {
            if (i10 < 0) {
                throw b0.f();
            }
            int i11 = i10 + this.f2739l + this.f2737j;
            int i12 = this.f2740m;
            if (i11 > i12) {
                throw b0.k();
            }
            this.f2740m = i11;
            P();
            return i12;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean m() throws IOException {
            return N() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public h n() throws IOException {
            int iM = M();
            int i10 = this.f2735h;
            int i11 = this.f2737j;
            if (iM > i10 - i11 || iM <= 0) {
                return iM == 0 ? h.f2704p : F(iM);
            }
            h hVarL = h.l(this.f2734g, i11, iM);
            this.f2737j += iM;
            return hVarL;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public double o() throws IOException {
            return Double.longBitsToDouble(L());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int p() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int q() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long r() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public float s() throws IOException {
            return Float.intBitsToFloat(K());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int t() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long u() throws IOException {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int v() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long w() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int x() throws IOException {
            return i.b(M());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long y() throws IOException {
            return i.c(N());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String z() throws IOException {
            int iM = M();
            if (iM > 0) {
                int i10 = this.f2735h;
                int i11 = this.f2737j;
                if (iM <= i10 - i11) {
                    String str = new String(this.f2734g, i11, iM, a0.f2647a);
                    this.f2737j += iM;
                    return str;
                }
            }
            if (iM == 0) {
                return BuildConfig.FLAVOR;
            }
            if (iM > this.f2735h) {
                return new String(H(iM, false), a0.f2647a);
            }
            Q(iM);
            String str2 = new String(this.f2734g, this.f2737j, iM, a0.f2647a);
            this.f2737j += iM;
            return str2;
        }

        private c(InputStream inputStream, int i10) {
            super();
            this.f2740m = Integer.MAX_VALUE;
            this.f2741n = null;
            a0.b(inputStream, "input");
            this.f2733f = inputStream;
            this.f2734g = new byte[i10];
            this.f2735h = 0;
            this.f2737j = 0;
            this.f2739l = 0;
        }
    }

    public static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long c(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static i f(InputStream inputStream) {
        return g(inputStream, 4096);
    }

    public static i g(InputStream inputStream, int i10) {
        if (i10 > 0) {
            return inputStream == null ? h(a0.f2649c) : new c(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static i h(byte[] bArr) {
        return i(bArr, 0, bArr.length);
    }

    public static i i(byte[] bArr, int i10, int i11) {
        return j(bArr, i10, i11, false);
    }

    static i j(byte[] bArr, int i10, int i11, boolean z10) {
        b bVar = new b(bArr, i10, i11, z10);
        try {
            bVar.l(i11);
            return bVar;
        } catch (b0 e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract String A() throws IOException;

    public abstract int B() throws IOException;

    public abstract int C() throws IOException;

    public abstract long D() throws IOException;

    public abstract boolean E(int i10) throws IOException;

    public abstract void a(int i10) throws b0;

    public abstract int d();

    public abstract boolean e() throws IOException;

    public abstract void k(int i10);

    public abstract int l(int i10) throws b0;

    public abstract boolean m() throws IOException;

    public abstract h n() throws IOException;

    public abstract double o() throws IOException;

    public abstract int p() throws IOException;

    public abstract int q() throws IOException;

    public abstract long r() throws IOException;

    public abstract float s() throws IOException;

    public abstract int t() throws IOException;

    public abstract long u() throws IOException;

    public abstract int v() throws IOException;

    public abstract long w() throws IOException;

    public abstract int x() throws IOException;

    public abstract long y() throws IOException;

    public abstract String z() throws IOException;

    private i() {
        this.f2720b = 100;
        this.f2721c = Integer.MAX_VALUE;
        this.f2723e = false;
    }
}
