package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwu implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15841b;

    public zzdwu(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15840a = zzgxlVar;
        this.f15841b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdwt zzb() {
        return new zzdwt(((zzcgj) this.f15840a).a(), (ScheduledExecutorService) this.f15841b.zzb());
    }
}
