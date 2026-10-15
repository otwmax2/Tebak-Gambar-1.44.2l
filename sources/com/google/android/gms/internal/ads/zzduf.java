package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzduf implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f15682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f15683e;

    public zzduf(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5) {
        this.f15679a = zzgxlVar;
        this.f15680b = zzgxlVar2;
        this.f15681c = zzgxlVar3;
        this.f15682d = zzgxlVar4;
        this.f15683e = zzgxlVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdue zzb() {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f15679a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        zzfuu zzfuuVar2 = zzbzn.f11615b;
        zzgxg.b(zzfuuVar2);
        return new zzdue(scheduledExecutorService, zzfuuVar, zzfuuVar2, ((zzduw) this.f15682d).zzb(), zzgwx.a(this.f15683e));
    }
}
