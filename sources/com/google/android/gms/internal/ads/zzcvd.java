package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcvd implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f14102d;

    public zzcvd(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f14099a = zzgxlVar;
        this.f14100b = zzgxlVar2;
        this.f14101c = zzgxlVar3;
        this.f14102d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcva zzcvaVarZzb = ((zzcvc) this.f14099a).zzb();
        Set setZzb = ((zzgxj) this.f14100b).zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzcvb(zzcvaVarZzb, setZzb, zzfuuVar, (ScheduledExecutorService) this.f14102d.zzb());
    }
}
