package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class f23734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzml f23735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzml f23736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzml f23737d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f23734a = cls;
        f23735b = C(false);
        f23736c = C(true);
        f23737d = new zzmn();
    }

    static int A(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjj.a(i10 << 3) + 1);
    }

    static void B(zzle zzleVar, Object obj, Object obj2, long j10) {
        zzmv.x(obj, j10, zzle.b(zzmv.k(obj, j10), zzmv.k(obj2, j10)));
    }

    private static zzml C(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzml) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    static int D(List list) {
        return list.size();
    }

    static int E(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD = size * zzjj.D(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iD += zzjj.x((zzjb) list.get(i11));
        }
        return iD;
    }

    static int F(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return G(list) + (size * zzjj.D(i10));
    }

    static int G(List list) {
        int iZ;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iZ = 0;
            while (i10 < size) {
                iZ += zzjj.z(zzkdVar.g(i10));
                i10++;
            }
        } else {
            iZ = 0;
            while (i10 < size) {
                iZ += zzjj.z(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZ;
    }

    static int H(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjj.a(i10 << 3) + 4);
    }

    static int I(List list) {
        return list.size() * 4;
    }

    static int J(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzjj.a(i10 << 3) + 8);
    }

    static int K(List list) {
        return list.size() * 8;
    }

    static int L(int i10, List list, zzlu zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iY = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iY += zzjj.y(i10, (zzlj) list.get(i11), zzluVar);
        }
        return iY;
    }

    static int M(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return N(list) + (size * zzjj.D(i10));
    }

    static int N(List list) {
        int iZ;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iZ = 0;
            while (i10 < size) {
                iZ += zzjj.z(zzkdVar.g(i10));
                i10++;
            }
        } else {
            iZ = 0;
            while (i10 < size) {
                iZ += zzjj.z(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZ;
    }

    static int O(int i10, List list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return P(list) + (list.size() * zzjj.D(i10));
    }

    static int P(List list) {
        int iB;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            iB = 0;
            while (i10 < size) {
                iB += zzjj.b(zzkyVar.h(i10));
                i10++;
            }
        } else {
            iB = 0;
            while (i10 < size) {
                iB += zzjj.b(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iB;
    }

    static int Q(int i10, Object obj, zzlu zzluVar) {
        if (!(obj instanceof zzkp)) {
            return zzjj.a(i10 << 3) + zzjj.B((zzlj) obj, zzluVar);
        }
        int iA = zzjj.a(i10 << 3);
        int iA2 = ((zzkp) obj).a();
        return iA + zzjj.a(iA2) + iA2;
    }

    static int R(int i10, List list, zzlu zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD = zzjj.D(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            iD += obj instanceof zzkp ? zzjj.A((zzkp) obj) : zzjj.B((zzlj) obj, zzluVar);
        }
        return iD;
    }

    static int S(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return T(list) + (size * zzjj.D(i10));
    }

    static int T(List list) {
        int iA;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iA = 0;
            while (i10 < size) {
                int iG = zzkdVar.g(i10);
                iA += zzjj.a((iG >> 31) ^ (iG + iG));
                i10++;
            }
        } else {
            iA = 0;
            while (i10 < size) {
                int iIntValue = ((Integer) list.get(i10)).intValue();
                iA += zzjj.a((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i10++;
            }
        }
        return iA;
    }

    static int U(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return V(list) + (size * zzjj.D(i10));
    }

    static int V(List list) {
        int iB;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            iB = 0;
            while (i10 < size) {
                long jH = zzkyVar.h(i10);
                iB += zzjj.b((jH >> 63) ^ (jH + jH));
                i10++;
            }
        } else {
            iB = 0;
            while (i10 < size) {
                long jLongValue = ((Long) list.get(i10)).longValue();
                iB += zzjj.b((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i10++;
            }
        }
        return iB;
    }

    static int W(int i10, List list) {
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iD = zzjj.D(i10) * size;
        if (list instanceof zzkr) {
            zzkr zzkrVar = (zzkr) list;
            while (i11 < size) {
                Object objG = zzkrVar.G(i11);
                iD += objG instanceof zzjb ? zzjj.x((zzjb) objG) : zzjj.C((String) objG);
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iD += obj instanceof zzjb ? zzjj.x((zzjb) obj) : zzjj.C((String) obj);
                i11++;
            }
        }
        return iD;
    }

    static int X(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return Y(list) + (size * zzjj.D(i10));
    }

    static int Y(List list) {
        int iA;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            iA = 0;
            while (i10 < size) {
                iA += zzjj.a(zzkdVar.g(i10));
                i10++;
            }
        } else {
            iA = 0;
            while (i10 < size) {
                iA += zzjj.a(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iA;
    }

    static int Z(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return a0(list) + (size * zzjj.D(i10));
    }

    public static zzml a() {
        return f23736c;
    }

    static int a0(List list) {
        int iB;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            iB = 0;
            while (i10 < size) {
                iB += zzjj.b(zzkyVar.h(i10));
                i10++;
            }
        } else {
            iB = 0;
            while (i10 < size) {
                iB += zzjj.b(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iB;
    }

    public static zzml b() {
        return f23737d;
    }

    public static zzml b0() {
        return f23735b;
    }

    static Object c(int i10, List list, zzkg zzkgVar, Object obj, zzml zzmlVar) {
        if (zzkgVar == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = ((Integer) list.get(i12)).intValue();
                if (zzkgVar.h(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    obj = d(i10, iIntValue, obj, zzmlVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzkgVar.h(iIntValue2)) {
                    obj = d(i10, iIntValue2, obj, zzmlVar);
                    it.remove();
                }
            }
        }
        return obj;
    }

    static Object d(int i10, int i11, Object obj, zzml zzmlVar) {
        if (obj == null) {
            obj = zzmlVar.e();
        }
        zzmlVar.f(obj, i10, i11);
        return obj;
    }

    static void e(zzjp zzjpVar, Object obj, Object obj2) {
        zzjpVar.a(obj2);
        throw null;
    }

    static void f(zzml zzmlVar, Object obj, Object obj2) {
        zzmlVar.h(obj, zzmlVar.d(zzmlVar.c(obj), zzmlVar.c(obj2)));
    }

    public static void g(Class cls) {
        Class cls2;
        if (!zzkc.class.isAssignableFrom(cls) && (cls2 = f23734a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void h(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.b(i10, list, z10);
    }

    public static void i(int i10, List list, zznd zzndVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.i(i10, list);
    }

    public static void j(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.f(i10, list, z10);
    }

    public static void k(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.d(i10, list, z10);
    }

    public static void l(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.c(i10, list, z10);
    }

    public static void m(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.e(i10, list, z10);
    }

    public static void n(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.D(i10, list, z10);
    }

    public static void o(int i10, List list, zznd zzndVar, zzlu zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((zzjk) zzndVar).F(i10, list.get(i11), zzluVar);
        }
    }

    public static void p(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.s(i10, list, z10);
    }

    public static void q(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.z(i10, list, z10);
    }

    public static void r(int i10, List list, zznd zzndVar, zzlu zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            ((zzjk) zzndVar).j(i10, list.get(i11), zzluVar);
        }
    }

    public static void s(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.B(i10, list, z10);
    }

    public static void t(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.g(i10, list, z10);
    }

    public static void u(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.y(i10, list, z10);
    }

    public static void v(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.E(i10, list, z10);
    }

    public static void w(int i10, List list, zznd zzndVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.u(i10, list);
    }

    public static void x(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.r(i10, list, z10);
    }

    public static void y(int i10, List list, zznd zzndVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzndVar.A(i10, list, z10);
    }

    static boolean z(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
