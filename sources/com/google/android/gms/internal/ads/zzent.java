package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzent implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzepn f17018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f17019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f17020c;

    public zzent(zzepn zzepnVar, long j10, ScheduledExecutorService scheduledExecutorService) {
        this.f17018a = zzepnVar;
        this.f17019b = j10;
        this.f17020c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return this.f17018a.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        zzfut zzfutVarZzb = this.f17018a.zzb();
        long j10 = this.f17019b;
        if (j10 > 0) {
            zzfutVarZzb = zzfuj.n(zzfutVarZzb, j10, TimeUnit.MILLISECONDS, this.f17020c);
        }
        return zzfuj.f(zzfutVarZzb, Throwable.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzens
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(null);
            }
        }, zzbzn.f11619f);
    }
}
