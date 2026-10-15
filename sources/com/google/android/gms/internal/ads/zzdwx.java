package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwx implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15845b;

    public zzdwx(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15844a = zzgxlVar;
        this.f15845b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdww zzb() {
        return new zzdww(((zzcgj) this.f15844a).a(), (ScheduledExecutorService) this.f15845b.zzb());
    }
}
