package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeen implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f16450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f16451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f16452f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f16453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f16454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f16455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f16456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzgxl f16457k;

    public zzeen(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7, zzgxl zzgxlVar8, zzgxl zzgxlVar9, zzgxl zzgxlVar10, zzgxl zzgxlVar11) {
        this.f16447a = zzgxlVar;
        this.f16448b = zzgxlVar2;
        this.f16449c = zzgxlVar3;
        this.f16450d = zzgxlVar4;
        this.f16451e = zzgxlVar5;
        this.f16452f = zzgxlVar6;
        this.f16453g = zzgxlVar7;
        this.f16454h = zzgxlVar8;
        this.f16455i = zzgxlVar9;
        this.f16456j = zzgxlVar10;
        this.f16457k = zzgxlVar11;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzeem zzb() {
        Context contextA = ((zzcgj) this.f16447a).a();
        zzfda zzfdaVar = (zzfda) this.f16448b.zzb();
        zzeeh zzeehVar = (zzeeh) this.f16449c.zzb();
        zzcuq zzcuqVar = (zzcuq) this.f16450d.zzb();
        zzffb zzffbVar = (zzffb) this.f16451e.zzb();
        zzfff zzfffVar = (zzfff) this.f16452f.zzb();
        zzcqp zzcqpVar = (zzcqp) this.f16453g.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeem(contextA, zzfdaVar, zzeehVar, zzcuqVar, zzffbVar, zzfffVar, zzcqpVar, zzfuuVar, (ScheduledExecutorService) this.f16455i.zzb(), (zzeay) this.f16456j.zzb(), (zzfen) this.f16457k.zzb());
    }
}
