package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjc extends zzix {
    private zzjc() {
        super();
    }

    private static <E> zzio<E> e(Object obj, long j10) {
        return (zzio) zzlf.F(obj, j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.firebase_auth.zzio, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.firebase_auth.zzix
    final <E> void b(Object obj, Object obj2, long j10) {
        zzio zzioVarE = e(obj, j10);
        ?? E = e(obj2, j10);
        int size = zzioVarE.size();
        int size2 = E.size();
        ?? r02 = zzioVarE;
        r02 = zzioVarE;
        if (size > 0 && size2 > 0) {
            boolean zZza = zzioVarE.zza();
            ?? H = zzioVarE;
            if (!zZza) {
                H = zzioVarE.h(size2 + size);
            }
            H.addAll(E);
            r02 = H;
        }
        if (size > 0) {
            E = r02;
        }
        zzlf.j(obj, j10, E);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzix
    final void d(Object obj, long j10) {
        e(obj, j10).zzb();
    }
}
