package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcra {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f13797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f13798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfut f13799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f13800d = true;

    public zzcra(Executor executor, ScheduledExecutorService scheduledExecutorService, zzfut zzfutVar) {
        this.f13797a = executor;
        this.f13798b = scheduledExecutorService;
        this.f13799c = zzfutVar;
    }

    static /* bridge */ /* synthetic */ void b(final zzcra zzcraVar, List list, final zzfuf zzfufVar) {
        if (list == null || list.isEmpty()) {
            zzcraVar.f13797a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqu
                @Override // java.lang.Runnable
                public final void run() {
                    zzfufVar.a(new zzdtf(3));
                }
            });
            return;
        }
        zzfut zzfutVarH = zzfuj.h(null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final zzfut zzfutVar = (zzfut) it.next();
            zzfutVarH = zzfuj.m(zzfuj.f(zzfutVarH, Throwable.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzcqv
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    zzfufVar.a((Throwable) obj);
                    return zzfuj.h(null);
                }
            }, zzcraVar.f13797a), new zzftq() { // from class: com.google.android.gms.internal.ads.zzcqw
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return this.f13786a.a(zzfufVar, zzfutVar, (zzcqm) obj);
                }
            }, zzcraVar.f13797a);
        }
        zzfuj.q(zzfutVarH, new zzcqz(zzcraVar, zzfufVar), zzcraVar.f13797a);
    }

    final /* synthetic */ zzfut a(zzfuf zzfufVar, zzfut zzfutVar, zzcqm zzcqmVar) throws Exception {
        if (zzcqmVar != null) {
            zzfufVar.c(zzcqmVar);
        }
        return zzfuj.n(zzfutVar, ((Long) zzbcx.f10608b.e()).longValue(), TimeUnit.MILLISECONDS, this.f13798b);
    }

    final /* synthetic */ void d() {
        this.f13800d = false;
    }

    public final void e(zzfuf zzfufVar) {
        zzfuj.q(this.f13799c, new zzcqy(this, zzfufVar), this.f13797a);
    }

    public final boolean f() {
        return this.f13800d;
    }
}
