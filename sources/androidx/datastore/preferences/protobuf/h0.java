package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: ListFieldSchema.java */
/* JADX INFO: loaded from: classes.dex */
abstract class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final h0 f2716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final h0 f2717b;

    /* JADX INFO: compiled from: ListFieldSchema.java */
    private static final class b extends h0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Class<?> f2718c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static <E> List<E> f(Object obj, long j10) {
            return (List) r1.A(obj, j10);
        }

        private static <L> List<L> g(Object obj, long j10, int i10) {
            Object obj2;
            List<L> listF = f(obj, j10);
            if (listF.isEmpty()) {
                List<L> f0Var = listF instanceof g0 ? new f0(i10) : ((listF instanceof a1) && (listF instanceof a0.i)) ? ((a0.i) listF).B0(i10) : new ArrayList<>(i10);
                r1.O(obj, j10, f0Var);
                return f0Var;
            }
            if (f2718c.isAssignableFrom(listF.getClass())) {
                ArrayList arrayList = new ArrayList(listF.size() + i10);
                arrayList.addAll(listF);
                r1.O(obj, j10, arrayList);
                obj2 = arrayList;
            } else {
                if (!(listF instanceof q1)) {
                    if (!(listF instanceof a1) || !(listF instanceof a0.i)) {
                        return listF;
                    }
                    a0.i iVar = (a0.i) listF;
                    if (iVar.O3()) {
                        return listF;
                    }
                    a0.i iVarB0 = iVar.B0(listF.size() + i10);
                    r1.O(obj, j10, iVarB0);
                    return iVarB0;
                }
                f0 f0Var2 = new f0(listF.size() + i10);
                f0Var2.addAll((q1) listF);
                r1.O(obj, j10, f0Var2);
                obj2 = f0Var2;
            }
            return (List<L>) obj2;
        }

        @Override // androidx.datastore.preferences.protobuf.h0
        void c(Object obj, long j10) {
            Object objUnmodifiableList;
            List list = (List) r1.A(obj, j10);
            if (list instanceof g0) {
                objUnmodifiableList = ((g0) list).a3();
            } else {
                if (f2718c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof a1) && (list instanceof a0.i)) {
                    a0.i iVar = (a0.i) list;
                    if (iVar.O3()) {
                        iVar.p0();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            r1.O(obj, j10, objUnmodifiableList);
        }

        @Override // androidx.datastore.preferences.protobuf.h0
        <E> void d(Object obj, Object obj2, long j10) {
            List listF = f(obj2, j10);
            List listG = g(obj, j10, listF.size());
            int size = listG.size();
            int size2 = listF.size();
            if (size > 0 && size2 > 0) {
                listG.addAll(listF);
            }
            if (size > 0) {
                listF = listG;
            }
            r1.O(obj, j10, listF);
        }

        @Override // androidx.datastore.preferences.protobuf.h0
        <L> List<L> e(Object obj, long j10) {
            return g(obj, j10, 10);
        }
    }

    /* JADX INFO: compiled from: ListFieldSchema.java */
    private static final class c extends h0 {
        private c() {
            super();
        }

        static <E> a0.i<E> f(Object obj, long j10) {
            return (a0.i) r1.A(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.h0
        void c(Object obj, long j10) {
            f(obj, j10).p0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r6v1, types: [androidx.datastore.preferences.protobuf.a0$i, java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v3 */
        @Override // androidx.datastore.preferences.protobuf.h0
        <E> void d(Object obj, Object obj2, long j10) {
            a0.i iVarF = f(obj, j10);
            ?? F = f(obj2, j10);
            int size = iVarF.size();
            int size2 = F.size();
            ?? r02 = iVarF;
            r02 = iVarF;
            if (size > 0 && size2 > 0) {
                boolean zO3 = iVarF.O3();
                ?? B0 = iVarF;
                if (!zO3) {
                    B0 = iVarF.B0(size2 + size);
                }
                B0.addAll(F);
                r02 = B0;
            }
            if (size > 0) {
                F = r02;
            }
            r1.O(obj, j10, F);
        }

        @Override // androidx.datastore.preferences.protobuf.h0
        <L> List<L> e(Object obj, long j10) {
            a0.i iVarF = f(obj, j10);
            if (iVarF.O3()) {
                return iVarF;
            }
            int size = iVarF.size();
            a0.i iVarB0 = iVarF.B0(size == 0 ? 10 : size * 2);
            r1.O(obj, j10, iVarB0);
            return iVarB0;
        }
    }

    static {
        f2716a = new b();
        f2717b = new c();
    }

    static h0 a() {
        return f2716a;
    }

    static h0 b() {
        return f2717b;
    }

    abstract void c(Object obj, long j10);

    abstract <L> void d(Object obj, Object obj2, long j10);

    abstract <L> List<L> e(Object obj, long j10);

    private h0() {
    }
}
