package com.google.android.gms.common.util.concurrent;

import android.os.Process;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Runnable f7667o;

    public a(Runnable runnable, int i10) {
        this.f7667o = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f7667o.run();
    }
}
