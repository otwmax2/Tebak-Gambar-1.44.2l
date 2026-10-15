package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdm f15255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f15256b;

    public zzdo() {
        throw null;
    }

    public zzdo(zzdm zzdmVar) {
        this.f15255a = zzdmVar;
    }

    public final synchronized void a() throws InterruptedException {
        while (!this.f15256b) {
            wait();
        }
    }

    public final synchronized void b() {
        boolean z10 = false;
        while (!this.f15256b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean c() {
        boolean z10;
        z10 = this.f15256b;
        this.f15256b = false;
        return z10;
    }

    public final synchronized boolean d() {
        return this.f15256b;
    }

    public final synchronized boolean e() {
        if (this.f15256b) {
            return false;
        }
        this.f15256b = true;
        notifyAll();
        return true;
    }
}
