package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqa implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15379c;

    public zzdqa(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15377a = zzdpvVar;
        this.f15378b = zzgxlVar;
        this.f15379c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15378b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setE = zzdpv.e(zzdqfVar, zzfuuVar);
        zzgxg.b(setE);
        return setE;
    }
}
