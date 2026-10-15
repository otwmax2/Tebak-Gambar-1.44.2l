package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import androidx.datastore.preferences.protobuf.h;
import androidx.datastore.preferences.protobuf.k0;
import androidx.datastore.preferences.protobuf.t1;
import androidx.datastore.preferences.protobuf.u1;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: MessageSchema.java */
/* JADX INFO: loaded from: classes.dex */
final class u0<T> implements g1<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f2896r = new int[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Unsafe f2897s = r1.B();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f2898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f2899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final r0 f2902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f2903f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f2904g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f2905h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f2906i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f2907j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f2908k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f2909l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final w0 f2910m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final h0 f2911n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final n1<?, ?> f2912o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final q<?> f2913p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final m0 f2914q;

    private u0(int[] iArr, Object[] objArr, int i10, int i11, r0 r0Var, boolean z10, boolean z11, int[] iArr2, int i12, int i13, w0 w0Var, h0 h0Var, n1<?, ?> n1Var, q<?> qVar, m0 m0Var) {
        this.f2898a = iArr;
        this.f2899b = objArr;
        this.f2900c = i10;
        this.f2901d = i11;
        this.f2904g = r0Var instanceof y;
        this.f2905h = z10;
        this.f2903f = qVar != null && qVar.e(r0Var);
        this.f2906i = z11;
        this.f2907j = iArr2;
        this.f2908k = i12;
        this.f2909l = i13;
        this.f2910m = w0Var;
        this.f2911n = h0Var;
        this.f2912o = n1Var;
        this.f2913p = qVar;
        this.f2902e = r0Var;
        this.f2914q = m0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean A(Object obj, int i10, g1 g1Var) {
        return g1Var.g(r1.A(obj, R(i10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean B(Object obj, int i10, int i11) {
        List list = (List) r1.A(obj, R(i10));
        if (list.isEmpty()) {
            return true;
        }
        g1 g1VarS = s(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!g1VarS.g(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [androidx.datastore.preferences.protobuf.g1] */
    private boolean C(T t10, int i10, int i11) {
        Map<?, ?> mapH = this.f2914q.h(r1.A(t10, R(i10)));
        if (mapH.isEmpty()) {
            return true;
        }
        if (this.f2914q.c(r(i11)).f2796c.c() != t1.c.MESSAGE) {
            return true;
        }
        ?? D = 0;
        for (Object obj : mapH.values()) {
            D = D;
            if (D == 0) {
                D = c1.a().d(obj.getClass());
            }
            if (!D.g(obj)) {
                return false;
            }
        }
        return true;
    }

    private boolean D(T t10, T t11, int i10) {
        long jY = Y(i10) & 1048575;
        return r1.x(t10, jY) == r1.x(t11, jY);
    }

    private boolean E(T t10, int i10, int i11) {
        return r1.x(t10, (long) (Y(i11) & 1048575)) == i10;
    }

    private static boolean F(int i10) {
        return (i10 & 268435456) != 0;
    }

    private static List<?> G(Object obj, long j10) {
        return (List) r1.A(obj, j10);
    }

    private static <T> long H(T t10, long j10) {
        return r1.y(t10, j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
    
        r0 = r16.f2908k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        if (r0 >= r16.f2909l) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
    
        r13 = n(r19, r16.f2907j[r0], r13, r17);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        if (r13 == null) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
    
        r17.o(r19, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private <UT, UB, ET extends androidx.datastore.preferences.protobuf.u.b<ET>> void I(androidx.datastore.preferences.protobuf.n1<UT, UB> r17, androidx.datastore.preferences.protobuf.q<ET> r18, T r19, androidx.datastore.preferences.protobuf.f1 r20, androidx.datastore.preferences.protobuf.p r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1722
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.u0.I(androidx.datastore.preferences.protobuf.n1, androidx.datastore.preferences.protobuf.q, java.lang.Object, androidx.datastore.preferences.protobuf.f1, androidx.datastore.preferences.protobuf.p):void");
    }

    private final <K, V> void J(Object obj, int i10, Object obj2, p pVar, f1 f1Var) throws IOException {
        long jR = R(i0(i10));
        Object objA = r1.A(obj, jR);
        if (objA == null) {
            objA = this.f2914q.e(obj2);
            r1.O(obj, jR, objA);
        } else if (this.f2914q.g(objA)) {
            Object objE = this.f2914q.e(obj2);
            this.f2914q.a(objE, objA);
            r1.O(obj, jR, objE);
            objA = objE;
        }
        f1Var.s(this.f2914q.d(objA), this.f2914q.c(obj2), pVar);
    }

    private void K(T t10, T t11, int i10) {
        long jR = R(i0(i10));
        if (y(t11, i10)) {
            Object objA = r1.A(t10, jR);
            Object objA2 = r1.A(t11, jR);
            if (objA != null && objA2 != null) {
                r1.O(t10, jR, a0.h(objA, objA2));
                e0(t10, i10);
            } else if (objA2 != null) {
                r1.O(t10, jR, objA2);
                e0(t10, i10);
            }
        }
    }

    private void L(T t10, T t11, int i10) {
        int iI0 = i0(i10);
        int iQ = Q(i10);
        long jR = R(iI0);
        if (E(t11, iQ, i10)) {
            Object objA = r1.A(t10, jR);
            Object objA2 = r1.A(t11, jR);
            if (objA != null && objA2 != null) {
                r1.O(t10, jR, a0.h(objA, objA2));
                f0(t10, iQ, i10);
            } else if (objA2 != null) {
                r1.O(t10, jR, objA2);
                f0(t10, iQ, i10);
            }
        }
    }

    private void M(T t10, T t11, int i10) {
        int iI0 = i0(i10);
        long jR = R(iI0);
        int iQ = Q(i10);
        switch (h0(iI0)) {
            case 0:
                if (y(t11, i10)) {
                    r1.K(t10, jR, r1.v(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 1:
                if (y(t11, i10)) {
                    r1.L(t10, jR, r1.w(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 2:
                if (y(t11, i10)) {
                    r1.N(t10, jR, r1.y(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 3:
                if (y(t11, i10)) {
                    r1.N(t10, jR, r1.y(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 4:
                if (y(t11, i10)) {
                    r1.M(t10, jR, r1.x(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 5:
                if (y(t11, i10)) {
                    r1.N(t10, jR, r1.y(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 6:
                if (y(t11, i10)) {
                    r1.M(t10, jR, r1.x(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 7:
                if (y(t11, i10)) {
                    r1.E(t10, jR, r1.p(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 8:
                if (y(t11, i10)) {
                    r1.O(t10, jR, r1.A(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 9:
                K(t10, t11, i10);
                break;
            case 10:
                if (y(t11, i10)) {
                    r1.O(t10, jR, r1.A(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 11:
                if (y(t11, i10)) {
                    r1.M(t10, jR, r1.x(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 12:
                if (y(t11, i10)) {
                    r1.M(t10, jR, r1.x(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 13:
                if (y(t11, i10)) {
                    r1.M(t10, jR, r1.x(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 14:
                if (y(t11, i10)) {
                    r1.N(t10, jR, r1.y(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 15:
                if (y(t11, i10)) {
                    r1.M(t10, jR, r1.x(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 16:
                if (y(t11, i10)) {
                    r1.N(t10, jR, r1.y(t11, jR));
                    e0(t10, i10);
                }
                break;
            case 17:
                K(t10, t11, i10);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.f2911n.d(t10, t11, jR);
                break;
            case 50:
                i1.F(this.f2914q, t10, t11, jR);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (E(t11, iQ, i10)) {
                    r1.O(t10, jR, r1.A(t11, jR));
                    f0(t10, iQ, i10);
                }
                break;
            case 60:
                L(t10, t11, i10);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (E(t11, iQ, i10)) {
                    r1.O(t10, jR, r1.A(t11, jR));
                    f0(t10, iQ, i10);
                }
                break;
            case 68:
                L(t10, t11, i10);
                break;
        }
    }

    static <T> u0<T> N(Class<T> cls, p0 p0Var, w0 w0Var, h0 h0Var, n1<?, ?> n1Var, q<?> qVar, m0 m0Var) {
        return p0Var instanceof e1 ? P((e1) p0Var, w0Var, h0Var, n1Var, qVar, m0Var) : O((k1) p0Var, w0Var, h0Var, n1Var, qVar, m0Var);
    }

    static <T> u0<T> O(k1 k1Var, w0 w0Var, h0 h0Var, n1<?, ?> n1Var, q<?> qVar, m0 m0Var) {
        boolean z10 = k1Var.c() == b1.PROTO3;
        t[] tVarArrE = k1Var.e();
        if (tVarArrE.length != 0) {
            t tVar = tVarArrE[0];
            throw null;
        }
        int length = tVarArrE.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        if (tVarArrE.length > 0) {
            t tVar2 = tVarArrE[0];
            throw null;
        }
        int[] iArrD = k1Var.d();
        if (iArrD == null) {
            iArrD = f2896r;
        }
        if (tVarArrE.length > 0) {
            t tVar3 = tVarArrE[0];
            throw null;
        }
        int[] iArr2 = f2896r;
        int[] iArr3 = f2896r;
        int[] iArr4 = new int[iArrD.length + iArr2.length + iArr3.length];
        System.arraycopy(iArrD, 0, iArr4, 0, iArrD.length);
        System.arraycopy(iArr2, 0, iArr4, iArrD.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, iArrD.length + iArr2.length, iArr3.length);
        return new u0<>(iArr, objArr, 0, 0, k1Var.b(), z10, true, iArr4, iArrD.length, iArrD.length + iArr2.length, w0Var, h0Var, n1Var, qVar, m0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x039f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <T> androidx.datastore.preferences.protobuf.u0<T> P(androidx.datastore.preferences.protobuf.e1 r36, androidx.datastore.preferences.protobuf.w0 r37, androidx.datastore.preferences.protobuf.h0 r38, androidx.datastore.preferences.protobuf.n1<?, ?> r39, androidx.datastore.preferences.protobuf.q<?> r40, androidx.datastore.preferences.protobuf.m0 r41) {
        /*
            Method dump skipped, instruction units count: 1038
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.u0.P(androidx.datastore.preferences.protobuf.e1, androidx.datastore.preferences.protobuf.w0, androidx.datastore.preferences.protobuf.h0, androidx.datastore.preferences.protobuf.n1, androidx.datastore.preferences.protobuf.q, androidx.datastore.preferences.protobuf.m0):androidx.datastore.preferences.protobuf.u0");
    }

    private int Q(int i10) {
        return this.f2898a[i10];
    }

    private static long R(int i10) {
        return i10 & 1048575;
    }

    private static <T> boolean S(T t10, long j10) {
        return ((Boolean) r1.A(t10, j10)).booleanValue();
    }

    private static <T> double T(T t10, long j10) {
        return ((Double) r1.A(t10, j10)).doubleValue();
    }

    private static <T> float U(T t10, long j10) {
        return ((Float) r1.A(t10, j10)).floatValue();
    }

    private static <T> int V(T t10, long j10) {
        return ((Integer) r1.A(t10, j10)).intValue();
    }

    private static <T> long W(T t10, long j10) {
        return ((Long) r1.A(t10, j10)).longValue();
    }

    private int X(int i10) {
        if (i10 < this.f2900c || i10 > this.f2901d) {
            return -1;
        }
        return g0(i10, 0);
    }

    private int Y(int i10) {
        return this.f2898a[i10 + 2];
    }

    private <E> void Z(Object obj, long j10, f1 f1Var, g1<E> g1Var, p pVar) throws IOException {
        f1Var.G(this.f2911n.e(obj, j10), g1Var, pVar);
    }

    private <E> void a0(Object obj, int i10, f1 f1Var, g1<E> g1Var, p pVar) throws IOException {
        f1Var.L(this.f2911n.e(obj, R(i10)), g1Var, pVar);
    }

    private boolean b(T t10, T t11, int i10) {
        return y(t10, i10) == y(t11, i10);
    }

    private void b0(Object obj, int i10, f1 f1Var) throws IOException {
        if (x(i10)) {
            r1.O(obj, R(i10), f1Var.N());
        } else if (this.f2904g) {
            r1.O(obj, R(i10), f1Var.z());
        } else {
            r1.O(obj, R(i10), f1Var.D());
        }
    }

    private void c0(Object obj, int i10, f1 f1Var) throws IOException {
        if (x(i10)) {
            f1Var.C(this.f2911n.e(obj, R(i10)));
        } else {
            f1Var.B(this.f2911n.e(obj, R(i10)));
        }
    }

    private static Field d0(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private void e0(T t10, int i10) {
        if (this.f2905h) {
            return;
        }
        int iY = Y(i10);
        long j10 = iY & 1048575;
        r1.M(t10, j10, r1.x(t10, j10) | (1 << (iY >>> 20)));
    }

    private void f0(T t10, int i10, int i11) {
        r1.M(t10, Y(i11) & 1048575, i10);
    }

    private int g0(int i10, int i11) {
        int length = (this.f2898a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int iQ = Q(i13);
            if (i10 == iQ) {
                return i13;
            }
            if (i10 < iQ) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private static int h0(int i10) {
        return (i10 & 267386880) >>> 20;
    }

    private int i0(int i10) {
        return this.f2898a[i10 + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void j0(T r18, androidx.datastore.preferences.protobuf.u1 r19) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1352
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.u0.j0(java.lang.Object, androidx.datastore.preferences.protobuf.u1):void");
    }

    private static <T> boolean k(T t10, long j10) {
        return r1.p(t10, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void k0(T r13, androidx.datastore.preferences.protobuf.u1 r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1584
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.u0.k0(java.lang.Object, androidx.datastore.preferences.protobuf.u1):void");
    }

    private static <T> double l(T t10, long j10) {
        return r1.v(t10, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void l0(T r11, androidx.datastore.preferences.protobuf.u1 r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1586
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.u0.l0(java.lang.Object, androidx.datastore.preferences.protobuf.u1):void");
    }

    private boolean m(T t10, T t11, int i10) {
        int iI0 = i0(i10);
        long jR = R(iI0);
        switch (h0(iI0)) {
            case 0:
                return b(t10, t11, i10) && Double.doubleToLongBits(r1.v(t10, jR)) == Double.doubleToLongBits(r1.v(t11, jR));
            case 1:
                return b(t10, t11, i10) && Float.floatToIntBits(r1.w(t10, jR)) == Float.floatToIntBits(r1.w(t11, jR));
            case 2:
                return b(t10, t11, i10) && r1.y(t10, jR) == r1.y(t11, jR);
            case 3:
                return b(t10, t11, i10) && r1.y(t10, jR) == r1.y(t11, jR);
            case 4:
                return b(t10, t11, i10) && r1.x(t10, jR) == r1.x(t11, jR);
            case 5:
                return b(t10, t11, i10) && r1.y(t10, jR) == r1.y(t11, jR);
            case 6:
                return b(t10, t11, i10) && r1.x(t10, jR) == r1.x(t11, jR);
            case 7:
                return b(t10, t11, i10) && r1.p(t10, jR) == r1.p(t11, jR);
            case 8:
                return b(t10, t11, i10) && i1.K(r1.A(t10, jR), r1.A(t11, jR));
            case 9:
                return b(t10, t11, i10) && i1.K(r1.A(t10, jR), r1.A(t11, jR));
            case 10:
                return b(t10, t11, i10) && i1.K(r1.A(t10, jR), r1.A(t11, jR));
            case 11:
                return b(t10, t11, i10) && r1.x(t10, jR) == r1.x(t11, jR);
            case 12:
                return b(t10, t11, i10) && r1.x(t10, jR) == r1.x(t11, jR);
            case 13:
                return b(t10, t11, i10) && r1.x(t10, jR) == r1.x(t11, jR);
            case 14:
                return b(t10, t11, i10) && r1.y(t10, jR) == r1.y(t11, jR);
            case 15:
                return b(t10, t11, i10) && r1.x(t10, jR) == r1.x(t11, jR);
            case 16:
                return b(t10, t11, i10) && r1.y(t10, jR) == r1.y(t11, jR);
            case 17:
                return b(t10, t11, i10) && i1.K(r1.A(t10, jR), r1.A(t11, jR));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return i1.K(r1.A(t10, jR), r1.A(t11, jR));
            case 50:
                return i1.K(r1.A(t10, jR), r1.A(t11, jR));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return D(t10, t11, i10) && i1.K(r1.A(t10, jR), r1.A(t11, jR));
            default:
                return true;
        }
    }

    private <K, V> void m0(u1 u1Var, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            u1Var.L(i10, this.f2914q.c(r(i11)), this.f2914q.h(obj));
        }
    }

    private final <UT, UB> UB n(Object obj, int i10, UB ub, n1<UT, UB> n1Var) {
        a0.e eVarQ;
        int iQ = Q(i10);
        Object objA = r1.A(obj, R(i0(i10)));
        return (objA == null || (eVarQ = q(i10)) == null) ? ub : (UB) o(i10, iQ, this.f2914q.d(objA), eVarQ, ub, n1Var);
    }

    private void n0(int i10, Object obj, u1 u1Var) throws IOException {
        if (obj instanceof String) {
            u1Var.m(i10, (String) obj);
        } else {
            u1Var.w(i10, (h) obj);
        }
    }

    private final <K, V, UT, UB> UB o(int i10, int i11, Map<K, V> map, a0.e eVar, UB ub, n1<UT, UB> n1Var) {
        k0.a<?, ?> aVarC = this.f2914q.c(r(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.a(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = n1Var.n();
                }
                h.C0046h c0046hR = h.r(k0.b(aVarC, next.getKey(), next.getValue()));
                try {
                    k0.e(c0046hR.b(), aVarC, next.getKey(), next.getValue());
                    n1Var.d(ub, i11, c0046hR.a());
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub;
    }

    private <UT, UB> void o0(n1<UT, UB> n1Var, T t10, u1 u1Var) throws IOException {
        n1Var.t(n1Var.g(t10), u1Var);
    }

    private static <T> float p(T t10, long j10) {
        return r1.w(t10, j10);
    }

    private a0.e q(int i10) {
        return (a0.e) this.f2899b[((i10 / 3) * 2) + 1];
    }

    private Object r(int i10) {
        return this.f2899b[(i10 / 3) * 2];
    }

    private g1 s(int i10) {
        int i11 = (i10 / 3) * 2;
        g1 g1Var = (g1) this.f2899b[i11];
        if (g1Var != null) {
            return g1Var;
        }
        g1<T> g1VarD = c1.a().d((Class) this.f2899b[i11 + 1]);
        this.f2899b[i11] = g1VarD;
        return g1VarD;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int t(T t10) {
        int i10;
        int i11;
        int i12;
        int iD;
        int iL;
        int i13;
        int iV;
        int iX;
        Unsafe unsafe = f2897s;
        int i14 = -1;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i15 < this.f2898a.length) {
            int iI0 = i0(i15);
            int iQ = Q(i15);
            int iH0 = h0(iI0);
            if (iH0 <= 17) {
                i10 = this.f2898a[i15 + 2];
                int i18 = 1048575 & i10;
                int i19 = 1 << (i10 >>> 20);
                if (i18 != i14) {
                    i17 = unsafe.getInt(t10, i18);
                    i14 = i18;
                }
                i11 = i19;
            } else {
                i10 = (!this.f2906i || iH0 < v.f2920c0.c() || iH0 > v.f2933p0.c()) ? 0 : this.f2898a[i15 + 2] & 1048575;
                i11 = 0;
            }
            long jR = R(iI0);
            int i20 = i14;
            switch (iH0) {
                case 0:
                    if ((i17 & i11) != 0) {
                        i12 = k.i(iQ, 0.0d);
                        i16 += i12;
                    }
                    break;
                case 1:
                    if ((i17 & i11) != 0) {
                        i12 = k.q(iQ, 0.0f);
                        i16 += i12;
                    }
                    break;
                case 2:
                    if ((i17 & i11) != 0) {
                        i12 = k.x(iQ, unsafe.getLong(t10, jR));
                        i16 += i12;
                    }
                    break;
                case 3:
                    if ((i17 & i11) != 0) {
                        i12 = k.Y(iQ, unsafe.getLong(t10, jR));
                        i16 += i12;
                    }
                    break;
                case 4:
                    if ((i17 & i11) != 0) {
                        i12 = k.v(iQ, unsafe.getInt(t10, jR));
                        i16 += i12;
                    }
                    break;
                case 5:
                    if ((i17 & i11) != 0) {
                        i12 = k.o(iQ, 0L);
                        i16 += i12;
                    }
                    break;
                case 6:
                    if ((i17 & i11) != 0) {
                        i12 = k.m(iQ, 0);
                        i16 += i12;
                    }
                    break;
                case 7:
                    if ((i17 & i11) != 0) {
                        iD = k.d(iQ, true);
                        i16 += iD;
                    }
                    break;
                case 8:
                    if ((i17 & i11) != 0) {
                        Object object = unsafe.getObject(t10, jR);
                        iD = object instanceof h ? k.g(iQ, (h) object) : k.T(iQ, (String) object);
                        i16 += iD;
                    }
                    break;
                case 9:
                    if ((i17 & i11) != 0) {
                        iD = i1.o(iQ, unsafe.getObject(t10, jR), s(i15));
                        i16 += iD;
                    }
                    break;
                case 10:
                    if ((i17 & i11) != 0) {
                        iD = k.g(iQ, (h) unsafe.getObject(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 11:
                    if ((i17 & i11) != 0) {
                        iD = k.W(iQ, unsafe.getInt(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 12:
                    if ((i17 & i11) != 0) {
                        iD = k.k(iQ, unsafe.getInt(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 13:
                    if ((i17 & i11) != 0) {
                        iL = k.L(iQ, 0);
                        i16 += iL;
                    }
                    break;
                case 14:
                    if ((i17 & i11) != 0) {
                        iD = k.N(iQ, 0L);
                        i16 += iD;
                    }
                    break;
                case 15:
                    if ((i17 & i11) != 0) {
                        iD = k.P(iQ, unsafe.getInt(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 16:
                    if ((i17 & i11) != 0) {
                        iD = k.R(iQ, unsafe.getLong(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 17:
                    if ((i17 & i11) != 0) {
                        iD = k.s(iQ, (r0) unsafe.getObject(t10, jR), s(i15));
                        i16 += iD;
                    }
                    break;
                case 18:
                    iD = i1.h(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 19:
                    iD = i1.f(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 20:
                    iD = i1.m(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 21:
                    iD = i1.x(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 22:
                    iD = i1.k(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 23:
                    iD = i1.h(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 24:
                    iD = i1.f(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 25:
                    iD = i1.a(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 26:
                    iD = i1.u(iQ, (List) unsafe.getObject(t10, jR));
                    i16 += iD;
                    break;
                case 27:
                    iD = i1.p(iQ, (List) unsafe.getObject(t10, jR), s(i15));
                    i16 += iD;
                    break;
                case 28:
                    iD = i1.c(iQ, (List) unsafe.getObject(t10, jR));
                    i16 += iD;
                    break;
                case 29:
                    iD = i1.v(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 30:
                    iD = i1.d(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 31:
                    iD = i1.f(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 32:
                    iD = i1.h(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 33:
                    iD = i1.q(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 34:
                    iD = i1.s(iQ, (List) unsafe.getObject(t10, jR), false);
                    i16 += iD;
                    break;
                case 35:
                    i13 = i1.i((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 36:
                    i13 = i1.g((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 37:
                    i13 = i1.n((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 38:
                    i13 = i1.y((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 39:
                    i13 = i1.l((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 40:
                    i13 = i1.i((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 41:
                    i13 = i1.g((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 42:
                    i13 = i1.b((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 43:
                    i13 = i1.w((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 44:
                    i13 = i1.e((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 45:
                    i13 = i1.g((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 46:
                    i13 = i1.i((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 47:
                    i13 = i1.r((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 48:
                    i13 = i1.t((List) unsafe.getObject(t10, jR));
                    if (i13 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i10, i13);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i13);
                        iL = iV + iX + i13;
                        i16 += iL;
                    }
                    break;
                case 49:
                    iD = i1.j(iQ, (List) unsafe.getObject(t10, jR), s(i15));
                    i16 += iD;
                    break;
                case 50:
                    iD = this.f2914q.f(iQ, unsafe.getObject(t10, jR), r(i15));
                    i16 += iD;
                    break;
                case 51:
                    if (E(t10, iQ, i15)) {
                        iD = k.i(iQ, 0.0d);
                        i16 += iD;
                    }
                    break;
                case 52:
                    if (E(t10, iQ, i15)) {
                        iD = k.q(iQ, 0.0f);
                        i16 += iD;
                    }
                    break;
                case 53:
                    if (E(t10, iQ, i15)) {
                        iD = k.x(iQ, W(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 54:
                    if (E(t10, iQ, i15)) {
                        iD = k.Y(iQ, W(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 55:
                    if (E(t10, iQ, i15)) {
                        iD = k.v(iQ, V(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 56:
                    if (E(t10, iQ, i15)) {
                        iD = k.o(iQ, 0L);
                        i16 += iD;
                    }
                    break;
                case 57:
                    if (E(t10, iQ, i15)) {
                        iL = k.m(iQ, 0);
                        i16 += iL;
                    }
                    break;
                case 58:
                    if (E(t10, iQ, i15)) {
                        iD = k.d(iQ, true);
                        i16 += iD;
                    }
                    break;
                case 59:
                    if (E(t10, iQ, i15)) {
                        Object object2 = unsafe.getObject(t10, jR);
                        iD = object2 instanceof h ? k.g(iQ, (h) object2) : k.T(iQ, (String) object2);
                        i16 += iD;
                    }
                    break;
                case 60:
                    if (E(t10, iQ, i15)) {
                        iD = i1.o(iQ, unsafe.getObject(t10, jR), s(i15));
                        i16 += iD;
                    }
                    break;
                case 61:
                    if (E(t10, iQ, i15)) {
                        iD = k.g(iQ, (h) unsafe.getObject(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 62:
                    if (E(t10, iQ, i15)) {
                        iD = k.W(iQ, V(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 63:
                    if (E(t10, iQ, i15)) {
                        iD = k.k(iQ, V(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 64:
                    if (E(t10, iQ, i15)) {
                        iL = k.L(iQ, 0);
                        i16 += iL;
                    }
                    break;
                case 65:
                    if (E(t10, iQ, i15)) {
                        iD = k.N(iQ, 0L);
                        i16 += iD;
                    }
                    break;
                case 66:
                    if (E(t10, iQ, i15)) {
                        iD = k.P(iQ, V(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 67:
                    if (E(t10, iQ, i15)) {
                        iD = k.R(iQ, W(t10, jR));
                        i16 += iD;
                    }
                    break;
                case 68:
                    if (E(t10, iQ, i15)) {
                        iD = k.s(iQ, (r0) unsafe.getObject(t10, jR), s(i15));
                        i16 += iD;
                    }
                    break;
            }
            i15 += 3;
            i14 = i20;
        }
        int iV2 = i16 + v(this.f2912o, t10);
        return this.f2903f ? iV2 + this.f2913p.c(t10).l() : iV2;
    }

    private int u(T t10) {
        int i10;
        int i11;
        int iV;
        int iX;
        Unsafe unsafe = f2897s;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f2898a.length; i13 += 3) {
            int iI0 = i0(i13);
            int iH0 = h0(iI0);
            int iQ = Q(i13);
            long jR = R(iI0);
            int i14 = (iH0 < v.f2920c0.c() || iH0 > v.f2933p0.c()) ? 0 : this.f2898a[i13 + 2] & 1048575;
            switch (iH0) {
                case 0:
                    if (y(t10, i13)) {
                        i10 = k.i(iQ, 0.0d);
                        i12 += i10;
                    }
                    break;
                case 1:
                    if (y(t10, i13)) {
                        i10 = k.q(iQ, 0.0f);
                        i12 += i10;
                    }
                    break;
                case 2:
                    if (y(t10, i13)) {
                        i10 = k.x(iQ, r1.y(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 3:
                    if (y(t10, i13)) {
                        i10 = k.Y(iQ, r1.y(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 4:
                    if (y(t10, i13)) {
                        i10 = k.v(iQ, r1.x(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 5:
                    if (y(t10, i13)) {
                        i10 = k.o(iQ, 0L);
                        i12 += i10;
                    }
                    break;
                case 6:
                    if (y(t10, i13)) {
                        i10 = k.m(iQ, 0);
                        i12 += i10;
                    }
                    break;
                case 7:
                    if (y(t10, i13)) {
                        i10 = k.d(iQ, true);
                        i12 += i10;
                    }
                    break;
                case 8:
                    if (y(t10, i13)) {
                        Object objA = r1.A(t10, jR);
                        i10 = objA instanceof h ? k.g(iQ, (h) objA) : k.T(iQ, (String) objA);
                        i12 += i10;
                    }
                    break;
                case 9:
                    if (y(t10, i13)) {
                        i10 = i1.o(iQ, r1.A(t10, jR), s(i13));
                        i12 += i10;
                    }
                    break;
                case 10:
                    if (y(t10, i13)) {
                        i10 = k.g(iQ, (h) r1.A(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 11:
                    if (y(t10, i13)) {
                        i10 = k.W(iQ, r1.x(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 12:
                    if (y(t10, i13)) {
                        i10 = k.k(iQ, r1.x(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 13:
                    if (y(t10, i13)) {
                        i10 = k.L(iQ, 0);
                        i12 += i10;
                    }
                    break;
                case 14:
                    if (y(t10, i13)) {
                        i10 = k.N(iQ, 0L);
                        i12 += i10;
                    }
                    break;
                case 15:
                    if (y(t10, i13)) {
                        i10 = k.P(iQ, r1.x(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 16:
                    if (y(t10, i13)) {
                        i10 = k.R(iQ, r1.y(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 17:
                    if (y(t10, i13)) {
                        i10 = k.s(iQ, (r0) r1.A(t10, jR), s(i13));
                        i12 += i10;
                    }
                    break;
                case 18:
                    i10 = i1.h(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 19:
                    i10 = i1.f(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 20:
                    i10 = i1.m(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 21:
                    i10 = i1.x(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 22:
                    i10 = i1.k(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 23:
                    i10 = i1.h(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 24:
                    i10 = i1.f(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 25:
                    i10 = i1.a(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 26:
                    i10 = i1.u(iQ, G(t10, jR));
                    i12 += i10;
                    break;
                case 27:
                    i10 = i1.p(iQ, G(t10, jR), s(i13));
                    i12 += i10;
                    break;
                case 28:
                    i10 = i1.c(iQ, G(t10, jR));
                    i12 += i10;
                    break;
                case 29:
                    i10 = i1.v(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 30:
                    i10 = i1.d(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 31:
                    i10 = i1.f(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 32:
                    i10 = i1.h(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 33:
                    i10 = i1.q(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 34:
                    i10 = i1.s(iQ, G(t10, jR), false);
                    i12 += i10;
                    break;
                case 35:
                    i11 = i1.i((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 36:
                    i11 = i1.g((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 37:
                    i11 = i1.n((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 38:
                    i11 = i1.y((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 39:
                    i11 = i1.l((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 40:
                    i11 = i1.i((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 41:
                    i11 = i1.g((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 42:
                    i11 = i1.b((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 43:
                    i11 = i1.w((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 44:
                    i11 = i1.e((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 45:
                    i11 = i1.g((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 46:
                    i11 = i1.i((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 47:
                    i11 = i1.r((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 48:
                    i11 = i1.t((List) unsafe.getObject(t10, jR));
                    if (i11 > 0) {
                        if (this.f2906i) {
                            unsafe.putInt(t10, i14, i11);
                        }
                        iV = k.V(iQ);
                        iX = k.X(i11);
                        i10 = iV + iX + i11;
                        i12 += i10;
                    }
                    break;
                case 49:
                    i10 = i1.j(iQ, G(t10, jR), s(i13));
                    i12 += i10;
                    break;
                case 50:
                    i10 = this.f2914q.f(iQ, r1.A(t10, jR), r(i13));
                    i12 += i10;
                    break;
                case 51:
                    if (E(t10, iQ, i13)) {
                        i10 = k.i(iQ, 0.0d);
                        i12 += i10;
                    }
                    break;
                case 52:
                    if (E(t10, iQ, i13)) {
                        i10 = k.q(iQ, 0.0f);
                        i12 += i10;
                    }
                    break;
                case 53:
                    if (E(t10, iQ, i13)) {
                        i10 = k.x(iQ, W(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 54:
                    if (E(t10, iQ, i13)) {
                        i10 = k.Y(iQ, W(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 55:
                    if (E(t10, iQ, i13)) {
                        i10 = k.v(iQ, V(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 56:
                    if (E(t10, iQ, i13)) {
                        i10 = k.o(iQ, 0L);
                        i12 += i10;
                    }
                    break;
                case 57:
                    if (E(t10, iQ, i13)) {
                        i10 = k.m(iQ, 0);
                        i12 += i10;
                    }
                    break;
                case 58:
                    if (E(t10, iQ, i13)) {
                        i10 = k.d(iQ, true);
                        i12 += i10;
                    }
                    break;
                case 59:
                    if (E(t10, iQ, i13)) {
                        Object objA2 = r1.A(t10, jR);
                        i10 = objA2 instanceof h ? k.g(iQ, (h) objA2) : k.T(iQ, (String) objA2);
                        i12 += i10;
                    }
                    break;
                case 60:
                    if (E(t10, iQ, i13)) {
                        i10 = i1.o(iQ, r1.A(t10, jR), s(i13));
                        i12 += i10;
                    }
                    break;
                case 61:
                    if (E(t10, iQ, i13)) {
                        i10 = k.g(iQ, (h) r1.A(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 62:
                    if (E(t10, iQ, i13)) {
                        i10 = k.W(iQ, V(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 63:
                    if (E(t10, iQ, i13)) {
                        i10 = k.k(iQ, V(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 64:
                    if (E(t10, iQ, i13)) {
                        i10 = k.L(iQ, 0);
                        i12 += i10;
                    }
                    break;
                case 65:
                    if (E(t10, iQ, i13)) {
                        i10 = k.N(iQ, 0L);
                        i12 += i10;
                    }
                    break;
                case 66:
                    if (E(t10, iQ, i13)) {
                        i10 = k.P(iQ, V(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 67:
                    if (E(t10, iQ, i13)) {
                        i10 = k.R(iQ, W(t10, jR));
                        i12 += i10;
                    }
                    break;
                case 68:
                    if (E(t10, iQ, i13)) {
                        i10 = k.s(iQ, (r0) r1.A(t10, jR), s(i13));
                        i12 += i10;
                    }
                    break;
            }
        }
        return i12 + v(this.f2912o, t10);
    }

    private <UT, UB> int v(n1<UT, UB> n1Var, T t10) {
        return n1Var.h(n1Var.g(t10));
    }

    private static <T> int w(T t10, long j10) {
        return r1.x(t10, j10);
    }

    private static boolean x(int i10) {
        return (i10 & 536870912) != 0;
    }

    private boolean y(T t10, int i10) {
        if (!this.f2905h) {
            int iY = Y(i10);
            return (r1.x(t10, (long) (iY & 1048575)) & (1 << (iY >>> 20))) != 0;
        }
        int iI0 = i0(i10);
        long jR = R(iI0);
        switch (h0(iI0)) {
            case 0:
                return r1.v(t10, jR) != 0.0d;
            case 1:
                return r1.w(t10, jR) != 0.0f;
            case 2:
                return r1.y(t10, jR) != 0;
            case 3:
                return r1.y(t10, jR) != 0;
            case 4:
                return r1.x(t10, jR) != 0;
            case 5:
                return r1.y(t10, jR) != 0;
            case 6:
                return r1.x(t10, jR) != 0;
            case 7:
                return r1.p(t10, jR);
            case 8:
                Object objA = r1.A(t10, jR);
                if (objA instanceof String) {
                    return !((String) objA).isEmpty();
                }
                if (objA instanceof h) {
                    return !h.f2704p.equals(objA);
                }
                throw new IllegalArgumentException();
            case 9:
                return r1.A(t10, jR) != null;
            case 10:
                return !h.f2704p.equals(r1.A(t10, jR));
            case 11:
                return r1.x(t10, jR) != 0;
            case 12:
                return r1.x(t10, jR) != 0;
            case 13:
                return r1.x(t10, jR) != 0;
            case 14:
                return r1.y(t10, jR) != 0;
            case 15:
                return r1.x(t10, jR) != 0;
            case 16:
                return r1.y(t10, jR) != 0;
            case 17:
                return r1.A(t10, jR) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean z(T t10, int i10, int i11, int i12) {
        return this.f2905h ? y(t10, i10) : (i11 & i12) != 0;
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void a(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i10 = 0; i10 < this.f2898a.length; i10 += 3) {
            M(t10, t11, i10);
        }
        if (this.f2905h) {
            return;
        }
        i1.G(this.f2912o, t10, t11);
        if (this.f2903f) {
            i1.E(this.f2913p, t10, t11);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public boolean c(T t10, T t11) {
        int length = this.f2898a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!m(t10, t11, i10)) {
                return false;
            }
        }
        if (!this.f2912o.g(t10).equals(this.f2912o.g(t11))) {
            return false;
        }
        if (this.f2903f) {
            return this.f2913p.c(t10).equals(this.f2913p.c(t11));
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public int d(T t10) {
        int i10;
        int iF;
        int length = this.f2898a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iI0 = i0(i12);
            int iQ = Q(i12);
            long jR = R(iI0);
            int iHashCode = 37;
            switch (h0(iI0)) {
                case 0:
                    i10 = i11 * 53;
                    iF = a0.f(Double.doubleToLongBits(r1.v(t10, jR)));
                    i11 = i10 + iF;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iF = Float.floatToIntBits(r1.w(t10, jR));
                    i11 = i10 + iF;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iF = a0.f(r1.y(t10, jR));
                    i11 = i10 + iF;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iF = a0.f(r1.y(t10, jR));
                    i11 = i10 + iF;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iF = r1.x(t10, jR);
                    i11 = i10 + iF;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iF = a0.f(r1.y(t10, jR));
                    i11 = i10 + iF;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iF = r1.x(t10, jR);
                    i11 = i10 + iF;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iF = a0.c(r1.p(t10, jR));
                    i11 = i10 + iF;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iF = ((String) r1.A(t10, jR)).hashCode();
                    i11 = i10 + iF;
                    break;
                case 9:
                    Object objA = r1.A(t10, jR);
                    if (objA != null) {
                        iHashCode = objA.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iF = r1.A(t10, jR).hashCode();
                    i11 = i10 + iF;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iF = r1.x(t10, jR);
                    i11 = i10 + iF;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iF = r1.x(t10, jR);
                    i11 = i10 + iF;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iF = r1.x(t10, jR);
                    i11 = i10 + iF;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iF = a0.f(r1.y(t10, jR));
                    i11 = i10 + iF;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iF = r1.x(t10, jR);
                    i11 = i10 + iF;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iF = a0.f(r1.y(t10, jR));
                    i11 = i10 + iF;
                    break;
                case 17:
                    Object objA2 = r1.A(t10, jR);
                    if (objA2 != null) {
                        iHashCode = objA2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    iF = r1.A(t10, jR).hashCode();
                    i11 = i10 + iF;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iF = r1.A(t10, jR).hashCode();
                    i11 = i10 + iF;
                    break;
                case 51:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = a0.f(Double.doubleToLongBits(T(t10, jR)));
                        i11 = i10 + iF;
                    }
                    break;
                case 52:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = Float.floatToIntBits(U(t10, jR));
                        i11 = i10 + iF;
                    }
                    break;
                case 53:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = a0.f(W(t10, jR));
                        i11 = i10 + iF;
                    }
                    break;
                case 54:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = a0.f(W(t10, jR));
                        i11 = i10 + iF;
                    }
                    break;
                case 55:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = V(t10, jR);
                        i11 = i10 + iF;
                    }
                    break;
                case 56:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = a0.f(W(t10, jR));
                        i11 = i10 + iF;
                    }
                    break;
                case 57:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = V(t10, jR);
                        i11 = i10 + iF;
                    }
                    break;
                case 58:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = a0.c(S(t10, jR));
                        i11 = i10 + iF;
                    }
                    break;
                case 59:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = ((String) r1.A(t10, jR)).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 60:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = r1.A(t10, jR).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 61:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = r1.A(t10, jR).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 62:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = V(t10, jR);
                        i11 = i10 + iF;
                    }
                    break;
                case 63:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = V(t10, jR);
                        i11 = i10 + iF;
                    }
                    break;
                case 64:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = V(t10, jR);
                        i11 = i10 + iF;
                    }
                    break;
                case 65:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = a0.f(W(t10, jR));
                        i11 = i10 + iF;
                    }
                    break;
                case 66:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = V(t10, jR);
                        i11 = i10 + iF;
                    }
                    break;
                case 67:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = a0.f(W(t10, jR));
                        i11 = i10 + iF;
                    }
                    break;
                case 68:
                    if (E(t10, iQ, i12)) {
                        i10 = i11 * 53;
                        iF = r1.A(t10, jR).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.f2912o.g(t10).hashCode();
        return this.f2903f ? (iHashCode2 * 53) + this.f2913p.c(t10).hashCode() : iHashCode2;
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void e(T t10, f1 f1Var, p pVar) throws IOException {
        Objects.requireNonNull(pVar);
        I(this.f2912o, this.f2913p, t10, f1Var, pVar);
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void f(T t10) {
        int i10;
        int i11 = this.f2908k;
        while (true) {
            i10 = this.f2909l;
            if (i11 >= i10) {
                break;
            }
            long jR = R(i0(this.f2907j[i11]));
            Object objA = r1.A(t10, jR);
            if (objA != null) {
                r1.O(t10, jR, this.f2914q.b(objA));
            }
            i11++;
        }
        int length = this.f2907j.length;
        while (i10 < length) {
            this.f2911n.c(t10, this.f2907j[i10]);
            i10++;
        }
        this.f2912o.j(t10);
        if (this.f2903f) {
            this.f2913p.f(t10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0078  */
    @Override // androidx.datastore.preferences.protobuf.g1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean g(T r13) {
        /*
            r12 = this;
            r0 = 0
            r1 = -1
            r2 = 0
            r3 = 0
        L4:
            int r4 = r12.f2908k
            r5 = 1
            if (r2 >= r4) goto L94
            int[] r4 = r12.f2907j
            r4 = r4[r2]
            int r6 = r12.Q(r4)
            int r7 = r12.i0(r4)
            boolean r8 = r12.f2905h
            if (r8 != 0) goto L31
            int[] r8 = r12.f2898a
            int r9 = r4 + 2
            r8 = r8[r9]
            r9 = 1048575(0xfffff, float:1.469367E-39)
            r9 = r9 & r8
            int r8 = r8 >>> 20
            int r5 = r5 << r8
            if (r9 == r1) goto L32
            sun.misc.Unsafe r1 = androidx.datastore.preferences.protobuf.u0.f2897s
            long r10 = (long) r9
            int r3 = r1.getInt(r13, r10)
            r1 = r9
            goto L32
        L31:
            r5 = 0
        L32:
            boolean r8 = F(r7)
            if (r8 == 0) goto L3f
            boolean r8 = r12.z(r13, r4, r3, r5)
            if (r8 != 0) goto L3f
            return r0
        L3f:
            int r8 = h0(r7)
            r9 = 9
            if (r8 == r9) goto L7f
            r9 = 17
            if (r8 == r9) goto L7f
            r5 = 27
            if (r8 == r5) goto L78
            r5 = 60
            if (r8 == r5) goto L67
            r5 = 68
            if (r8 == r5) goto L67
            r5 = 49
            if (r8 == r5) goto L78
            r5 = 50
            if (r8 == r5) goto L60
            goto L90
        L60:
            boolean r4 = r12.C(r13, r7, r4)
            if (r4 != 0) goto L90
            return r0
        L67:
            boolean r5 = r12.E(r13, r6, r4)
            if (r5 == 0) goto L90
            androidx.datastore.preferences.protobuf.g1 r4 = r12.s(r4)
            boolean r4 = A(r13, r7, r4)
            if (r4 != 0) goto L90
            return r0
        L78:
            boolean r4 = r12.B(r13, r7, r4)
            if (r4 != 0) goto L90
            return r0
        L7f:
            boolean r5 = r12.z(r13, r4, r3, r5)
            if (r5 == 0) goto L90
            androidx.datastore.preferences.protobuf.g1 r4 = r12.s(r4)
            boolean r4 = A(r13, r7, r4)
            if (r4 != 0) goto L90
            return r0
        L90:
            int r2 = r2 + 1
            goto L4
        L94:
            boolean r1 = r12.f2903f
            if (r1 == 0) goto La5
            androidx.datastore.preferences.protobuf.q<?> r1 = r12.f2913p
            androidx.datastore.preferences.protobuf.u r13 = r1.c(r13)
            boolean r13 = r13.p()
            if (r13 != 0) goto La5
            return r0
        La5:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.u0.g(java.lang.Object):boolean");
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void h(T t10, u1 u1Var) throws IOException {
        if (u1Var.i() == u1.a.DESCENDING) {
            l0(t10, u1Var);
        } else if (this.f2905h) {
            k0(t10, u1Var);
        } else {
            j0(t10, u1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public int i(T t10) {
        return this.f2905h ? u(t10) : t(t10);
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public T j() {
        return (T) this.f2910m.a(this.f2902e);
    }
}
