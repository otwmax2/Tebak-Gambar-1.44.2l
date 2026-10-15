package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbbu implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f10487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f10488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f10489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f10490d;

    public zzbbu(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f10487a = zzgxlVar;
        this.f10488b = zzgxlVar2;
        this.f10489c = zzgxlVar3;
        this.f10490d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* synthetic */ Object zzb() {
        return new zzbbt(((zzcgj) this.f10487a).a(), (ScheduledExecutorService) this.f10488b.zzb(), new zzbbv(), (zzfen) this.f10490d.zzb(), null);
    }
}
