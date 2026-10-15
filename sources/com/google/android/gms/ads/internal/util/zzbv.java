package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzfkr;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HandlerThread f6124a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f6125b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6126c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f6127d = new Object();

    public final Handler a() {
        return this.f6125b;
    }

    public final Looper b() {
        Looper looper;
        synchronized (this.f6127d) {
            if (this.f6126c != 0) {
                Preconditions.l(this.f6124a, "Invalid state: handlerThread should already been initialized.");
            } else if (this.f6124a == null) {
                zze.k("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.f6124a = handlerThread;
                handlerThread.start();
                this.f6125b = new zzfkr(this.f6124a.getLooper());
                zze.k("Looper thread started.");
            } else {
                zze.k("Resuming the looper thread");
                this.f6127d.notifyAll();
            }
            this.f6126c++;
            looper = this.f6124a.getLooper();
        }
        return looper;
    }
}
