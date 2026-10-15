package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzgtg {
    zzgtg() {
    }

    abstract int a(Object obj);

    abstract int b(Object obj);

    abstract Object c(Object obj);

    abstract Object d(Object obj);

    abstract Object e(Object obj, Object obj2);

    abstract Object f();

    abstract Object g(Object obj);

    abstract void h(Object obj, int i10, int i11);

    abstract void i(Object obj, int i10, long j10);

    abstract void j(Object obj, int i10, Object obj2);

    abstract void k(Object obj, int i10, zzgpe zzgpeVar);

    abstract void l(Object obj, int i10, long j10);

    abstract void m(Object obj);

    abstract void n(Object obj, Object obj2);

    abstract void o(Object obj, Object obj2);

    final boolean p(Object obj, zzgsh zzgshVar) throws IOException {
        int iD = zzgshVar.d();
        int i10 = iD >>> 3;
        int i11 = iD & 7;
        if (i11 == 0) {
            l(obj, i10, zzgshVar.j());
            return true;
        }
        if (i11 == 1) {
            i(obj, i10, zzgshVar.i());
            return true;
        }
        if (i11 == 2) {
            k(obj, i10, zzgshVar.n());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw zzgqy.a();
            }
            h(obj, i10, zzgshVar.c());
            return true;
        }
        Object objF = f();
        int i12 = i10 << 3;
        while (zzgshVar.a() != Integer.MAX_VALUE && p(objF, zzgshVar)) {
        }
        if ((4 | i12) != zzgshVar.d()) {
            throw zzgqy.b();
        }
        g(objF);
        j(obj, i10, objF);
        return true;
    }

    abstract boolean q(zzgsh zzgshVar);

    abstract void r(Object obj, zzgpu zzgpuVar) throws IOException;
}
