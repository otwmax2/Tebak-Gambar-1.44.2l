package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpm implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15339c;

    public zzdpm(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f15337a = zzgxlVar;
        this.f15338b = zzgxlVar2;
        this.f15339c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdpl((zzdpd) this.f15337a.zzb(), ((zzgxj) this.f15338b).zzb(), (Clock) this.f15339c.zzb());
    }
}
