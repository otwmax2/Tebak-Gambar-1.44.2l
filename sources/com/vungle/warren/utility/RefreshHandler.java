package com.vungle.warren.utility;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public class RefreshHandler extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f28575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f28576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f28577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f28578d;

    public RefreshHandler(Runnable runnable, long j10) {
        this.f28577c = j10;
        this.f28578d = runnable;
    }

    public synchronized void clean() {
        removeMessages(0);
        removeCallbacks(this.f28578d);
        this.f28576b = 0L;
        this.f28575a = 0L;
    }

    public synchronized void pause() {
        if (hasMessages(0)) {
            this.f28576b += System.currentTimeMillis() - this.f28575a;
            removeMessages(0);
            removeCallbacks(this.f28578d);
        }
    }

    public synchronized void start() {
        if (this.f28577c <= 0) {
            return;
        }
        if (!hasMessages(0)) {
            long j10 = this.f28577c - this.f28576b;
            this.f28575a = System.currentTimeMillis();
            postDelayed(this.f28578d, j10);
        }
    }
}
