package com.google.android.gms.internal.drive;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzmh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f22277a = A();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzmx<?, ?> f22278b = D(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzmx<?, ?> f22279c = D(true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzmx<?, ?> f22280d = new zzmz();

    private static Class<?> A() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> B() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static int C(List<Integer> list) {
        int iS;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            iS = 0;
            while (i10 < size) {
                iS += zzjr.s(zzklVar.g(i10));
                i10++;
            }
        } else {
            iS = 0;
            while (i10 < size) {
                iS += zzjr.s(list.get(i10).intValue());
                i10++;
            }
        }
        return iS;
    }

    private static zzmx<?, ?> D(boolean z10) {
        try {
            Class<?> clsB = B();
            if (clsB == null) {
                return null;
            }
            return (zzmx) clsB.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void E(int i10, List<Long> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.u(i10, list, z10);
    }

    static int F(List<Integer> list) {
        int iT;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            iT = 0;
            while (i10 < size) {
                iT += zzjr.t(zzklVar.g(i10));
                i10++;
            }
        } else {
            iT = 0;
            while (i10 < size) {
                iT += zzjr.t(list.get(i10).intValue());
                i10++;
            }
        }
        return iT;
    }

    public static void G(int i10, List<Long> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.c(i10, list, z10);
    }

    public static void H(Class<?> cls) {
        Class<?> cls2;
        if (!zzkk.class.isAssignableFrom(cls) && (cls2 = f22277a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static int I(List<?> list) {
        return list.size() << 2;
    }

    public static void J(int i10, List<Integer> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.k(i10, list, z10);
    }

    static int K(List<?> list) {
        return list.size() << 3;
    }

    public static void L(int i10, List<Integer> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.d(i10, list, z10);
    }

    static int M(List<?> list) {
        return list.size();
    }

    public static void N(int i10, List<Integer> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.x(i10, list, z10);
    }

    public static void O(int i10, List<Integer> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.q(i10, list, z10);
    }

    public static void P(int i10, List<Integer> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.r(i10, list, z10);
    }

    public static void Q(int i10, List<Integer> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.l(i10, list, z10);
    }

    public static void R(int i10, List<Boolean> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.i(i10, list, z10);
    }

    static int S(int i10, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return a(list) + (list.size() * zzjr.q(i10));
    }

    static int T(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return h(list) + (size * zzjr.q(i10));
    }

    static int U(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return o(list) + (size * zzjr.q(i10));
    }

    static int V(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return s(list) + (size * zzjr.q(i10));
    }

    static int W(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return v(list) + (size * zzjr.q(i10));
    }

    static int X(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return C(list) + (size * zzjr.q(i10));
    }

    static int Y(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return F(list) + (size * zzjr.q(i10));
    }

    static int Z(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjr.p0(i10, 0);
    }

    static int a(List<Long> list) {
        int iX0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzle) {
            zzle zzleVar = (zzle) list;
            iX0 = 0;
            while (i10 < size) {
                iX0 += zzjr.x0(zzleVar.g(i10));
                i10++;
            }
        } else {
            iX0 = 0;
            while (i10 < size) {
                iX0 += zzjr.x0(list.get(i10).longValue());
                i10++;
            }
        }
        return iX0;
    }

    static int a0(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjr.l0(i10, 0L);
    }

    public static void b(int i10, List<String> list, zzns zznsVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.D(i10, list);
    }

    static int b0(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjr.Q(i10, true);
    }

    public static void c(int i10, List<?> list, zzns zznsVar, zzmf zzmfVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.M(i10, list, zzmfVar);
    }

    public static void d(int i10, List<Double> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.f(i10, list, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T, FT extends zzkd<FT>> void e(zzjy<FT> zzjyVar, T t10, T t11) {
        zzkb<T> zzkbVarC = zzjyVar.c(t11);
        if (zzkbVarC.f22120a.isEmpty()) {
            return;
        }
        zzjyVar.d(t10).h(zzkbVarC);
    }

    static <T> void f(zzll zzllVar, T t10, T t11, long j10) {
        zznd.g(t10, j10, zzllVar.f(zznd.G(t10, j10), zznd.G(t11, j10)));
    }

    static <T, UT, UB> void g(zzmx<UT, UB> zzmxVar, T t10, T t11) {
        zzmxVar.d(t10, zzmxVar.e(zzmxVar.g(t10), zzmxVar.g(t11)));
    }

    static int h(List<Long> list) {
        int iY0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzle) {
            zzle zzleVar = (zzle) list;
            iY0 = 0;
            while (i10 < size) {
                iY0 += zzjr.y0(zzleVar.g(i10));
                i10++;
            }
        } else {
            iY0 = 0;
            while (i10 < size) {
                iY0 += zzjr.y0(list.get(i10).longValue());
                i10++;
            }
        }
        return iY0;
    }

    public static void i(int i10, List<zzjc> list, zzns zznsVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.y(i10, list);
    }

    public static void j(int i10, List<?> list, zzns zznsVar, zzmf zzmfVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.O(i10, list, zzmfVar);
    }

    public static void k(int i10, List<Float> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.B(i10, list, z10);
    }

    static int l(int i10, Object obj, zzmf zzmfVar) {
        return obj instanceof zzkx ? zzjr.b(i10, (zzkx) obj) : zzjr.F(i10, (zzlq) obj, zzmfVar);
    }

    static int m(int i10, List<?> list) {
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iQ = zzjr.q(i10) * size;
        if (list instanceof zzkz) {
            zzkz zzkzVar = (zzkz) list;
            while (i11 < size) {
                Object objB3 = zzkzVar.b3(i11);
                iQ += objB3 instanceof zzjc ? zzjr.H((zzjc) objB3) : zzjr.u0((String) objB3);
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iQ += obj instanceof zzjc ? zzjr.H((zzjc) obj) : zzjr.u0((String) obj);
                i11++;
            }
        }
        return iQ;
    }

    static int n(int i10, List<?> list, zzmf zzmfVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iQ = zzjr.q(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            iQ += obj instanceof zzkx ? zzjr.c((zzkx) obj) : zzjr.d((zzlq) obj, zzmfVar);
        }
        return iQ;
    }

    static int o(List<Long> list) {
        int iZ0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzle) {
            zzle zzleVar = (zzle) list;
            iZ0 = 0;
            while (i10 < size) {
                iZ0 += zzjr.z0(zzleVar.g(i10));
                i10++;
            }
        } else {
            iZ0 = 0;
            while (i10 < size) {
                iZ0 += zzjr.z0(list.get(i10).longValue());
                i10++;
            }
        }
        return iZ0;
    }

    public static void p(int i10, List<Long> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.b(i10, list, z10);
    }

    static int q(int i10, List<zzjc> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iQ = size * zzjr.q(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iQ += zzjr.H(list.get(i11));
        }
        return iQ;
    }

    static int r(int i10, List<zzlq> list, zzmf zzmfVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iP = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iP += zzjr.P(i10, list.get(i11), zzmfVar);
        }
        return iP;
    }

    static int s(List<Integer> list) {
        int iW;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            iW = 0;
            while (i10 < size) {
                iW += zzjr.w(zzklVar.g(i10));
                i10++;
            }
        } else {
            iW = 0;
            while (i10 < size) {
                iW += zzjr.w(list.get(i10).intValue());
                i10++;
            }
        }
        return iW;
    }

    public static void t(int i10, List<Long> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.w(i10, list, z10);
    }

    static boolean u(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int v(List<Integer> list) {
        int iR;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            iR = 0;
            while (i10 < size) {
                iR += zzjr.r(zzklVar.g(i10));
                i10++;
            }
        } else {
            iR = 0;
            while (i10 < size) {
                iR += zzjr.r(list.get(i10).intValue());
                i10++;
            }
        }
        return iR;
    }

    public static void w(int i10, List<Long> list, zzns zznsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznsVar.e(i10, list, z10);
    }

    public static zzmx<?, ?> x() {
        return f22278b;
    }

    public static zzmx<?, ?> y() {
        return f22279c;
    }

    public static zzmx<?, ?> z() {
        return f22280d;
    }
}
