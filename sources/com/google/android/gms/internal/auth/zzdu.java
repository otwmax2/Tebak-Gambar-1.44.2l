package com.google.android.gms.internal.auth;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdu implements Comparator<zzeb> {
    zzdu() {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzeb zzebVar, zzeb zzebVar2) {
        zzeb zzebVar3 = zzebVar;
        zzeb zzebVar4 = zzebVar2;
        zzds zzdsVar = new zzds(zzebVar3);
        zzds zzdsVar2 = new zzds(zzebVar4);
        while (zzdsVar.hasNext() && zzdsVar2.hasNext()) {
            int iA = zzdt.a(zzdsVar.zza() & 255, zzdsVar2.zza() & 255);
            if (iA != 0) {
                return iA;
            }
        }
        return zzdt.a(zzebVar3.i(), zzebVar4.i());
    }
}
