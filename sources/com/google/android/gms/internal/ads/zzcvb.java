package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcvb extends zzczy implements zzcus {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ScheduledExecutorService f14095p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ScheduledFuture f14096q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f14097r;

    public zzcvb(zzcva zzcvaVar, Set set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.f14097r = false;
        this.f14095p = scheduledExecutorService;
        L0(zzcvaVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void C(final zzded zzdedVar) {
        if (this.f14097r) {
            return;
        }
        ScheduledFuture scheduledFuture = this.f14096q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcut
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzcus) obj).C(zzdedVar);
            }
        });
    }

    public final synchronized void b() {
        ScheduledFuture scheduledFuture = this.f14096q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    public final void c() {
        this.f14096q = this.f14095p.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcuv
            @Override // java.lang.Runnable
            public final void run() {
                this.f14089o.d();
            }
        }, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10190c9)).intValue(), TimeUnit.MILLISECONDS);
    }

    final /* synthetic */ void d() {
        synchronized (this) {
            zzbza.d("Timeout waiting for show call succeed to be called.");
            C(new zzded("Timeout for show call succeed."));
            this.f14097r = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void v(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcuu
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzcus) obj).v(zzeVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcus
    public final void zzb() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcuw
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzcus) obj).zzb();
            }
        });
    }
}
