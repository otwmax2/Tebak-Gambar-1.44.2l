package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpy implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15373c;

    public zzdpy(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15371a = zzdpvVar;
        this.f15372b = zzgxlVar;
        this.f15373c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15372b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setC = zzdpv.c(zzdqfVar, zzfuuVar);
        zzgxg.b(setC);
        return setC;
    }
}
