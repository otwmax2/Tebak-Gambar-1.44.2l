package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfd extends zzfe {
    private zzfd() {
        super(null);
    }

    /* synthetic */ zzfd(zzfb zzfbVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.auth.zzfe
    final void a(Object obj, long j10) {
        ((zzeu) zzgz.f(obj, j10)).zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.gms.internal.auth.zzeu, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4 */
    @Override // com.google.android.gms.internal.auth.zzfe
    final <E> void b(Object obj, Object obj2, long j10) {
        zzeu zzeuVar = (zzeu) zzgz.f(obj, j10);
        ?? r62 = (zzeu) zzgz.f(obj2, j10);
        int size = zzeuVar.size();
        int size2 = r62.size();
        ?? r02 = zzeuVar;
        r02 = zzeuVar;
        if (size > 0 && size2 > 0) {
            boolean zA = zzeuVar.a();
            ?? K = zzeuVar;
            if (!zA) {
                K = zzeuVar.K(size2 + size);
            }
            K.addAll(r62);
            r02 = K;
        }
        if (size > 0) {
            r62 = r02;
        }
        zzgz.p(obj, j10, r62);
    }
}
