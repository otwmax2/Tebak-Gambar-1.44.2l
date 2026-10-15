package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfcf implements zzfut {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f17886o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f17887p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfut f17888q;

    public zzfcf(Object obj, String str, zzfut zzfutVar) {
        this.f17886o = obj;
        this.f17887p = str;
        this.f17888q = zzfutVar;
    }

    public final Object a() {
        return this.f17886o;
    }

    public final String b() {
        return this.f17887p;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        return this.f17888q.cancel(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzfut
    public final void f(Runnable runnable, Executor executor) {
        this.f17888q.f(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException, InterruptedException {
        return this.f17888q.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f17888q.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f17888q.isDone();
    }

    public final String toString() {
        return this.f17887p + "@" + System.identityHashCode(this);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f17888q.get(j10, timeUnit);
    }
}
