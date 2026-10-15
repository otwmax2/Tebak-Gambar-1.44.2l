package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzduk implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f15698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f15699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f15700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f15701g;

    public zzduk(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7) {
        this.f15695a = zzgxlVar;
        this.f15696b = zzgxlVar2;
        this.f15697c = zzgxlVar3;
        this.f15698d = zzgxlVar4;
        this.f15699e = zzgxlVar5;
        this.f15700f = zzgxlVar6;
        this.f15701g = zzgxlVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f15695a).a();
        zzeyx zzeyxVarA = ((zzcuf) this.f15696b).a();
        zzdtj zzdtjVarZzb = ((zzdtk) this.f15697c).zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzduj(contextA, zzeyxVarA, zzdtjVarZzb, zzfuuVar, (ScheduledExecutorService) this.f15699e.zzb(), (zzdzf) this.f15700f.zzb(), (zzfen) this.f15701g.zzb());
    }
}
