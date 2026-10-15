package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
abstract class p implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zaaw f7132o;

    protected abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        this.f7132o.f7164b.lock();
        try {
            try {
                if (Thread.interrupted()) {
                    lock = this.f7132o.f7164b;
                } else {
                    a();
                    lock = this.f7132o.f7164b;
                }
            } catch (RuntimeException e10) {
                this.f7132o.f7163a.o(e10);
                lock = this.f7132o.f7164b;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.f7132o.f7164b.unlock();
            throw th;
        }
    }
}
