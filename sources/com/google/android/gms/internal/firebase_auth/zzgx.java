package com.google.android.gms.internal.firebase_auth;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgx implements Comparator<zzgv> {
    zzgx() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzgv zzgvVar, zzgv zzgvVar2) {
        zzgv zzgvVar3 = zzgvVar;
        zzgv zzgvVar4 = zzgvVar2;
        zzha zzhaVar = (zzha) zzgvVar3.iterator();
        zzha zzhaVar2 = (zzha) zzgvVar4.iterator();
        while (zzhaVar.hasNext() && zzhaVar2.hasNext()) {
            int iCompare = Integer.compare(zzgv.p(zzhaVar.zza()), zzgv.p(zzhaVar2.zza()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzgvVar3.g(), zzgvVar4.g());
    }
}
