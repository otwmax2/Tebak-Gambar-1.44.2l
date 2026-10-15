package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzctn implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f13982d;

    public zzctn(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f13979a = zzgxlVar;
        this.f13980b = zzgxlVar2;
        this.f13981c = zzgxlVar3;
        this.f13982d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcvg zzcvgVar = (zzcvg) this.f13979a.zzb();
        zzeyc zzeycVarA = ((zzcrc) this.f13980b).a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f13981c.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzctm(zzcvgVar, zzeycVarA, scheduledExecutorService, zzfuuVar);
    }
}
