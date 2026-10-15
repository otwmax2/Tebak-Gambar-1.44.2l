package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfuv implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Executor f18748o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzfsx f18749p;

    zzfuv(Executor executor, zzfsx zzfsxVar) {
        this.f18748o = executor;
        this.f18749p = zzfsxVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f18748o.execute(runnable);
        } catch (RejectedExecutionException e10) {
            this.f18749p.i(e10);
        }
    }
}
