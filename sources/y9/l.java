package y9;

import java.util.NoSuchElementException;
import t9.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: _Ranges.kt */
/* JADX INFO: loaded from: classes2.dex */
public class l extends k {
    public static int a(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    public static long b(long j10, long j11) {
        return j10 < j11 ? j11 : j10;
    }

    public static int c(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    public static long d(long j10, long j11) {
        return j10 > j11 ? j11 : j10;
    }

    public static int e(int i10, int i11, int i12) {
        if (i11 <= i12) {
            return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    public static long f(long j10, long j11, long j12) {
        if (j11 <= j12) {
            return j10 < j11 ? j11 : j10 > j12 ? j12 : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j12 + " is less than minimum " + j11 + '.');
    }

    public static d g(int i10, int i11) {
        return d.f37133r.a(i10, i11, -1);
    }

    public static int h(f fVar, w9.c cVar) {
        m.e(fVar, "<this>");
        m.e(cVar, "random");
        try {
            return w9.d.d(cVar, fVar);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    public static f i(int i10, int i11) {
        return i11 <= Integer.MIN_VALUE ? f.f37141s.a() : new f(i10, i11 - 1);
    }
}
