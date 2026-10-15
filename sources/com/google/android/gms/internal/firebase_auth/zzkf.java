package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f22843a = D();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzkz<?, ?> f22844b = g(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzkz<?, ?> f22845c = g(true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzkz<?, ?> f22846d = new zzlb();

    public static void A(int i10, List<Long> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.b(i10, list, z10);
    }

    static int B(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return C(list) + (size * zzhm.h0(i10));
    }

    static int C(List<Integer> list) {
        int iC0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzig) {
            zzig zzigVar = (zzig) list;
            iC0 = 0;
            while (i10 < size) {
                iC0 += zzhm.C0(zzigVar.i(i10));
                i10++;
            }
        } else {
            iC0 = 0;
            while (i10 < size) {
                iC0 += zzhm.C0(list.get(i10).intValue());
                i10++;
            }
        }
        return iC0;
    }

    private static Class<?> D() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void E(int i10, List<Long> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.w(i10, list, z10);
    }

    static int F(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return G(list) + (size * zzhm.h0(i10));
    }

    static int G(List<Integer> list) {
        int iL0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzig) {
            zzig zzigVar = (zzig) list;
            iL0 = 0;
            while (i10 < size) {
                iL0 += zzhm.l0(zzigVar.i(i10));
                i10++;
            }
        } else {
            iL0 = 0;
            while (i10 < size) {
                iL0 += zzhm.l0(list.get(i10).intValue());
                i10++;
            }
        }
        return iL0;
    }

    private static Class<?> H() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void I(int i10, List<Long> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.e(i10, list, z10);
    }

    static int J(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return K(list) + (size * zzhm.h0(i10));
    }

    static int K(List<Integer> list) {
        int iP0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzig) {
            zzig zzigVar = (zzig) list;
            iP0 = 0;
            while (i10 < size) {
                iP0 += zzhm.p0(zzigVar.i(i10));
                i10++;
            }
        } else {
            iP0 = 0;
            while (i10 < size) {
                iP0 += zzhm.p0(list.get(i10).intValue());
                i10++;
            }
        }
        return iP0;
    }

    public static void L(int i10, List<Long> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.u(i10, list, z10);
    }

    static int M(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return N(list) + (size * zzhm.h0(i10));
    }

    static int N(List<Integer> list) {
        int iT0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzig) {
            zzig zzigVar = (zzig) list;
            iT0 = 0;
            while (i10 < size) {
                iT0 += zzhm.t0(zzigVar.i(i10));
                i10++;
            }
        } else {
            iT0 = 0;
            while (i10 < size) {
                iT0 += zzhm.t0(list.get(i10).intValue());
                i10++;
            }
        }
        return iT0;
    }

    public static void O(int i10, List<Long> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.c(i10, list, z10);
    }

    static int P(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhm.y0(i10, 0);
    }

    static int Q(List<?> list) {
        return list.size() << 2;
    }

    public static void R(int i10, List<Integer> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.k(i10, list, z10);
    }

    static int S(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhm.r0(i10, 0L);
    }

    static int T(List<?> list) {
        return list.size() << 3;
    }

    public static void U(int i10, List<Integer> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.d(i10, list, z10);
    }

    static int V(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzhm.H(i10, true);
    }

    static int W(List<?> list) {
        return list.size();
    }

    public static void X(int i10, List<Integer> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.x(i10, list, z10);
    }

    public static void Y(int i10, List<Integer> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.q(i10, list, z10);
    }

    public static void Z(int i10, List<Integer> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.r(i10, list, z10);
    }

    static int a(int i10, Object obj, zzkd zzkdVar) {
        return obj instanceof zziw ? zzhm.c(i10, (zziw) obj) : zzhm.F(i10, (zzjn) obj, zzkdVar);
    }

    public static void a0(int i10, List<Integer> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.l(i10, list, z10);
    }

    static int b(int i10, List<?> list) {
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iH0 = zzhm.h0(i10) * size;
        if (list instanceof zziy) {
            zziy zziyVar = (zziy) list;
            while (i11 < size) {
                Object objZ = zziyVar.z(i11);
                iH0 += objZ instanceof zzgv ? zzhm.I((zzgv) objZ) : zzhm.K((String) objZ);
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iH0 += obj instanceof zzgv ? zzhm.I((zzgv) obj) : zzhm.K((String) obj);
                i11++;
            }
        }
        return iH0;
    }

    public static void b0(int i10, List<Boolean> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.i(i10, list, z10);
    }

    static int c(int i10, List<?> list, zzkd zzkdVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iH0 = zzhm.h0(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            iH0 += obj instanceof zziw ? zzhm.d((zziw) obj) : zzhm.e((zzjn) obj, zzkdVar);
        }
        return iH0;
    }

    static int d(int i10, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return e(list) + (list.size() * zzhm.h0(i10));
    }

    static int e(List<Long> list) {
        int iE0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjb) {
            zzjb zzjbVar = (zzjb) list;
            iE0 = 0;
            while (i10 < size) {
                iE0 += zzhm.e0(zzjbVar.i(i10));
                i10++;
            }
        } else {
            iE0 = 0;
            while (i10 < size) {
                iE0 += zzhm.e0(list.get(i10).longValue());
                i10++;
            }
        }
        return iE0;
    }

    public static zzkz<?, ?> f() {
        return f22844b;
    }

    private static zzkz<?, ?> g(boolean z10) {
        try {
            Class<?> clsH = H();
            if (clsH == null) {
                return null;
            }
            return (zzkz) clsH.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void h(int i10, List<String> list, zzls zzlsVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.D(i10, list);
    }

    public static void i(int i10, List<?> list, zzls zzlsVar, zzkd zzkdVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.g(i10, list, zzkdVar);
    }

    public static void j(int i10, List<Double> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.f(i10, list, z10);
    }

    static <T, FT extends zzhx<FT>> void k(zzhu<FT> zzhuVar, T t10, T t11) {
        zzhv<T> zzhvVarB = zzhuVar.b(t11);
        if (zzhvVarB.f22689a.isEmpty()) {
            return;
        }
        zzhuVar.e(t10).g(zzhvVarB);
    }

    static <T> void l(zzjk zzjkVar, T t10, T t11, long j10) {
        zzlf.j(t10, j10, zzjkVar.e(zzlf.F(t10, j10), zzlf.F(t11, j10)));
    }

    static <T, UT, UB> void m(zzkz<UT, UB> zzkzVar, T t10, T t11) {
        zzkzVar.b(t10, zzkzVar.e(zzkzVar.c(t10), zzkzVar.c(t11)));
    }

    public static void n(Class<?> cls) {
        Class<?> cls2;
        if (!zzif.class.isAssignableFrom(cls) && (cls2 = f22843a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean o(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int p(int i10, List<zzgv> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iH0 = size * zzhm.h0(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iH0 += zzhm.I(list.get(i11));
        }
        return iH0;
    }

    static int q(int i10, List<zzjn> list, zzkd zzkdVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iV = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iV += zzhm.V(i10, list.get(i11), zzkdVar);
        }
        return iV;
    }

    static int r(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return s(list) + (size * zzhm.h0(i10));
    }

    static int s(List<Long> list) {
        int iJ0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjb) {
            zzjb zzjbVar = (zzjb) list;
            iJ0 = 0;
            while (i10 < size) {
                iJ0 += zzhm.j0(zzjbVar.i(i10));
                i10++;
            }
        } else {
            iJ0 = 0;
            while (i10 < size) {
                iJ0 += zzhm.j0(list.get(i10).longValue());
                i10++;
            }
        }
        return iJ0;
    }

    public static zzkz<?, ?> t() {
        return f22845c;
    }

    public static void u(int i10, List<zzgv> list, zzls zzlsVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.y(i10, list);
    }

    public static void v(int i10, List<?> list, zzls zzlsVar, zzkd zzkdVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.m(i10, list, zzkdVar);
    }

    public static void w(int i10, List<Float> list, zzls zzlsVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzlsVar.B(i10, list, z10);
    }

    static int x(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return y(list) + (size * zzhm.h0(i10));
    }

    static int y(List<Long> list) {
        int iO0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjb) {
            zzjb zzjbVar = (zzjb) list;
            iO0 = 0;
            while (i10 < size) {
                iO0 += zzhm.o0(zzjbVar.i(i10));
                i10++;
            }
        } else {
            iO0 = 0;
            while (i10 < size) {
                iO0 += zzhm.o0(list.get(i10).longValue());
                i10++;
            }
        }
        return iO0;
    }

    public static zzkz<?, ?> z() {
        return f22846d;
    }
}
