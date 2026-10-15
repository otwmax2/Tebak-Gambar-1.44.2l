package com.vungle.warren.utility;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class WeakRunnable implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private WeakReference<Runnable> f28595o;

    public WeakRunnable(Runnable runnable) {
        this.f28595o = new WeakReference<>(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable = this.f28595o.get();
        if (runnable != null) {
            runnable.run();
        }
    }
}
