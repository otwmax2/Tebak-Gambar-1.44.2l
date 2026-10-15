package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqe implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f17205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f17206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f17207g;

    public zzeqe(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7) {
        this.f17201a = zzgxlVar;
        this.f17202b = zzgxlVar2;
        this.f17203c = zzgxlVar3;
        this.f17204d = zzgxlVar4;
        this.f17205e = zzgxlVar5;
        this.f17206f = zzgxlVar6;
        this.f17207g = zzgxlVar7;
    }

    public static zzeqc a(zzbya zzbyaVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i10, boolean z10, boolean z11) {
        return new zzeqc(zzbyaVar, context, scheduledExecutorService, executor, i10, z10, z11, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbya zzbyaVar = new zzbya();
        Context contextA = ((zzcgj) this.f17202b).a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f17203c.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeqc(zzbyaVar, contextA, scheduledExecutorService, zzfuuVar, ((zzesj) this.f17205e).zzb().intValue(), ((zzesk) this.f17206f).zzb().booleanValue(), ((zzesm) this.f17207g).zzb().booleanValue(), null);
    }
}
