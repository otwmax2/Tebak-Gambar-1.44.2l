package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesg implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17297c;

    public zzesg(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f17295a = zzgxlVar;
        this.f17296b = zzgxlVar2;
        this.f17297c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzese(new zzbrg(), (ScheduledExecutorService) this.f17296b.zzb(), ((zzcgj) this.f17297c).a(), null);
    }
}
