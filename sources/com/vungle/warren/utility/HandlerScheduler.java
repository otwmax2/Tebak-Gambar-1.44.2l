package com.vungle.warren.utility;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerScheduler implements Scheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f28560a = new Handler(Looper.getMainLooper());

    private long a(long j10) {
        return SystemClock.uptimeMillis() + j10;
    }

    @Override // com.vungle.warren.utility.Scheduler
    public void cancel(String str) {
        this.f28560a.removeCallbacksAndMessages(str);
    }

    @Override // com.vungle.warren.utility.Scheduler
    public void cancelAll() {
        this.f28560a.removeCallbacksAndMessages(null);
    }

    @Override // com.vungle.warren.utility.Scheduler
    public void schedule(Runnable runnable, String str, long j10) {
        this.f28560a.postAtTime(runnable, str, a(j10));
    }

    @Override // com.vungle.warren.utility.Scheduler
    public void schedule(Runnable runnable, long j10) {
        this.f28560a.postAtTime(runnable, a(j10));
    }
}
