package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdqd implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpv f15386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15388c;

    public zzdqd(zzdpv zzdpvVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15386a = zzdpvVar;
        this.f15387b = zzgxlVar;
        this.f15388c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdqf zzdqfVar = (zzdqf) this.f15387b.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setH = zzdpv.h(zzdqfVar, zzfuuVar);
        zzgxg.b(setH);
        return setH;
    }
}
