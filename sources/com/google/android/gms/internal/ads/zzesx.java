package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesx implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f17322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f17323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f17324g;

    public zzesx(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7) {
        this.f17318a = zzgxlVar;
        this.f17319b = zzgxlVar2;
        this.f17320c = zzgxlVar3;
        this.f17321d = zzgxlVar4;
        this.f17322e = zzgxlVar5;
        this.f17323f = zzgxlVar6;
        this.f17324g = zzgxlVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbyj zzbyjVar = (zzbyj) this.f17318a.zzb();
        boolean zBooleanValue = ((zzesl) this.f17319b).zzb().booleanValue();
        boolean zBooleanValue2 = ((zzesm) this.f17320c).zzb().booleanValue();
        zzbxy zzbxyVar = new zzbxy();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzesv(zzbyjVar, zBooleanValue, zBooleanValue2, zzbxyVar, zzfuuVar, ((zzesi) this.f17323f).a(), (ScheduledExecutorService) this.f17324g.zzb(), null);
    }
}
