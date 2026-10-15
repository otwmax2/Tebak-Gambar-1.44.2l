package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzctm implements zzcuo, zzdbl, zzczg, zzcve, zzatf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcvg f13972o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzeyc f13973p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ScheduledExecutorService f13974q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Executor f13975r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ScheduledFuture f13977t;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzfvc f13976s = zzfvc.D();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final AtomicBoolean f13978u = new AtomicBoolean();

    zzctm(zzcvg zzcvgVar, zzeyc zzeycVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f13972o = zzcvgVar;
        this.f13973p = zzeycVar;
        this.f13974q = scheduledExecutorService;
        this.f13975r = executor;
    }

    private final boolean i() {
        return this.f13973p.Z == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void H0(zzate zzateVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C9)).booleanValue() && !i() && zzateVar.f9886j && this.f13978u.compareAndSet(false, true)) {
            com.google.android.gms.ads.internal.util.zze.k("Full screen 1px impression occurred");
            this.f13972o.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
    }

    @Override // com.google.android.gms.internal.ads.zzcve
    public final synchronized void W0(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.f13976s.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.f13977t;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.f13976s.i(new Exception());
    }

    @Override // com.google.android.gms.internal.ads.zzczg
    public final synchronized void b() {
        if (this.f13976s.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.f13977t;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.f13976s.h(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzdbl
    public final void c() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10325p1)).booleanValue() && i()) {
            if (this.f13973p.f17665r == 0) {
                this.f13972o.zza();
            } else {
                zzfuj.q(this.f13976s, new zzctl(this), this.f13975r);
                this.f13977t = this.f13974q.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzctk
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13970o.f();
                    }
                }, this.f13973p.f17665r, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczg
    public final void d() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C9)).booleanValue() || i()) {
            return;
        }
        this.f13972o.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdbl
    public final void e() {
    }

    final /* synthetic */ void f() {
        synchronized (this) {
            if (this.f13976s.isDone()) {
                return;
            }
            this.f13976s.h(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
        int i10 = this.f13973p.Z;
        if (i10 == 0 || i10 == 1) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C9)).booleanValue()) {
                return;
            }
            this.f13972o.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void n(zzbud zzbudVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
    }
}
