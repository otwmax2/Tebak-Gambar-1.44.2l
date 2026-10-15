package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfdn implements zzfdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfdk f17954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Queue f17955b = new LinkedBlockingQueue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f17956c = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.V7)).intValue();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f17957d = new AtomicBoolean(false);

    public zzfdn(zzfdk zzfdkVar, ScheduledExecutorService scheduledExecutorService) {
        this.f17954a = zzfdkVar;
        long jIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.U7)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdm
            @Override // java.lang.Runnable
            public final void run() {
                zzfdn.c(this.f17953o);
            }
        }, jIntValue, jIntValue, TimeUnit.MILLISECONDS);
    }

    public static /* synthetic */ void c(zzfdn zzfdnVar) {
        while (!zzfdnVar.f17955b.isEmpty()) {
            zzfdnVar.f17954a.a((zzfdj) zzfdnVar.f17955b.remove());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final void a(zzfdj zzfdjVar) {
        if (this.f17955b.size() < this.f17956c) {
            this.f17955b.offer(zzfdjVar);
            return;
        }
        if (this.f17957d.getAndSet(true)) {
            return;
        }
        Queue queue = this.f17955b;
        zzfdj zzfdjVarB = zzfdj.b("dropped_event");
        Map mapJ = zzfdjVar.j();
        if (mapJ.containsKey("action")) {
            zzfdjVarB.a("dropped_action", (String) mapJ.get("action"));
        }
        queue.offer(zzfdjVarB);
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final String b(zzfdj zzfdjVar) {
        return this.f17954a.b(zzfdjVar);
    }
}
