package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzftv extends zzfus {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Executor f18732q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzftw f18733r;

    zzftv(zzftw zzftwVar, Executor executor) {
        this.f18733r = zzftwVar;
        Objects.requireNonNull(executor);
        this.f18732q = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final void d(Throwable th) {
        this.f18733r.D = null;
        if (th instanceof ExecutionException) {
            this.f18733r.i(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            this.f18733r.cancel(false);
        } else {
            this.f18733r.i(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final void e(Object obj) {
        this.f18733r.D = null;
        h(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final boolean f() {
        return this.f18733r.isDone();
    }

    abstract void h(Object obj);

    final void i() {
        try {
            this.f18732q.execute(this);
        } catch (RejectedExecutionException e10) {
            this.f18733r.i(e10);
        }
    }
}
