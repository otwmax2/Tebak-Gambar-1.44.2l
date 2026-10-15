package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecp implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f16261d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f16262e;

    public zzecp(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5) {
        this.f16258a = zzgxlVar;
        this.f16259b = zzgxlVar2;
        this.f16260c = zzgxlVar3;
        this.f16261d = zzgxlVar4;
        this.f16262e = zzgxlVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzeco zzb() {
        zzcph zzcphVar = (zzcph) this.f16258a.zzb();
        zzebv zzebvVarZzb = ((zzebw) this.f16259b).zzb();
        zzcuq zzcuqVar = (zzcuq) this.f16260c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f16261d.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeco(zzcphVar, zzebvVarZzb, zzcuqVar, scheduledExecutorService, zzfuuVar);
    }
}
