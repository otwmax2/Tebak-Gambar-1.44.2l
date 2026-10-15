package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzld extends zzla {
    private zzld() {
        super();
    }

    private static <E> zzkp<E> e(Object obj, long j10) {
        return (zzkp) zznd.G(obj, j10);
    }

    @Override // com.google.android.gms.internal.drive.zzla
    final void a(Object obj, long j10) {
        e(obj, j10).C2();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.drive.zzkp, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.drive.zzla
    final <E> void b(Object obj, Object obj2, long j10) {
        zzkp zzkpVarE = e(obj, j10);
        ?? E = e(obj2, j10);
        int size = zzkpVarE.size();
        int size2 = E.size();
        ?? r02 = zzkpVarE;
        r02 = zzkpVarE;
        if (size > 0 && size2 > 0) {
            boolean zX0 = zzkpVarE.X0();
            ?? X2 = zzkpVarE;
            if (!zX0) {
                X2 = zzkpVarE.x2(size2 + size);
            }
            X2.addAll(E);
            r02 = X2;
        }
        if (size > 0) {
            E = r02;
        }
        zznd.g(obj, j10, E);
    }
}
