package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.b0;
import androidx.datastore.preferences.protobuf.k0;
import androidx.datastore.preferences.protobuf.t1;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: BinaryReader.java */
/* JADX INFO: loaded from: classes.dex */
abstract class e implements f1 {

    /* JADX INFO: compiled from: BinaryReader.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2681a;

        static {
            int[] iArr = new int[t1.b.values().length];
            f2681a = iArr;
            try {
                iArr[t1.b.f2874x.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2681a[t1.b.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2681a[t1.b.f2867q.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2681a[t1.b.D.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2681a[t1.b.f2873w.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2681a[t1.b.f2872v.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2681a[t1.b.f2868r.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2681a[t1.b.f2871u.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2681a[t1.b.f2869s.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2681a[t1.b.A.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2681a[t1.b.E.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2681a[t1.b.F.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2681a[t1.b.G.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2681a[t1.b.H.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2681a[t1.b.f2875y.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2681a[t1.b.C.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2681a[t1.b.f2870t.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* JADX INFO: compiled from: BinaryReader.java */
    private static final class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f2682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte[] f2683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2684c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f2685d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2686e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f2687f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f2688g;

        public b(ByteBuffer byteBuffer, boolean z10) {
            super(null);
            this.f2682a = z10;
            this.f2683b = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f2684c = iArrayOffset;
            this.f2685d = iArrayOffset;
            this.f2686e = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        private boolean R() {
            return this.f2684c == this.f2686e;
        }

        private byte S() throws IOException {
            int i10 = this.f2684c;
            if (i10 == this.f2686e) {
                throw b0.k();
            }
            byte[] bArr = this.f2683b;
            this.f2684c = i10 + 1;
            return bArr[i10];
        }

        private Object T(t1.b bVar, Class<?> cls, p pVar) throws IOException {
            switch (a.f2681a[bVar.ordinal()]) {
                case 1:
                    return Boolean.valueOf(j());
                case 2:
                    return D();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(t());
                case 5:
                    return Integer.valueOf(i());
                case 6:
                    return Long.valueOf(d());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(F());
                case 9:
                    return Long.valueOf(M());
                case 10:
                    return e(cls, pVar);
                case 11:
                    return Integer.valueOf(I());
                case 12:
                    return Long.valueOf(k());
                case 13:
                    return Integer.valueOf(w());
                case 14:
                    return Long.valueOf(x());
                case 15:
                    return N();
                case 16:
                    return Integer.valueOf(n());
                case 17:
                    return Long.valueOf(c());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        private <T> T U(g1<T> g1Var, p pVar) throws IOException {
            int i10 = this.f2688g;
            this.f2688g = t1.c(t1.a(this.f2687f), 4);
            try {
                T tJ = g1Var.j();
                g1Var.e(tJ, this, pVar);
                g1Var.f(tJ);
                if (this.f2687f == this.f2688g) {
                    return tJ;
                }
                throw b0.g();
            } finally {
                this.f2688g = i10;
            }
        }

        private int V() throws IOException {
            f0(4);
            return W();
        }

        private int W() {
            int i10 = this.f2684c;
            byte[] bArr = this.f2683b;
            this.f2684c = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        private long X() throws IOException {
            f0(8);
            return Y();
        }

        private long Y() {
            int i10 = this.f2684c;
            byte[] bArr = this.f2683b;
            this.f2684c = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        private <T> T Z(g1<T> g1Var, p pVar) throws IOException {
            int iC0 = c0();
            f0(iC0);
            int i10 = this.f2686e;
            int i11 = this.f2684c + iC0;
            this.f2686e = i11;
            try {
                T tJ = g1Var.j();
                g1Var.e(tJ, this, pVar);
                g1Var.f(tJ);
                if (this.f2684c == i11) {
                    return tJ;
                }
                throw b0.g();
            } finally {
                this.f2686e = i10;
            }
        }

        private int c0() throws IOException {
            int i10;
            int i11 = this.f2684c;
            int i12 = this.f2686e;
            if (i12 == i11) {
                throw b0.k();
            }
            byte[] bArr = this.f2683b;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f2684c = i13;
                return b10;
            }
            if (i12 - i13 < 9) {
                return (int) e0();
            }
            int i14 = i13 + 1;
            int i15 = b10 ^ (bArr[i13] << 7);
            if (i15 < 0) {
                i10 = i15 ^ (-128);
            } else {
                int i16 = i14 + 1;
                int i17 = i15 ^ (bArr[i14] << 14);
                if (i17 >= 0) {
                    i10 = i17 ^ 16256;
                } else {
                    i14 = i16 + 1;
                    int i18 = i17 ^ (bArr[i16] << 21);
                    if (i18 < 0) {
                        i10 = i18 ^ (-2080896);
                    } else {
                        i16 = i14 + 1;
                        byte b11 = bArr[i14];
                        i10 = (i18 ^ (b11 << 28)) ^ 266354560;
                        if (b11 < 0) {
                            i14 = i16 + 1;
                            if (bArr[i16] < 0) {
                                i16 = i14 + 1;
                                if (bArr[i14] < 0) {
                                    i14 = i16 + 1;
                                    if (bArr[i16] < 0) {
                                        i16 = i14 + 1;
                                        if (bArr[i14] < 0) {
                                            i14 = i16 + 1;
                                            if (bArr[i16] < 0) {
                                                throw b0.e();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i14 = i16;
            }
            this.f2684c = i14;
            return i10;
        }

        private long e0() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bS = S();
                j10 |= ((long) (bS & 127)) << i10;
                if ((bS & 128) == 0) {
                    return j10;
                }
            }
            throw b0.e();
        }

        private void f0(int i10) throws IOException {
            if (i10 < 0 || i10 > this.f2686e - this.f2684c) {
                throw b0.k();
            }
        }

        private void g0(int i10) throws IOException {
            if (this.f2684c != i10) {
                throw b0.k();
            }
        }

        private void h0(int i10) throws IOException {
            if (t1.b(this.f2687f) != i10) {
                throw b0.d();
            }
        }

        private void i0(int i10) throws IOException {
            f0(i10);
            this.f2684c += i10;
        }

        private void j0() throws IOException {
            int i10 = this.f2688g;
            this.f2688g = t1.c(t1.a(this.f2687f), 4);
            while (A() != Integer.MAX_VALUE && H()) {
            }
            if (this.f2687f != this.f2688g) {
                throw b0.g();
            }
            this.f2688g = i10;
        }

        private void k0() throws IOException {
            int i10 = this.f2686e;
            int i11 = this.f2684c;
            if (i10 - i11 >= 10) {
                byte[] bArr = this.f2683b;
                int i12 = 0;
                while (i12 < 10) {
                    int i13 = i11 + 1;
                    if (bArr[i11] >= 0) {
                        this.f2684c = i13;
                        return;
                    } else {
                        i12++;
                        i11 = i13;
                    }
                }
            }
            l0();
        }

        private void l0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (S() >= 0) {
                    return;
                }
            }
            throw b0.e();
        }

        private void m0(int i10) throws IOException {
            f0(i10);
            if ((i10 & 3) != 0) {
                throw b0.g();
            }
        }

        private void n0(int i10) throws IOException {
            f0(i10);
            if ((i10 & 7) != 0) {
                throw b0.g();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int A() throws IOException {
            if (R()) {
                return Integer.MAX_VALUE;
            }
            int iC0 = c0();
            this.f2687f = iC0;
            if (iC0 == this.f2688g) {
                return Integer.MAX_VALUE;
            }
            return t1.a(iC0);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void B(List<String> list) throws IOException {
            b0(list, false);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void C(List<String> list) throws IOException {
            b0(list, true);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public h D() throws IOException {
            h0(2);
            int iC0 = c0();
            if (iC0 == 0) {
                return h.f2704p;
            }
            f0(iC0);
            h hVarE = this.f2682a ? h.E(this.f2683b, this.f2684c, iC0) : h.l(this.f2683b, this.f2684c, iC0);
            this.f2684c += iC0;
            return hVarE;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void E(List<Float> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof w)) {
                int iB = t1.b(this.f2687f);
                if (iB == 2) {
                    int iC0 = c0();
                    m0(iC0);
                    int i12 = this.f2684c + iC0;
                    while (this.f2684c < i12) {
                        list.add(Float.valueOf(Float.intBitsToFloat(W())));
                    }
                    return;
                }
                if (iB != 5) {
                    throw b0.d();
                }
                do {
                    list.add(Float.valueOf(readFloat()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            w wVar = (w) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 2) {
                int iC02 = c0();
                m0(iC02);
                int i13 = this.f2684c + iC02;
                while (this.f2684c < i13) {
                    wVar.j(Float.intBitsToFloat(W()));
                }
                return;
            }
            if (iB2 != 5) {
                throw b0.d();
            }
            do {
                wVar.j(readFloat());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int F() throws IOException {
            h0(0);
            return c0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.f1
        public <T> void G(List<T> list, g1<T> g1Var, p pVar) throws IOException {
            int i10;
            if (t1.b(this.f2687f) != 3) {
                throw b0.d();
            }
            int i11 = this.f2687f;
            do {
                list.add(U(g1Var, pVar));
                if (R()) {
                    return;
                } else {
                    i10 = this.f2684c;
                }
            } while (c0() == i11);
            this.f2684c = i10;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public boolean H() throws IOException {
            int i10;
            if (R() || (i10 = this.f2687f) == this.f2688g) {
                return false;
            }
            int iB = t1.b(i10);
            if (iB == 0) {
                k0();
                return true;
            }
            if (iB == 1) {
                i0(8);
                return true;
            }
            if (iB == 2) {
                i0(c0());
                return true;
            }
            if (iB == 3) {
                j0();
                return true;
            }
            if (iB != 5) {
                throw b0.d();
            }
            i0(4);
            return true;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int I() throws IOException {
            h0(5);
            return V();
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void J(List<h> list) throws IOException {
            int i10;
            if (t1.b(this.f2687f) != 2) {
                throw b0.d();
            }
            do {
                list.add(D());
                if (R()) {
                    return;
                } else {
                    i10 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i10;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void K(List<Double> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof m)) {
                int iB = t1.b(this.f2687f);
                if (iB == 1) {
                    do {
                        list.add(Double.valueOf(readDouble()));
                        if (R()) {
                            return;
                        } else {
                            i10 = this.f2684c;
                        }
                    } while (c0() == this.f2687f);
                    this.f2684c = i10;
                    return;
                }
                if (iB != 2) {
                    throw b0.d();
                }
                int iC0 = c0();
                n0(iC0);
                int i12 = this.f2684c + iC0;
                while (this.f2684c < i12) {
                    list.add(Double.valueOf(Double.longBitsToDouble(Y())));
                }
                return;
            }
            m mVar = (m) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 1) {
                do {
                    mVar.j(readDouble());
                    if (R()) {
                        return;
                    } else {
                        i11 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i11;
                return;
            }
            if (iB2 != 2) {
                throw b0.d();
            }
            int iC02 = c0();
            n0(iC02);
            int i13 = this.f2684c + iC02;
            while (this.f2684c < i13) {
                mVar.j(Double.longBitsToDouble(Y()));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.f1
        public <T> void L(List<T> list, g1<T> g1Var, p pVar) throws IOException {
            int i10;
            if (t1.b(this.f2687f) != 2) {
                throw b0.d();
            }
            int i11 = this.f2687f;
            do {
                list.add(Z(g1Var, pVar));
                if (R()) {
                    return;
                } else {
                    i10 = this.f2684c;
                }
            } while (c0() == i11);
            this.f2684c = i10;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public long M() throws IOException {
            h0(0);
            return d0();
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public String N() throws IOException {
            return a0(true);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void O(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof i0)) {
                int iB = t1.b(this.f2687f);
                if (iB == 1) {
                    do {
                        list.add(Long.valueOf(d()));
                        if (R()) {
                            return;
                        } else {
                            i10 = this.f2684c;
                        }
                    } while (c0() == this.f2687f);
                    this.f2684c = i10;
                    return;
                }
                if (iB != 2) {
                    throw b0.d();
                }
                int iC0 = c0();
                n0(iC0);
                int i12 = this.f2684c + iC0;
                while (this.f2684c < i12) {
                    list.add(Long.valueOf(Y()));
                }
                return;
            }
            i0 i0Var = (i0) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 1) {
                do {
                    i0Var.k(d());
                    if (R()) {
                        return;
                    } else {
                        i11 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i11;
                return;
            }
            if (iB2 != 2) {
                throw b0.d();
            }
            int iC02 = c0();
            n0(iC02);
            int i13 = this.f2684c + iC02;
            while (this.f2684c < i13) {
                i0Var.k(Y());
            }
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public <T> T P(g1<T> g1Var, p pVar) throws IOException {
            h0(3);
            return (T) U(g1Var, pVar);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public <T> T a(g1<T> g1Var, p pVar) throws IOException {
            h0(2);
            return (T) Z(g1Var, pVar);
        }

        public String a0(boolean z10) throws IOException {
            h0(2);
            int iC0 = c0();
            if (iC0 == 0) {
                return BuildConfig.FLAVOR;
            }
            f0(iC0);
            if (z10) {
                byte[] bArr = this.f2683b;
                int i10 = this.f2684c;
                if (!s1.n(bArr, i10, i10 + iC0)) {
                    throw b0.c();
                }
            }
            String str = new String(this.f2683b, this.f2684c, iC0, a0.f2647a);
            this.f2684c += iC0;
            return str;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void b(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof z)) {
                int iB = t1.b(this.f2687f);
                if (iB != 0) {
                    if (iB != 2) {
                        throw b0.d();
                    }
                    int iC0 = this.f2684c + c0();
                    while (this.f2684c < iC0) {
                        list.add(Integer.valueOf(i.b(c0())));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(w()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            z zVar = (z) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw b0.d();
                }
                int iC02 = this.f2684c + c0();
                while (this.f2684c < iC02) {
                    zVar.j(i.b(c0()));
                }
                return;
            }
            do {
                zVar.j(w());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        public void b0(List<String> list, boolean z10) throws IOException {
            int i10;
            int i11;
            if (t1.b(this.f2687f) != 2) {
                throw b0.d();
            }
            if (!(list instanceof g0) || z10) {
                do {
                    list.add(a0(z10));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            g0 g0Var = (g0) list;
            do {
                g0Var.e1(D());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public long c() throws IOException {
            h0(0);
            return d0();
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public long d() throws IOException {
            h0(1);
            return X();
        }

        public long d0() throws IOException {
            long j10;
            long j11;
            long j12;
            long j13;
            int i10;
            int i11 = this.f2684c;
            int i12 = this.f2686e;
            if (i12 == i11) {
                throw b0.k();
            }
            byte[] bArr = this.f2683b;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f2684c = i13;
                return b10;
            }
            if (i12 - i13 < 9) {
                return e0();
            }
            int i14 = i13 + 1;
            int i15 = b10 ^ (bArr[i13] << 7);
            if (i15 >= 0) {
                int i16 = i14 + 1;
                int i17 = i15 ^ (bArr[i14] << 14);
                if (i17 >= 0) {
                    i14 = i16;
                    j13 = i17 ^ 16256;
                } else {
                    i14 = i16 + 1;
                    int i18 = i17 ^ (bArr[i16] << 21);
                    if (i18 < 0) {
                        i10 = i18 ^ (-2080896);
                    } else {
                        long j14 = i18;
                        int i19 = i14 + 1;
                        long j15 = j14 ^ (((long) bArr[i14]) << 28);
                        if (j15 >= 0) {
                            j12 = 266354560;
                        } else {
                            i14 = i19 + 1;
                            long j16 = j15 ^ (((long) bArr[i19]) << 35);
                            if (j16 < 0) {
                                j11 = -34093383808L;
                            } else {
                                i19 = i14 + 1;
                                j15 = j16 ^ (((long) bArr[i14]) << 42);
                                if (j15 >= 0) {
                                    j12 = 4363953127296L;
                                } else {
                                    i14 = i19 + 1;
                                    j16 = j15 ^ (((long) bArr[i19]) << 49);
                                    if (j16 < 0) {
                                        j11 = -558586000294016L;
                                    } else {
                                        int i20 = i14 + 1;
                                        j10 = (j16 ^ (((long) bArr[i14]) << 56)) ^ 71499008037633920L;
                                        if (j10 < 0) {
                                            i14 = i20 + 1;
                                            if (bArr[i20] < 0) {
                                                throw b0.e();
                                            }
                                        } else {
                                            i14 = i20;
                                        }
                                        j13 = j10;
                                    }
                                }
                            }
                            j10 = j16 ^ j11;
                            j13 = j10;
                        }
                        j13 = j12 ^ j15;
                        i14 = i19;
                    }
                }
                this.f2684c = i14;
                return j13;
            }
            i10 = i15 ^ (-128);
            j13 = i10;
            this.f2684c = i14;
            return j13;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public <T> T e(Class<T> cls, p pVar) throws IOException {
            h0(2);
            return (T) Z(c1.a().d(cls), pVar);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void f(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof z)) {
                int iB = t1.b(this.f2687f);
                if (iB == 2) {
                    int iC0 = c0();
                    m0(iC0);
                    int i12 = this.f2684c + iC0;
                    while (this.f2684c < i12) {
                        list.add(Integer.valueOf(W()));
                    }
                    return;
                }
                if (iB != 5) {
                    throw b0.d();
                }
                do {
                    list.add(Integer.valueOf(I()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            z zVar = (z) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 2) {
                int iC02 = c0();
                m0(iC02);
                int i13 = this.f2684c + iC02;
                while (this.f2684c < i13) {
                    zVar.j(W());
                }
                return;
            }
            if (iB2 != 5) {
                throw b0.d();
            }
            do {
                zVar.j(I());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void g(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof i0)) {
                int iB = t1.b(this.f2687f);
                if (iB != 0) {
                    if (iB != 2) {
                        throw b0.d();
                    }
                    int iC0 = this.f2684c + c0();
                    while (this.f2684c < iC0) {
                        list.add(Long.valueOf(i.c(d0())));
                    }
                    return;
                }
                do {
                    list.add(Long.valueOf(x()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            i0 i0Var = (i0) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw b0.d();
                }
                int iC02 = this.f2684c + c0();
                while (this.f2684c < iC02) {
                    i0Var.k(i.c(d0()));
                }
                return;
            }
            do {
                i0Var.k(x());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void h(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof z)) {
                int iB = t1.b(this.f2687f);
                if (iB != 0) {
                    if (iB != 2) {
                        throw b0.d();
                    }
                    int iC0 = this.f2684c + c0();
                    while (this.f2684c < iC0) {
                        list.add(Integer.valueOf(c0()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(n()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            z zVar = (z) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw b0.d();
                }
                int iC02 = this.f2684c + c0();
                while (this.f2684c < iC02) {
                    zVar.j(c0());
                }
                return;
            }
            do {
                zVar.j(n());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int i() throws IOException {
            h0(5);
            return V();
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public boolean j() throws IOException {
            h0(0);
            return c0() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public long k() throws IOException {
            h0(1);
            return X();
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void l(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof i0)) {
                int iB = t1.b(this.f2687f);
                if (iB == 0) {
                    do {
                        list.add(Long.valueOf(c()));
                        if (R()) {
                            return;
                        } else {
                            i10 = this.f2684c;
                        }
                    } while (c0() == this.f2687f);
                    this.f2684c = i10;
                    return;
                }
                if (iB != 2) {
                    throw b0.d();
                }
                int iC0 = this.f2684c + c0();
                while (this.f2684c < iC0) {
                    list.add(Long.valueOf(d0()));
                }
                g0(iC0);
                return;
            }
            i0 i0Var = (i0) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 0) {
                do {
                    i0Var.k(c());
                    if (R()) {
                        return;
                    } else {
                        i11 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i11;
                return;
            }
            if (iB2 != 2) {
                throw b0.d();
            }
            int iC02 = this.f2684c + c0();
            while (this.f2684c < iC02) {
                i0Var.k(d0());
            }
            g0(iC02);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public <T> T m(Class<T> cls, p pVar) throws IOException {
            h0(3);
            return (T) U(c1.a().d(cls), pVar);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int n() throws IOException {
            h0(0);
            return c0();
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void o(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof i0)) {
                int iB = t1.b(this.f2687f);
                if (iB == 0) {
                    do {
                        list.add(Long.valueOf(M()));
                        if (R()) {
                            return;
                        } else {
                            i10 = this.f2684c;
                        }
                    } while (c0() == this.f2687f);
                    this.f2684c = i10;
                    return;
                }
                if (iB != 2) {
                    throw b0.d();
                }
                int iC0 = this.f2684c + c0();
                while (this.f2684c < iC0) {
                    list.add(Long.valueOf(d0()));
                }
                g0(iC0);
                return;
            }
            i0 i0Var = (i0) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 0) {
                do {
                    i0Var.k(M());
                    if (R()) {
                        return;
                    } else {
                        i11 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i11;
                return;
            }
            if (iB2 != 2) {
                throw b0.d();
            }
            int iC02 = this.f2684c + c0();
            while (this.f2684c < iC02) {
                i0Var.k(d0());
            }
            g0(iC02);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void p(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof i0)) {
                int iB = t1.b(this.f2687f);
                if (iB == 1) {
                    do {
                        list.add(Long.valueOf(k()));
                        if (R()) {
                            return;
                        } else {
                            i10 = this.f2684c;
                        }
                    } while (c0() == this.f2687f);
                    this.f2684c = i10;
                    return;
                }
                if (iB != 2) {
                    throw b0.d();
                }
                int iC0 = c0();
                n0(iC0);
                int i12 = this.f2684c + iC0;
                while (this.f2684c < i12) {
                    list.add(Long.valueOf(Y()));
                }
                return;
            }
            i0 i0Var = (i0) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 1) {
                do {
                    i0Var.k(k());
                    if (R()) {
                        return;
                    } else {
                        i11 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i11;
                return;
            }
            if (iB2 != 2) {
                throw b0.d();
            }
            int iC02 = c0();
            n0(iC02);
            int i13 = this.f2684c + iC02;
            while (this.f2684c < i13) {
                i0Var.k(Y());
            }
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void q(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof z)) {
                int iB = t1.b(this.f2687f);
                if (iB == 0) {
                    do {
                        list.add(Integer.valueOf(F()));
                        if (R()) {
                            return;
                        } else {
                            i10 = this.f2684c;
                        }
                    } while (c0() == this.f2687f);
                    this.f2684c = i10;
                    return;
                }
                if (iB != 2) {
                    throw b0.d();
                }
                int iC0 = this.f2684c + c0();
                while (this.f2684c < iC0) {
                    list.add(Integer.valueOf(c0()));
                }
                g0(iC0);
                return;
            }
            z zVar = (z) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 0) {
                do {
                    zVar.j(F());
                    if (R()) {
                        return;
                    } else {
                        i11 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i11;
                return;
            }
            if (iB2 != 2) {
                throw b0.d();
            }
            int iC02 = this.f2684c + c0();
            while (this.f2684c < iC02) {
                zVar.j(c0());
            }
            g0(iC02);
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void r(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof z)) {
                int iB = t1.b(this.f2687f);
                if (iB != 0) {
                    if (iB != 2) {
                        throw b0.d();
                    }
                    int iC0 = this.f2684c + c0();
                    while (this.f2684c < iC0) {
                        list.add(Integer.valueOf(c0()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(t()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            z zVar = (z) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw b0.d();
                }
                int iC02 = this.f2684c + c0();
                while (this.f2684c < iC02) {
                    zVar.j(c0());
                }
                return;
            }
            do {
                zVar.j(t());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public double readDouble() throws IOException {
            h0(1);
            return Double.longBitsToDouble(X());
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public float readFloat() throws IOException {
            h0(5);
            return Float.intBitsToFloat(V());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.f1
        public <K, V> void s(Map<K, V> map, k0.a<K, V> aVar, p pVar) throws IOException {
            h0(2);
            int iC0 = c0();
            f0(iC0);
            int i10 = this.f2686e;
            this.f2686e = this.f2684c + iC0;
            try {
                Object objT = aVar.f2795b;
                Object objT2 = aVar.f2797d;
                while (true) {
                    int iA = A();
                    if (iA == Integer.MAX_VALUE) {
                        map.put(objT, objT2);
                        return;
                    }
                    if (iA == 1) {
                        objT = T(aVar.f2794a, null, null);
                    } else if (iA != 2) {
                        try {
                            if (!H()) {
                                throw new b0("Unable to parse map entry.");
                            }
                        } catch (b0.a unused) {
                            if (!H()) {
                                throw new b0("Unable to parse map entry.");
                            }
                        }
                    } else {
                        objT2 = T(aVar.f2796c, aVar.f2797d.getClass(), pVar);
                    }
                }
            } finally {
                this.f2686e = i10;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int t() throws IOException {
            h0(0);
            return c0();
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int u() {
            return this.f2687f;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void v(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof z)) {
                int iB = t1.b(this.f2687f);
                if (iB == 2) {
                    int iC0 = c0();
                    m0(iC0);
                    int i12 = this.f2684c + iC0;
                    while (this.f2684c < i12) {
                        list.add(Integer.valueOf(W()));
                    }
                    return;
                }
                if (iB != 5) {
                    throw b0.d();
                }
                do {
                    list.add(Integer.valueOf(i()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            z zVar = (z) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 == 2) {
                int iC02 = c0();
                m0(iC02);
                int i13 = this.f2684c + iC02;
                while (this.f2684c < i13) {
                    zVar.j(W());
                }
                return;
            }
            if (iB2 != 5) {
                throw b0.d();
            }
            do {
                zVar.j(i());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public int w() throws IOException {
            h0(0);
            return i.b(c0());
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public long x() throws IOException {
            h0(0);
            return i.c(d0());
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public void y(List<Boolean> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof f)) {
                int iB = t1.b(this.f2687f);
                if (iB != 0) {
                    if (iB != 2) {
                        throw b0.d();
                    }
                    int iC0 = this.f2684c + c0();
                    while (this.f2684c < iC0) {
                        list.add(Boolean.valueOf(c0() != 0));
                    }
                    g0(iC0);
                    return;
                }
                do {
                    list.add(Boolean.valueOf(j()));
                    if (R()) {
                        return;
                    } else {
                        i10 = this.f2684c;
                    }
                } while (c0() == this.f2687f);
                this.f2684c = i10;
                return;
            }
            f fVar = (f) list;
            int iB2 = t1.b(this.f2687f);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw b0.d();
                }
                int iC02 = this.f2684c + c0();
                while (this.f2684c < iC02) {
                    fVar.k(c0() != 0);
                }
                g0(iC02);
                return;
            }
            do {
                fVar.k(j());
                if (R()) {
                    return;
                } else {
                    i11 = this.f2684c;
                }
            } while (c0() == this.f2687f);
            this.f2684c = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.f1
        public String z() throws IOException {
            return a0(false);
        }
    }

    /* synthetic */ e(a aVar) {
        this();
    }

    public static e Q(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return new b(byteBuffer, z10);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    private e() {
    }
}
