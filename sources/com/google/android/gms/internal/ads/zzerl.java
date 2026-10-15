package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerl implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f17257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f17258f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f17259g;

    public zzerl(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7) {
        this.f17253a = zzgxlVar;
        this.f17254b = zzgxlVar2;
        this.f17255c = zzgxlVar3;
        this.f17256d = zzgxlVar4;
        this.f17257e = zzgxlVar5;
        this.f17258f = zzgxlVar6;
        this.f17259g = zzgxlVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbya zzbyaVar = new zzbya();
        int iIntValue = ((zzesj) this.f17254b).zzb().intValue();
        Context contextA = ((zzcgj) this.f17255c).a();
        zzbyj zzbyjVar = (zzbyj) this.f17256d.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f17257e.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzerj(zzbyaVar, iIntValue, contextA, zzbyjVar, scheduledExecutorService, zzfuuVar, ((zzesi) this.f17259g).a(), null);
    }
}
