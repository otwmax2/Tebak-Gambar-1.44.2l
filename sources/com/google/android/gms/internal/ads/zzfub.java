package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfub extends zzfua {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzfut f18736v;

    zzfub(zzfut zzfutVar) {
        Objects.requireNonNull(zzfutVar);
        this.f18736v = zzfutVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsx, java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        return this.f18736v.cancel(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzfsx, com.google.android.gms.internal.ads.zzfut
    public final void f(Runnable runnable, Executor executor) {
        this.f18736v.f(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzfsx, java.util.concurrent.Future
    public final Object get() throws ExecutionException, InterruptedException {
        return this.f18736v.get();
    }

    @Override // com.google.android.gms.internal.ads.zzfsx, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f18736v.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzfsx, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f18736v.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    public final String toString() {
        return this.f18736v.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfsx, java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f18736v.get(j10, timeUnit);
    }
}
