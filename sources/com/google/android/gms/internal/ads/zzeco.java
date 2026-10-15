package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeco implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcph f16253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzebv f16254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfuu f16255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzcuq f16256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ScheduledExecutorService f16257e;

    public zzeco(zzcph zzcphVar, zzebv zzebvVar, zzcuq zzcuqVar, ScheduledExecutorService scheduledExecutorService, zzfuu zzfuuVar) {
        this.f16253a = zzcphVar;
        this.f16254b = zzebvVar;
        this.f16256d = zzcuqVar;
        this.f16257e = scheduledExecutorService;
        this.f16255c = zzfuuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        return zzeyoVar.f17702a.f17696a.a() != null && this.f16254b.a(zzeyoVar, zzeycVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        return this.f16255c.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzecl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16246a.c(zzeyoVar, zzeycVar);
            }
        });
    }

    final /* synthetic */ zzcok c(final zzeyo zzeyoVar, final zzeyc zzeycVar) throws Exception {
        return this.f16253a.b(new zzcrb(zzeyoVar, zzeycVar, null), new zzcpu(zzeyoVar.f17702a.f17696a.a(), new Runnable() { // from class: com.google.android.gms.internal.ads.zzecm
            @Override // java.lang.Runnable
            public final void run() {
                this.f16249o.f(zzeyoVar, zzeycVar);
            }
        })).zza();
    }

    final /* synthetic */ void f(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzfuj.q(zzfuj.n(this.f16254b.b(zzeyoVar, zzeycVar), zzeycVar.S, TimeUnit.SECONDS, this.f16257e), new zzecn(this), this.f16255c);
    }
}
