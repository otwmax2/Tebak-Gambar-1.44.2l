package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeku implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f16858d;

    public zzeku(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f16855a = zzgxlVar;
        this.f16856b = zzgxlVar2;
        this.f16857c = zzgxlVar3;
        this.f16858d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f16855a).a();
        zzbyj zzbyjVar = (zzbyj) this.f16856b.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f16857c.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeks(contextA, zzbyjVar, scheduledExecutorService, zzfuuVar);
    }
}
