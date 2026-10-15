package ca;

import t9.m;
import y9.i;
import y9.l;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long d(long j10, int i10) {
        return a.i((j10 << 1) + ((long) i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long e(long j10) {
        return a.i((j10 << 1) + 1);
    }

    private static final long f(long j10) {
        return a.i(j10 << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long g(long j10) {
        return j10 * ((long) 1000000);
    }

    public static final long h(int i10, d dVar) {
        m.e(dVar, "unit");
        return dVar.compareTo(d.SECONDS) <= 0 ? f(e.b(i10, dVar, d.NANOSECONDS)) : i(i10, dVar);
    }

    public static final long i(long j10, d dVar) {
        m.e(dVar, "unit");
        d dVar2 = d.NANOSECONDS;
        long jB = e.b(4611686018426999999L, dVar2, dVar);
        return new i(-jB, jB).j(j10) ? f(e.b(j10, dVar, dVar2)) : e(l.f(e.a(j10, dVar, d.MILLISECONDS), -4611686018427387903L, 4611686018427387903L));
    }
}
