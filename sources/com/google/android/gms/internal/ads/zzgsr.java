package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class f19592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgtg f19593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgtg f19594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgtg f19595d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f19592a = cls;
        f19593b = C(false);
        f19594c = C(true);
        f19595d = new zzgti();
    }

    static int A(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgpt.f(i10 << 3) + 1);
    }

    public static void B(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.k(i10, list, z10);
    }

    private static zzgtg C(boolean z10) {
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
            return (zzgtg) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
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
        int iE = size * zzgpt.e(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iE += zzgpt.E((zzgpe) list.get(i11));
        }
        return iE;
    }

    static int F(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return G(list) + (size * zzgpt.e(i10));
    }

    static int G(List list) {
        int iG;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgqn) {
            zzgqn zzgqnVar = (zzgqn) list;
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.G(zzgqnVar.g(i10));
                i10++;
            }
        } else {
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.G(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iG;
    }

    static int H(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgpt.f(i10 << 3) + 4);
    }

    static int I(List list) {
        return list.size() * 4;
    }

    static int J(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgpt.f(i10 << 3) + 8);
    }

    static int K(List list) {
        return list.size() * 8;
    }

    static int L(int i10, List list, zzgsp zzgspVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iF = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iF += zzgpt.F(i10, (zzgrw) list.get(i11), zzgspVar);
        }
        return iF;
    }

    static int M(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return N(list) + (size * zzgpt.e(i10));
    }

    static int N(List list) {
        int iG;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgqn) {
            zzgqn zzgqnVar = (zzgqn) list;
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.G(zzgqnVar.g(i10));
                i10++;
            }
        } else {
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.G(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iG;
    }

    static int O(int i10, List list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return P(list) + (list.size() * zzgpt.e(i10));
    }

    static int P(List list) {
        int iG;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgrl) {
            zzgrl zzgrlVar = (zzgrl) list;
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.g(zzgrlVar.g(i10));
                i10++;
            }
        } else {
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.g(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iG;
    }

    static int Q(int i10, Object obj, zzgsp zzgspVar) {
        if (!(obj instanceof zzgrc)) {
            return zzgpt.f(i10 << 3) + zzgpt.b((zzgrw) obj, zzgspVar);
        }
        int i11 = zzgpt.f19428d;
        int iA = ((zzgrc) obj).a();
        return zzgpt.f(i10 << 3) + zzgpt.f(iA) + iA;
    }

    static int R(int i10, List list, zzgsp zzgspVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = zzgpt.e(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            iE += obj instanceof zzgrc ? zzgpt.H((zzgrc) obj) : zzgpt.b((zzgrw) obj, zzgspVar);
        }
        return iE;
    }

    static int S(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return T(list) + (size * zzgpt.e(i10));
    }

    static int T(List list) {
        int iF;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgqn) {
            zzgqn zzgqnVar = (zzgqn) list;
            iF = 0;
            while (i10 < size) {
                int iG = zzgqnVar.g(i10);
                iF += zzgpt.f((iG >> 31) ^ (iG + iG));
                i10++;
            }
        } else {
            iF = 0;
            while (i10 < size) {
                int iIntValue = ((Integer) list.get(i10)).intValue();
                iF += zzgpt.f((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i10++;
            }
        }
        return iF;
    }

    static int U(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return V(list) + (size * zzgpt.e(i10));
    }

    static int V(List list) {
        int iG;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgrl) {
            zzgrl zzgrlVar = (zzgrl) list;
            iG = 0;
            while (i10 < size) {
                long jG = zzgrlVar.g(i10);
                iG += zzgpt.g((jG >> 63) ^ (jG + jG));
                i10++;
            }
        } else {
            iG = 0;
            while (i10 < size) {
                long jLongValue = ((Long) list.get(i10)).longValue();
                iG += zzgpt.g((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i10++;
            }
        }
        return iG;
    }

    static int W(int i10, List list) {
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        boolean z10 = list instanceof zzgre;
        int iE = zzgpt.e(i10) * size;
        if (z10) {
            zzgre zzgreVar = (zzgre) list;
            while (i11 < size) {
                Object objG = zzgreVar.G(i11);
                iE += objG instanceof zzgpe ? zzgpt.E((zzgpe) objG) : zzgpt.d((String) objG);
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iE += obj instanceof zzgpe ? zzgpt.E((zzgpe) obj) : zzgpt.d((String) obj);
                i11++;
            }
        }
        return iE;
    }

    static int X(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return Y(list) + (size * zzgpt.e(i10));
    }

    static int Y(List list) {
        int iF;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgqn) {
            zzgqn zzgqnVar = (zzgqn) list;
            iF = 0;
            while (i10 < size) {
                iF += zzgpt.f(zzgqnVar.g(i10));
                i10++;
            }
        } else {
            iF = 0;
            while (i10 < size) {
                iF += zzgpt.f(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iF;
    }

    static int Z(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return a0(list) + (size * zzgpt.e(i10));
    }

    public static zzgtg a() {
        return f19594c;
    }

    static int a0(List list) {
        int iG;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgrl) {
            zzgrl zzgrlVar = (zzgrl) list;
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.g(zzgrlVar.g(i10));
                i10++;
            }
        } else {
            iG = 0;
            while (i10 < size) {
                iG += zzgpt.g(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iG;
    }

    public static zzgtg b() {
        return f19595d;
    }

    public static zzgtg b0() {
        return f19593b;
    }

    static Object c(Object obj, int i10, List list, zzgqq zzgqqVar, Object obj2, zzgtg zzgtgVar) {
        if (zzgqqVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = ((Integer) list.get(i12)).intValue();
                if (zzgqqVar.h(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    obj2 = d(obj, i10, iIntValue, obj2, zzgtgVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzgqqVar.h(iIntValue2)) {
                    obj2 = d(obj, i10, iIntValue2, obj2, zzgtgVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    static Object d(Object obj, int i10, int i11, Object obj2, zzgtg zzgtgVar) {
        if (obj2 == null) {
            obj2 = zzgtgVar.c(obj);
        }
        zzgtgVar.l(obj2, i10, i11);
        return obj2;
    }

    static void e(zzgpz zzgpzVar, Object obj, Object obj2) {
        zzgpzVar.a(obj2);
        throw null;
    }

    static void f(zzgtg zzgtgVar, Object obj, Object obj2) {
        zzgtgVar.o(obj, zzgtgVar.e(zzgtgVar.d(obj), zzgtgVar.d(obj2)));
    }

    public static void g(Class cls) {
        Class cls2;
        if (!zzgqm.class.isAssignableFrom(cls) && (cls2 = f19592a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean h(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static void i(zzgrr zzgrrVar, Object obj, Object obj2, long j10) {
        zzgtq.D(obj, j10, zzgrr.c(zzgtq.p(obj, j10), zzgtq.p(obj2, j10)));
    }

    public static void j(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.n(i10, list, z10);
    }

    public static void k(int i10, List list, zzgpu zzgpuVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.p(i10, list);
    }

    public static void l(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.r(i10, list, z10);
    }

    public static void m(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.u(i10, list, z10);
    }

    public static void n(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.w(i10, list, z10);
    }

    public static void o(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.y(i10, list, z10);
    }

    public static void p(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.A(i10, list, z10);
    }

    public static void q(int i10, List list, zzgpu zzgpuVar, zzgsp zzgspVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzgpuVar.B(i10, list.get(i11), zzgspVar);
        }
    }

    public static void r(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.D(i10, list, z10);
    }

    public static void s(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.F(i10, list, z10);
    }

    public static void t(int i10, List list, zzgpu zzgpuVar, zzgsp zzgspVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzgpuVar.G(i10, list.get(i11), zzgspVar);
        }
    }

    public static void u(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.I(i10, list, z10);
    }

    public static void v(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.K(i10, list, z10);
    }

    public static void w(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.b(i10, list, z10);
    }

    public static void x(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.d(i10, list, z10);
    }

    public static void y(int i10, List list, zzgpu zzgpuVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.g(i10, list);
    }

    public static void z(int i10, List list, zzgpu zzgpuVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgpuVar.i(i10, list, z10);
    }
}
