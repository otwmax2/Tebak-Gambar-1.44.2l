package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbzk implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Handler f11612o = new com.google.android.gms.ads.internal.util.zzf(Looper.getMainLooper());

    zzbzk() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f11612o.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.r();
            com.google.android.gms.ads.internal.util.zzs.i(com.google.android.gms.ads.internal.zzt.q().c(), th);
            throw th;
        }
    }
}
