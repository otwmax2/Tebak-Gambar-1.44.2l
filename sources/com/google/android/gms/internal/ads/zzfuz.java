package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfuz extends zzfuw implements ScheduledExecutorService {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final ScheduledExecutorService f18753p;

    zzfuz(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        Objects.requireNonNull(scheduledExecutorService);
        this.f18753p = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        zzfvj zzfvjVarE = zzfvj.E(runnable, null);
        return new zzfux(zzfvjVarE, this.f18753p.schedule(zzfvjVarE, j10, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        zzfuy zzfuyVar = new zzfuy(runnable);
        return new zzfux(zzfuyVar, this.f18753p.scheduleAtFixedRate(zzfuyVar, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        zzfuy zzfuyVar = new zzfuy(runnable);
        return new zzfux(zzfuyVar, this.f18753p.scheduleWithFixedDelay(zzfuyVar, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j10, TimeUnit timeUnit) {
        zzfvj zzfvjVar = new zzfvj(callable);
        return new zzfux(zzfvjVar, this.f18753p.schedule(zzfvjVar, j10, timeUnit));
    }
}
