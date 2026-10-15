package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.u1;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: UnknownFieldSetLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class o1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final o1 f2815f = new o1(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f2817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f2818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2819d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2820e;

    private o1() {
        this(0, new int[8], new Object[8], true);
    }

    private void b() {
        int i10 = this.f2816a;
        int[] iArr = this.f2817b;
        if (i10 == iArr.length) {
            int i11 = i10 + (i10 < 4 ? 8 : i10 >> 1);
            this.f2817b = Arrays.copyOf(iArr, i11);
            this.f2818c = Arrays.copyOf(this.f2818c, i11);
        }
    }

    private static boolean c(int[] iArr, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private static boolean d(Object[] objArr, Object[] objArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!objArr[i11].equals(objArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    public static o1 e() {
        return f2815f;
    }

    private static int h(int[] iArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        return i11;
    }

    private static int i(Object[] objArr, int i10) {
        int iHashCode = 17;
        for (int i11 = 0; i11 < i10; i11++) {
            iHashCode = (iHashCode * 31) + objArr[i11].hashCode();
        }
        return iHashCode;
    }

    static o1 k(o1 o1Var, o1 o1Var2) {
        int i10 = o1Var.f2816a + o1Var2.f2816a;
        int[] iArrCopyOf = Arrays.copyOf(o1Var.f2817b, i10);
        System.arraycopy(o1Var2.f2817b, 0, iArrCopyOf, o1Var.f2816a, o1Var2.f2816a);
        Object[] objArrCopyOf = Arrays.copyOf(o1Var.f2818c, i10);
        System.arraycopy(o1Var2.f2818c, 0, objArrCopyOf, o1Var.f2816a, o1Var2.f2816a);
        return new o1(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static o1 l() {
        return new o1();
    }

    private static void p(int i10, Object obj, u1 u1Var) throws IOException {
        int iA = t1.a(i10);
        int iB = t1.b(i10);
        if (iB == 0) {
            u1Var.p(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 1) {
            u1Var.h(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 2) {
            u1Var.w(iA, (h) obj);
            return;
        }
        if (iB != 3) {
            if (iB != 5) {
                throw new RuntimeException(b0.d());
            }
            u1Var.d(iA, ((Integer) obj).intValue());
        } else if (u1Var.i() == u1.a.ASCENDING) {
            u1Var.s(iA);
            ((o1) obj).q(u1Var);
            u1Var.F(iA);
        } else {
            u1Var.F(iA);
            ((o1) obj).q(u1Var);
            u1Var.s(iA);
        }
    }

    void a() {
        if (!this.f2820e) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof o1)) {
            return false;
        }
        o1 o1Var = (o1) obj;
        int i10 = this.f2816a;
        return i10 == o1Var.f2816a && c(this.f2817b, o1Var.f2817b, i10) && d(this.f2818c, o1Var.f2818c, this.f2816a);
    }

    public int f() {
        int iY;
        int i10 = this.f2819d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f2816a; i12++) {
            int i13 = this.f2817b[i12];
            int iA = t1.a(i13);
            int iB = t1.b(i13);
            if (iB == 0) {
                iY = k.Y(iA, ((Long) this.f2818c[i12]).longValue());
            } else if (iB == 1) {
                iY = k.o(iA, ((Long) this.f2818c[i12]).longValue());
            } else if (iB == 2) {
                iY = k.g(iA, (h) this.f2818c[i12]);
            } else if (iB == 3) {
                iY = (k.V(iA) * 2) + ((o1) this.f2818c[i12]).f();
            } else {
                if (iB != 5) {
                    throw new IllegalStateException(b0.d());
                }
                iY = k.m(iA, ((Integer) this.f2818c[i12]).intValue());
            }
            i11 += iY;
        }
        this.f2819d = i11;
        return i11;
    }

    public int g() {
        int i10 = this.f2819d;
        if (i10 != -1) {
            return i10;
        }
        int iJ = 0;
        for (int i11 = 0; i11 < this.f2816a; i11++) {
            iJ += k.J(t1.a(this.f2817b[i11]), (h) this.f2818c[i11]);
        }
        this.f2819d = iJ;
        return iJ;
    }

    public int hashCode() {
        int i10 = this.f2816a;
        return ((((527 + i10) * 31) + h(this.f2817b, i10)) * 31) + i(this.f2818c, this.f2816a);
    }

    public void j() {
        this.f2820e = false;
    }

    final void m(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.f2816a; i11++) {
            t0.c(sb, i10, String.valueOf(t1.a(this.f2817b[i11])), this.f2818c[i11]);
        }
    }

    void n(int i10, Object obj) {
        a();
        b();
        int[] iArr = this.f2817b;
        int i11 = this.f2816a;
        iArr[i11] = i10;
        this.f2818c[i11] = obj;
        this.f2816a = i11 + 1;
    }

    void o(u1 u1Var) throws IOException {
        if (u1Var.i() == u1.a.DESCENDING) {
            for (int i10 = this.f2816a - 1; i10 >= 0; i10--) {
                u1Var.c(t1.a(this.f2817b[i10]), this.f2818c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f2816a; i11++) {
            u1Var.c(t1.a(this.f2817b[i11]), this.f2818c[i11]);
        }
    }

    public void q(u1 u1Var) throws IOException {
        if (this.f2816a == 0) {
            return;
        }
        if (u1Var.i() == u1.a.ASCENDING) {
            for (int i10 = 0; i10 < this.f2816a; i10++) {
                p(this.f2817b[i10], this.f2818c[i10], u1Var);
            }
            return;
        }
        for (int i11 = this.f2816a - 1; i11 >= 0; i11--) {
            p(this.f2817b[i11], this.f2818c[i11], u1Var);
        }
    }

    private o1(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f2819d = -1;
        this.f2816a = i10;
        this.f2817b = iArr;
        this.f2818c = objArr;
        this.f2820e = z10;
    }
}
