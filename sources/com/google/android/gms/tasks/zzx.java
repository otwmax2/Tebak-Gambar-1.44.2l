package com.google.android.gms.tasks;

import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzx implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f25011o;

    @Override // java.lang.Runnable
    public final void run() {
        this.f25011o.d(new TimeoutException());
    }
}
