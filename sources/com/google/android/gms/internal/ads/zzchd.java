package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzchd implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f12163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f12164b;

    public zzchd(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f12163a = zzgxlVar;
        this.f12164b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzbty zzb() {
        Context contextA = ((zzcgj) this.f12163a).a();
        zzfep zzfepVar = (zzfep) this.f12164b.zzb();
        zzbmf zzbmfVarB = com.google.android.gms.ads.internal.zzt.h().b(contextA, zzbzg.V3(), zzfepVar);
        zzblz zzblzVar = zzbmc.f10946b;
        zzbmfVarB.a("google.afma.request.getAdDictionary", zzblzVar, zzblzVar);
        return new zzbtx(contextA, com.google.android.gms.ads.internal.zzt.h().b(contextA, zzbzg.V3(), zzfepVar).a("google.afma.sdkConstants.getSdkConstants", zzblzVar, zzblzVar));
    }
}
