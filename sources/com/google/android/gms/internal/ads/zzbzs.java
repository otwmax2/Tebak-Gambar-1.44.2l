package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public class zzbzs implements zzfut {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfvc f11623o = zzfvc.D();

    private static final boolean b(boolean z10) {
        if (!z10) {
            com.google.android.gms.ads.internal.zzt.q().t(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z10;
    }

    public final boolean c(Object obj) {
        boolean zH = this.f11623o.h(obj);
        b(zH);
        return zH;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return this.f11623o.cancel(z10);
    }

    public final boolean d(Throwable th) {
        boolean zI = this.f11623o.i(th);
        b(zI);
        return zI;
    }

    @Override // com.google.android.gms.internal.ads.zzfut
    public final void f(Runnable runnable, Executor executor) {
        this.f11623o.f(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException, InterruptedException {
        return this.f11623o.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f11623o.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f11623o.isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f11623o.get(j10, timeUnit);
    }
}
