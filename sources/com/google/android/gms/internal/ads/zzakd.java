package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzakd implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Handler f9417o;

    zzakd(zzakf zzakfVar, Handler handler) {
        this.f9417o = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f9417o.post(runnable);
    }
}
