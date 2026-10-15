package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import androidx.datastore.preferences.protobuf.u;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: SchemaUtil.java */
/* JADX INFO: loaded from: classes.dex */
final class i1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2745a = B();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final n1<?, ?> f2746b = C(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final n1<?, ?> f2747c = C(true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n1<?, ?> f2748d = new p1();

    static <UT, UB> UB A(int i10, List<Integer> list, a0.e eVar, UB ub, n1<UT, UB> n1Var) {
        if (eVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = list.get(i12).intValue();
                if (eVar.a(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    ub = (UB) L(i10, iIntValue, ub, n1Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!eVar.a(iIntValue2)) {
                    ub = (UB) L(i10, iIntValue2, ub, n1Var);
                    it.remove();
                }
            }
        }
        return ub;
    }

    private static Class<?> B() {
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static n1<?, ?> C(boolean z10) {
        try {
            Class<?> clsD = D();
            if (clsD == null) {
                return null;
            }
            return (n1) clsD.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> D() {
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static <T, FT extends u.b<FT>> void E(q<FT> qVar, T t10, T t11) {
        u<T> uVarC = qVar.c(t11);
        if (uVarC.n()) {
            return;
        }
        qVar.d(t10).u(uVarC);
    }

    static <T> void F(m0 m0Var, T t10, T t11, long j10) {
        r1.O(t10, j10, m0Var.a(r1.A(t10, j10), r1.A(t11, j10)));
    }

    static <T, UT, UB> void G(n1<UT, UB> n1Var, T t10, T t11) {
        n1Var.p(t10, n1Var.k(n1Var.g(t10), n1Var.g(t11)));
    }

    public static n1<?, ?> H() {
        return f2746b;
    }

    public static n1<?, ?> I() {
        return f2747c;
    }

    public static void J(Class<?> cls) {
        Class<?> cls2;
        if (!y.class.isAssignableFrom(cls) && (cls2 = f2745a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean K(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static <UT, UB> UB L(int i10, int i11, UB ub, n1<UT, UB> n1Var) {
        if (ub == null) {
            ub = n1Var.n();
        }
        n1Var.e(ub, i10, i11);
        return ub;
    }

    public static n1<?, ?> M() {
        return f2748d;
    }

    public static void N(int i10, List<Boolean> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.A(i10, list, z10);
    }

    public static void O(int i10, List<h> list, u1 u1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.N(i10, list);
    }

    public static void P(int i10, List<Double> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.K(i10, list, z10);
    }

    public static void Q(int i10, List<Integer> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.J(i10, list, z10);
    }

    public static void R(int i10, List<Integer> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.y(i10, list, z10);
    }

    public static void S(int i10, List<Long> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.u(i10, list, z10);
    }

    public static void T(int i10, List<Float> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.a(i10, list, z10);
    }

    public static void U(int i10, List<?> list, u1 u1Var, g1 g1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.l(i10, list, g1Var);
    }

    public static void V(int i10, List<Integer> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.o(i10, list, z10);
    }

    public static void W(int i10, List<Long> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.I(i10, list, z10);
    }

    public static void X(int i10, List<?> list, u1 u1Var, g1 g1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.j(i10, list, g1Var);
    }

    public static void Y(int i10, List<Integer> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.v(i10, list, z10);
    }

    public static void Z(int i10, List<Long> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.f(i10, list, z10);
    }

    static int a(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? k.V(i10) + k.C(size) : size * k.d(i10, true);
    }

    public static void a0(int i10, List<Integer> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.G(i10, list, z10);
    }

    static int b(List<?> list) {
        return list.size();
    }

    public static void b0(int i10, List<Long> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.C(i10, list, z10);
    }

    static int c(int i10, List<h> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iV = size * k.V(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iV += k.h(list.get(i11));
        }
        return iV;
    }

    public static void c0(int i10, List<String> list, u1 u1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.k(i10, list);
    }

    static int d(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = e(list);
        return z10 ? k.V(i10) + k.C(iE) : iE + (size * k.V(i10));
    }

    public static void d0(int i10, List<Integer> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.B(i10, list, z10);
    }

    static int e(List<Integer> list) {
        int iL;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof z) {
            z zVar = (z) list;
            iL = 0;
            while (i10 < size) {
                iL += k.l(zVar.n(i10));
                i10++;
            }
        } else {
            iL = 0;
            while (i10 < size) {
                iL += k.l(list.get(i10).intValue());
                i10++;
            }
        }
        return iL;
    }

    public static void e0(int i10, List<Long> list, u1 u1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u1Var.g(i10, list, z10);
    }

    static int f(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? k.V(i10) + k.C(size * 4) : size * k.m(i10, 0);
    }

    static int g(List<?> list) {
        return list.size() * 4;
    }

    static int h(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? k.V(i10) + k.C(size * 8) : size * k.o(i10, 0L);
    }

    static int i(List<?> list) {
        return list.size() * 8;
    }

    static int j(int i10, List<r0> list, g1 g1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iS = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iS += k.s(i10, list.get(i11), g1Var);
        }
        return iS;
    }

    static int k(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iL = l(list);
        return z10 ? k.V(i10) + k.C(iL) : iL + (size * k.V(i10));
    }

    static int l(List<Integer> list) {
        int iW;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof z) {
            z zVar = (z) list;
            iW = 0;
            while (i10 < size) {
                iW += k.w(zVar.n(i10));
                i10++;
            }
        } else {
            iW = 0;
            while (i10 < size) {
                iW += k.w(list.get(i10).intValue());
                i10++;
            }
        }
        return iW;
    }

    static int m(int i10, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        int iN = n(list);
        return z10 ? k.V(i10) + k.C(iN) : iN + (list.size() * k.V(i10));
    }

    static int n(List<Long> list) {
        int iY;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof i0) {
            i0 i0Var = (i0) list;
            iY = 0;
            while (i10 < size) {
                iY += k.y(i0Var.n(i10));
                i10++;
            }
        } else {
            iY = 0;
            while (i10 < size) {
                iY += k.y(list.get(i10).longValue());
                i10++;
            }
        }
        return iY;
    }

    static int o(int i10, Object obj, g1 g1Var) {
        return obj instanceof e0 ? k.A(i10, (e0) obj) : k.F(i10, (r0) obj, g1Var);
    }

    static int p(int i10, List<?> list, g1 g1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iV = k.V(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            iV += obj instanceof e0 ? k.B((e0) obj) : k.H((r0) obj, g1Var);
        }
        return iV;
    }

    static int q(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = r(list);
        return z10 ? k.V(i10) + k.C(iR) : iR + (size * k.V(i10));
    }

    static int r(List<Integer> list) {
        int iQ;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof z) {
            z zVar = (z) list;
            iQ = 0;
            while (i10 < size) {
                iQ += k.Q(zVar.n(i10));
                i10++;
            }
        } else {
            iQ = 0;
            while (i10 < size) {
                iQ += k.Q(list.get(i10).intValue());
                i10++;
            }
        }
        return iQ;
    }

    static int s(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iT = t(list);
        return z10 ? k.V(i10) + k.C(iT) : iT + (size * k.V(i10));
    }

    static int t(List<Long> list) {
        int iS;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof i0) {
            i0 i0Var = (i0) list;
            iS = 0;
            while (i10 < size) {
                iS += k.S(i0Var.n(i10));
                i10++;
            }
        } else {
            iS = 0;
            while (i10 < size) {
                iS += k.S(list.get(i10).longValue());
                i10++;
            }
        }
        return iS;
    }

    static int u(int i10, List<?> list) {
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iV = k.V(i10) * size;
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            while (i11 < size) {
                Object objO3 = g0Var.o3(i11);
                iV += objO3 instanceof h ? k.h((h) objO3) : k.U((String) objO3);
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iV += obj instanceof h ? k.h((h) obj) : k.U((String) obj);
                i11++;
            }
        }
        return iV;
    }

    static int v(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = w(list);
        return z10 ? k.V(i10) + k.C(iW) : iW + (size * k.V(i10));
    }

    static int w(List<Integer> list) {
        int iX;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof z) {
            z zVar = (z) list;
            iX = 0;
            while (i10 < size) {
                iX += k.X(zVar.n(i10));
                i10++;
            }
        } else {
            iX = 0;
            while (i10 < size) {
                iX += k.X(list.get(i10).intValue());
                i10++;
            }
        }
        return iX;
    }

    static int x(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iY = y(list);
        return z10 ? k.V(i10) + k.C(iY) : iY + (size * k.V(i10));
    }

    static int y(List<Long> list) {
        int iZ;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof i0) {
            i0 i0Var = (i0) list;
            iZ = 0;
            while (i10 < size) {
                iZ += k.Z(i0Var.n(i10));
                i10++;
            }
        } else {
            iZ = 0;
            while (i10 < size) {
                iZ += k.Z(list.get(i10).longValue());
                i10++;
            }
        }
        return iZ;
    }

    static <UT, UB> UB z(int i10, List<Integer> list, a0.d<?> dVar, UB ub, n1<UT, UB> n1Var) {
        if (dVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = list.get(i12).intValue();
                if (dVar.a(iIntValue) != null) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    ub = (UB) L(i10, iIntValue, ub, n1Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (dVar.a(iIntValue2) == null) {
                    ub = (UB) L(i10, iIntValue2, ub, n1Var);
                    it.remove();
                }
            }
        }
        return ub;
    }
}
