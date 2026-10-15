package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfun implements zzfut {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final zzfut f18742p = new zzfun(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Logger f18743q = Logger.getLogger(zzfun.class.getName());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f18744o;

    zzfun(Object obj) {
        this.f18744o = obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfut
    public final void f(Runnable runnable, Executor executor) {
        zzfnu.c(runnable, "Runnable was null.");
        zzfnu.c(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f18743q.logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e10);
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f18744o;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws ExecutionException {
        Objects.requireNonNull(timeUnit);
        return this.f18744o;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + String.valueOf(this.f18744o) + "]]";
    }
}
