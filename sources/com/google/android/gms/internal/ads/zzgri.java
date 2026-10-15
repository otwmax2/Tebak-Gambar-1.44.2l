package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgri extends zzgrk {
    private zzgri() {
        super(null);
    }

    /* synthetic */ zzgri(zzgrh zzgrhVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgrk
    final List a(Object obj, long j10) {
        zzgqv zzgqvVar = (zzgqv) zzgtq.p(obj, j10);
        if (zzgqvVar.a()) {
            return zzgqvVar;
        }
        int size = zzgqvVar.size();
        zzgqv zzgqvVarK = zzgqvVar.K(size == 0 ? 10 : size + size);
        zzgtq.D(obj, j10, zzgqvVarK);
        return zzgqvVarK;
    }

    @Override // com.google.android.gms.internal.ads.zzgrk
    final void b(Object obj, long j10) {
        ((zzgqv) zzgtq.p(obj, j10)).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzgrk
    final void c(Object obj, Object obj2, long j10) {
        zzgqv zzgqvVarK = (zzgqv) zzgtq.p(obj, j10);
        zzgqv zzgqvVar = (zzgqv) zzgtq.p(obj2, j10);
        int size = zzgqvVarK.size();
        int size2 = zzgqvVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzgqvVarK.a()) {
                zzgqvVarK = zzgqvVarK.K(size2 + size);
            }
            zzgqvVarK.addAll(zzgqvVar);
        }
        if (size > 0) {
            zzgqvVar = zzgqvVarK;
        }
        zzgtq.D(obj, j10, zzgqvVar);
    }
}
