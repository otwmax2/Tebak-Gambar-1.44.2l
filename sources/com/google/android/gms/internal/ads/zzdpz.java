package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpz implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15376c;

    public zzdpz(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15374a = zzdpvVar;
        this.f15375b = zzgxlVar;
        this.f15376c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15375b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setD = zzdpv.d(zzdqfVar, zzfuuVar);
        zzgxg.b(setD);
        return setD;
    }
}
