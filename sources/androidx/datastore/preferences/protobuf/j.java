package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.t1;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: CodedInputStreamReader.java */
/* JADX INFO: loaded from: classes.dex */
final class j implements f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f2749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2752d = 0;

    /* JADX INFO: compiled from: CodedInputStreamReader.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2753a;

        static {
            int[] iArr = new int[t1.b.values().length];
            f2753a = iArr;
            try {
                iArr[t1.b.f2874x.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2753a[t1.b.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2753a[t1.b.f2867q.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2753a[t1.b.D.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2753a[t1.b.f2873w.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2753a[t1.b.f2872v.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2753a[t1.b.f2868r.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2753a[t1.b.f2871u.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2753a[t1.b.f2869s.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2753a[t1.b.A.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2753a[t1.b.E.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2753a[t1.b.F.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2753a[t1.b.G.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2753a[t1.b.H.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2753a[t1.b.f2875y.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2753a[t1.b.C.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2753a[t1.b.f2870t.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private j(i iVar) {
        i iVar2 = (i) a0.b(iVar, "input");
        this.f2749a = iVar2;
        iVar2.f2722d = this;
    }

    public static j Q(i iVar) {
        j jVar = iVar.f2722d;
        return jVar != null ? jVar : new j(iVar);
    }

    private Object R(t1.b bVar, Class<?> cls, p pVar) throws IOException {
        switch (a.f2753a[bVar.ordinal()]) {
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

    private <T> T S(g1<T> g1Var, p pVar) throws IOException {
        int i10 = this.f2751c;
        this.f2751c = t1.c(t1.a(this.f2750b), 4);
        try {
            T tJ = g1Var.j();
            g1Var.e(tJ, this, pVar);
            g1Var.f(tJ);
            if (this.f2750b == this.f2751c) {
                return tJ;
            }
            throw b0.g();
        } finally {
            this.f2751c = i10;
        }
    }

    private <T> T T(g1<T> g1Var, p pVar) throws IOException {
        int iC = this.f2749a.C();
        i iVar = this.f2749a;
        if (iVar.f2719a >= iVar.f2720b) {
            throw b0.h();
        }
        int iL = iVar.l(iC);
        T tJ = g1Var.j();
        this.f2749a.f2719a++;
        g1Var.e(tJ, this, pVar);
        g1Var.f(tJ);
        this.f2749a.a(0);
        r5.f2719a--;
        this.f2749a.k(iL);
        return tJ;
    }

    private void V(int i10) throws IOException {
        if (this.f2749a.d() != i10) {
            throw b0.k();
        }
    }

    private void W(int i10) throws IOException {
        if (t1.b(this.f2750b) != i10) {
            throw b0.d();
        }
    }

    private void X(int i10) throws IOException {
        if ((i10 & 3) != 0) {
            throw b0.g();
        }
    }

    private void Y(int i10) throws IOException {
        if ((i10 & 7) != 0) {
            throw b0.g();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int A() throws IOException {
        int i10 = this.f2752d;
        if (i10 != 0) {
            this.f2750b = i10;
            this.f2752d = 0;
        } else {
            this.f2750b = this.f2749a.B();
        }
        int i11 = this.f2750b;
        if (i11 == 0 || i11 == this.f2751c) {
            return Integer.MAX_VALUE;
        }
        return t1.a(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void B(List<String> list) throws IOException {
        U(list, false);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void C(List<String> list) throws IOException {
        U(list, true);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public h D() throws IOException {
        W(2);
        return this.f2749a.n();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void E(List<Float> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof w)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 2) {
                int iC = this.f2749a.C();
                X(iC);
                int iD = this.f2749a.d() + iC;
                do {
                    list.add(Float.valueOf(this.f2749a.s()));
                } while (this.f2749a.d() < iD);
                return;
            }
            if (iB3 != 5) {
                throw b0.d();
            }
            do {
                list.add(Float.valueOf(this.f2749a.s()));
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB = this.f2749a.B();
                }
            } while (iB == this.f2750b);
            this.f2752d = iB;
            return;
        }
        w wVar = (w) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 2) {
            int iC2 = this.f2749a.C();
            X(iC2);
            int iD2 = this.f2749a.d() + iC2;
            do {
                wVar.j(this.f2749a.s());
            } while (this.f2749a.d() < iD2);
            return;
        }
        if (iB4 != 5) {
            throw b0.d();
        }
        do {
            wVar.j(this.f2749a.s());
            if (this.f2749a.e()) {
                return;
            } else {
                iB2 = this.f2749a.B();
            }
        } while (iB2 == this.f2750b);
        this.f2752d = iB2;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int F() throws IOException {
        W(0);
        return this.f2749a.t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.f1
    public <T> void G(List<T> list, g1<T> g1Var, p pVar) throws IOException {
        int iB;
        if (t1.b(this.f2750b) != 3) {
            throw b0.d();
        }
        int i10 = this.f2750b;
        do {
            list.add(S(g1Var, pVar));
            if (this.f2749a.e() || this.f2752d != 0) {
                return;
            } else {
                iB = this.f2749a.B();
            }
        } while (iB == i10);
        this.f2752d = iB;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public boolean H() throws IOException {
        int i10;
        if (this.f2749a.e() || (i10 = this.f2750b) == this.f2751c) {
            return false;
        }
        return this.f2749a.E(i10);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int I() throws IOException {
        W(5);
        return this.f2749a.v();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void J(List<h> list) throws IOException {
        int iB;
        if (t1.b(this.f2750b) != 2) {
            throw b0.d();
        }
        do {
            list.add(D());
            if (this.f2749a.e()) {
                return;
            } else {
                iB = this.f2749a.B();
            }
        } while (iB == this.f2750b);
        this.f2752d = iB;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void K(List<Double> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof m)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 1) {
                do {
                    list.add(Double.valueOf(this.f2749a.o()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iC = this.f2749a.C();
            Y(iC);
            int iD = this.f2749a.d() + iC;
            do {
                list.add(Double.valueOf(this.f2749a.o()));
            } while (this.f2749a.d() < iD);
            return;
        }
        m mVar = (m) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 1) {
            do {
                mVar.j(this.f2749a.o());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iC2 = this.f2749a.C();
        Y(iC2);
        int iD2 = this.f2749a.d() + iC2;
        do {
            mVar.j(this.f2749a.o());
        } while (this.f2749a.d() < iD2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.f1
    public <T> void L(List<T> list, g1<T> g1Var, p pVar) throws IOException {
        int iB;
        if (t1.b(this.f2750b) != 2) {
            throw b0.d();
        }
        int i10 = this.f2750b;
        do {
            list.add(T(g1Var, pVar));
            if (this.f2749a.e() || this.f2752d != 0) {
                return;
            } else {
                iB = this.f2749a.B();
            }
        } while (iB == i10);
        this.f2752d = iB;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public long M() throws IOException {
        W(0);
        return this.f2749a.u();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public String N() throws IOException {
        W(2);
        return this.f2749a.A();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void O(List<Long> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof i0)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 1) {
                do {
                    list.add(Long.valueOf(this.f2749a.r()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iC = this.f2749a.C();
            Y(iC);
            int iD = this.f2749a.d() + iC;
            do {
                list.add(Long.valueOf(this.f2749a.r()));
            } while (this.f2749a.d() < iD);
            return;
        }
        i0 i0Var = (i0) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 1) {
            do {
                i0Var.k(this.f2749a.r());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iC2 = this.f2749a.C();
        Y(iC2);
        int iD2 = this.f2749a.d() + iC2;
        do {
            i0Var.k(this.f2749a.r());
        } while (this.f2749a.d() < iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public <T> T P(g1<T> g1Var, p pVar) throws IOException {
        W(3);
        return (T) S(g1Var, pVar);
    }

    public void U(List<String> list, boolean z10) throws IOException {
        int iB;
        int iB2;
        if (t1.b(this.f2750b) != 2) {
            throw b0.d();
        }
        if (!(list instanceof g0) || z10) {
            do {
                list.add(z10 ? N() : z());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB = this.f2749a.B();
                }
            } while (iB == this.f2750b);
            this.f2752d = iB;
            return;
        }
        g0 g0Var = (g0) list;
        do {
            g0Var.e1(D());
            if (this.f2749a.e()) {
                return;
            } else {
                iB2 = this.f2749a.B();
            }
        } while (iB2 == this.f2750b);
        this.f2752d = iB2;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public <T> T a(g1<T> g1Var, p pVar) throws IOException {
        W(2);
        return (T) T(g1Var, pVar);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void b(List<Integer> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof z)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f2749a.x()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Integer.valueOf(this.f2749a.x()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        z zVar = (z) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                zVar.j(this.f2749a.x());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            zVar.j(this.f2749a.x());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public long c() throws IOException {
        W(0);
        return this.f2749a.D();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public long d() throws IOException {
        W(1);
        return this.f2749a.r();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public <T> T e(Class<T> cls, p pVar) throws IOException {
        W(2);
        return (T) T(c1.a().d(cls), pVar);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void f(List<Integer> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof z)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 2) {
                int iC = this.f2749a.C();
                X(iC);
                int iD = this.f2749a.d() + iC;
                do {
                    list.add(Integer.valueOf(this.f2749a.v()));
                } while (this.f2749a.d() < iD);
                return;
            }
            if (iB3 != 5) {
                throw b0.d();
            }
            do {
                list.add(Integer.valueOf(this.f2749a.v()));
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB = this.f2749a.B();
                }
            } while (iB == this.f2750b);
            this.f2752d = iB;
            return;
        }
        z zVar = (z) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 2) {
            int iC2 = this.f2749a.C();
            X(iC2);
            int iD2 = this.f2749a.d() + iC2;
            do {
                zVar.j(this.f2749a.v());
            } while (this.f2749a.d() < iD2);
            return;
        }
        if (iB4 != 5) {
            throw b0.d();
        }
        do {
            zVar.j(this.f2749a.v());
            if (this.f2749a.e()) {
                return;
            } else {
                iB2 = this.f2749a.B();
            }
        } while (iB2 == this.f2750b);
        this.f2752d = iB2;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void g(List<Long> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof i0)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Long.valueOf(this.f2749a.y()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Long.valueOf(this.f2749a.y()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        i0 i0Var = (i0) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                i0Var.k(this.f2749a.y());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            i0Var.k(this.f2749a.y());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void h(List<Integer> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof z)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f2749a.C()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Integer.valueOf(this.f2749a.C()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        z zVar = (z) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                zVar.j(this.f2749a.C());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            zVar.j(this.f2749a.C());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int i() throws IOException {
        W(5);
        return this.f2749a.q();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public boolean j() throws IOException {
        W(0);
        return this.f2749a.m();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public long k() throws IOException {
        W(1);
        return this.f2749a.w();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void l(List<Long> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof i0)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Long.valueOf(this.f2749a.D()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Long.valueOf(this.f2749a.D()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        i0 i0Var = (i0) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                i0Var.k(this.f2749a.D());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            i0Var.k(this.f2749a.D());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public <T> T m(Class<T> cls, p pVar) throws IOException {
        W(3);
        return (T) S(c1.a().d(cls), pVar);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int n() throws IOException {
        W(0);
        return this.f2749a.C();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void o(List<Long> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof i0)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Long.valueOf(this.f2749a.u()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Long.valueOf(this.f2749a.u()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        i0 i0Var = (i0) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                i0Var.k(this.f2749a.u());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            i0Var.k(this.f2749a.u());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void p(List<Long> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof i0)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 1) {
                do {
                    list.add(Long.valueOf(this.f2749a.w()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iC = this.f2749a.C();
            Y(iC);
            int iD = this.f2749a.d() + iC;
            do {
                list.add(Long.valueOf(this.f2749a.w()));
            } while (this.f2749a.d() < iD);
            return;
        }
        i0 i0Var = (i0) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 1) {
            do {
                i0Var.k(this.f2749a.w());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iC2 = this.f2749a.C();
        Y(iC2);
        int iD2 = this.f2749a.d() + iC2;
        do {
            i0Var.k(this.f2749a.w());
        } while (this.f2749a.d() < iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void q(List<Integer> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof z)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f2749a.t()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Integer.valueOf(this.f2749a.t()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        z zVar = (z) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                zVar.j(this.f2749a.t());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            zVar.j(this.f2749a.t());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void r(List<Integer> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof z)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f2749a.p()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Integer.valueOf(this.f2749a.p()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        z zVar = (z) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                zVar.j(this.f2749a.p());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            zVar.j(this.f2749a.p());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public double readDouble() throws IOException {
        W(1);
        return this.f2749a.o();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public float readFloat() throws IOException {
        W(5);
        return this.f2749a.s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.f1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <K, V> void s(java.util.Map<K, V> r8, androidx.datastore.preferences.protobuf.k0.a<K, V> r9, androidx.datastore.preferences.protobuf.p r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.W(r0)
            androidx.datastore.preferences.protobuf.i r1 = r7.f2749a
            int r1 = r1.C()
            androidx.datastore.preferences.protobuf.i r2 = r7.f2749a
            int r1 = r2.l(r1)
            K r2 = r9.f2795b
            V r3 = r9.f2797d
        L14:
            int r4 = r7.A()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            androidx.datastore.preferences.protobuf.i r5 = r7.f2749a     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.e()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.H()     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            androidx.datastore.preferences.protobuf.b0 r4 = new androidx.datastore.preferences.protobuf.b0     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
        L3a:
            androidx.datastore.preferences.protobuf.t1$b r4 = r9.f2796c     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            V r5 = r9.f2797d     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.R(r4, r5, r10)     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            androidx.datastore.preferences.protobuf.t1$b r4 = r9.f2794a     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.R(r4, r5, r5)     // Catch: androidx.datastore.preferences.protobuf.b0.a -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.H()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            androidx.datastore.preferences.protobuf.b0 r8 = new androidx.datastore.preferences.protobuf.b0     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            androidx.datastore.preferences.protobuf.i r8 = r7.f2749a
            r8.k(r1)
            return
        L65:
            r8 = move-exception
            androidx.datastore.preferences.protobuf.i r9 = r7.f2749a
            r9.k(r1)
            goto L6d
        L6c:
            throw r8
        L6d:
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.j.s(java.util.Map, androidx.datastore.preferences.protobuf.k0$a, androidx.datastore.preferences.protobuf.p):void");
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int t() throws IOException {
        W(0);
        return this.f2749a.p();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int u() {
        return this.f2750b;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void v(List<Integer> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof z)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 2) {
                int iC = this.f2749a.C();
                X(iC);
                int iD = this.f2749a.d() + iC;
                do {
                    list.add(Integer.valueOf(this.f2749a.q()));
                } while (this.f2749a.d() < iD);
                return;
            }
            if (iB3 != 5) {
                throw b0.d();
            }
            do {
                list.add(Integer.valueOf(this.f2749a.q()));
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB = this.f2749a.B();
                }
            } while (iB == this.f2750b);
            this.f2752d = iB;
            return;
        }
        z zVar = (z) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 2) {
            int iC2 = this.f2749a.C();
            X(iC2);
            int iD2 = this.f2749a.d() + iC2;
            do {
                zVar.j(this.f2749a.q());
            } while (this.f2749a.d() < iD2);
            return;
        }
        if (iB4 != 5) {
            throw b0.d();
        }
        do {
            zVar.j(this.f2749a.q());
            if (this.f2749a.e()) {
                return;
            } else {
                iB2 = this.f2749a.B();
            }
        } while (iB2 == this.f2750b);
        this.f2752d = iB2;
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public int w() throws IOException {
        W(0);
        return this.f2749a.x();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public long x() throws IOException {
        W(0);
        return this.f2749a.y();
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public void y(List<Boolean> list) throws IOException {
        int iB;
        int iB2;
        if (!(list instanceof f)) {
            int iB3 = t1.b(this.f2750b);
            if (iB3 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f2749a.m()));
                    if (this.f2749a.e()) {
                        return;
                    } else {
                        iB = this.f2749a.B();
                    }
                } while (iB == this.f2750b);
                this.f2752d = iB;
                return;
            }
            if (iB3 != 2) {
                throw b0.d();
            }
            int iD = this.f2749a.d() + this.f2749a.C();
            do {
                list.add(Boolean.valueOf(this.f2749a.m()));
            } while (this.f2749a.d() < iD);
            V(iD);
            return;
        }
        f fVar = (f) list;
        int iB4 = t1.b(this.f2750b);
        if (iB4 == 0) {
            do {
                fVar.k(this.f2749a.m());
                if (this.f2749a.e()) {
                    return;
                } else {
                    iB2 = this.f2749a.B();
                }
            } while (iB2 == this.f2750b);
            this.f2752d = iB2;
            return;
        }
        if (iB4 != 2) {
            throw b0.d();
        }
        int iD2 = this.f2749a.d() + this.f2749a.C();
        do {
            fVar.k(this.f2749a.m());
        } while (this.f2749a.d() < iD2);
        V(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.f1
    public String z() throws IOException {
        W(2);
        return this.f2749a.z();
    }
}
