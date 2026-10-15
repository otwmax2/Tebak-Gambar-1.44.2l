package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelw implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16933b;

    public zzelw(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f16932a = zzgxlVar;
        this.f16933b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfqp zzfqpVarS;
        zzelm zzelmVarA = zzelo.a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f16933b.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C3)).booleanValue()) {
            zzfqpVarS = zzfqp.t(new zzent(zzelmVarA, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D3)).intValue(), scheduledExecutorService));
        } else {
            zzfqpVarS = zzfqp.s();
        }
        zzgxg.b(zzfqpVarS);
        return zzfqpVarS;
    }
}
