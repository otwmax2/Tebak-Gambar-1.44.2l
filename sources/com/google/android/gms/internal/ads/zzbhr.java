package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbhr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f10740a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f10741b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f10742c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f10743d = new AtomicBoolean(false);

    public final synchronized float a() {
        return this.f10742c;
    }

    public final synchronized void b(boolean z10, float f10) {
        this.f10741b = z10;
        this.f10742c = f10;
    }

    public final synchronized void c(boolean z10) {
        this.f10740a = z10;
        this.f10743d.set(true);
    }

    public final synchronized boolean d() {
        return this.f10741b;
    }

    public final synchronized boolean e(boolean z10) {
        if (!this.f10743d.get()) {
            return z10;
        }
        return this.f10740a;
    }
}
