package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdsk implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f15580d;

    public zzdsk(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f15577a = zzgxlVar;
        this.f15578b = zzgxlVar2;
        this.f15579c = zzgxlVar3;
        this.f15580d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f15577a).a();
        zzdsn zzdsnVar = (zzdsn) this.f15578b.zzb();
        zzdta zzdtaVar = new zzdta();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzdsz(contextA, zzdsnVar, zzdtaVar, zzfuuVar);
    }
}
