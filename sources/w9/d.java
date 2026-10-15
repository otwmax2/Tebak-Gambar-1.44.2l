package w9;

import t9.m;
import y9.f;

/* JADX INFO: compiled from: Random.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public static final String a(Object obj, Object obj2) {
        m.e(obj, "from");
        m.e(obj2, "until");
        return "Random range is empty: [" + obj + ", " + obj2 + ").";
    }

    public static final void b(int i10, int i11) {
        if (!(i11 > i10)) {
            throw new IllegalArgumentException(a(Integer.valueOf(i10), Integer.valueOf(i11)).toString());
        }
    }

    public static final int c(int i10) {
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    public static final int d(c cVar, f fVar) {
        m.e(cVar, "<this>");
        m.e(fVar, "range");
        if (!fVar.isEmpty()) {
            return fVar.g() < Integer.MAX_VALUE ? cVar.e(fVar.c(), fVar.g() + 1) : fVar.c() > Integer.MIN_VALUE ? cVar.e(fVar.c() - 1, fVar.g()) + 1 : cVar.c();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + fVar);
    }

    public static final int e(int i10, int i11) {
        return (i10 >>> (32 - i11)) & ((-i11) >> 31);
    }
}
