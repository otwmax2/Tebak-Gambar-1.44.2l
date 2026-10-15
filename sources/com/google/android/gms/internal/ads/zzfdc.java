package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdc implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17936c;

    public zzfdc(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f17934a = zzgxlVar;
        this.f17935b = zzgxlVar2;
        this.f17936c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzfda(zzfuuVar, (ScheduledExecutorService) this.f17935b.zzb(), ((zzfdd) this.f17936c).zzb());
    }
}
