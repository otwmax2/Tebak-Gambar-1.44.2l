package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfml implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final TaskCompletionSource f18429o;

    zzfml() {
        this.f18429o = null;
    }

    public zzfml(TaskCompletionSource taskCompletionSource) {
        this.f18429o = taskCompletionSource;
    }

    protected abstract void a();

    final TaskCompletionSource b() {
        return this.f18429o;
    }

    public final void c(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f18429o;
        if (taskCompletionSource != null) {
            taskCompletionSource.d(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e10) {
            c(e10);
        }
    }
}
