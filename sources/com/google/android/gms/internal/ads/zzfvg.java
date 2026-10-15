package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfvg extends zzftz {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @CheckForNull
    private zzfut f18755v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @CheckForNull
    private ScheduledFuture f18756w;

    private zzfvg(zzfut zzfutVar) {
        Objects.requireNonNull(zzfutVar);
        this.f18755v = zzfutVar;
    }

    static zzfut F(zzfut zzfutVar, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzfvg zzfvgVar = new zzfvg(zzfutVar);
        zzfvd zzfvdVar = new zzfvd(zzfvgVar);
        zzfvgVar.f18756w = scheduledExecutorService.schedule(zzfvdVar, j10, timeUnit);
        zzfutVar.f(zzfvdVar, zzftx.INSTANCE);
        return zzfvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    @CheckForNull
    protected final String d() {
        zzfut zzfutVar = this.f18755v;
        ScheduledFuture scheduledFuture = this.f18756w;
        if (zzfutVar == null) {
            return null;
        }
        String str = "inputFuture=[" + zzfutVar.toString() + "]";
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final void g() {
        v(this.f18755v);
        ScheduledFuture scheduledFuture = this.f18756w;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f18755v = null;
        this.f18756w = null;
    }
}
