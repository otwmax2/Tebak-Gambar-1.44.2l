package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqc implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15385c;

    public zzdqc(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15383a = zzdpvVar;
        this.f15384b = zzgxlVar;
        this.f15385c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15384b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setG = zzdpv.g(zzdqfVar, zzfuuVar);
        zzgxg.b(setG);
        return setG;
    }
}
