package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f16001a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f16002b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f16003c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f16004d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f16005e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f16006f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f16007g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f16008h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Object f16009i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f16010j = new Object();

    public final int a() {
        int i10;
        synchronized (this.f16007g) {
            i10 = this.f16002b;
        }
        return i10;
    }

    public final synchronized long b() {
        long j10;
        synchronized (this.f16010j) {
            j10 = this.f16005e;
        }
        return j10;
    }

    public final synchronized long c() {
        long j10;
        synchronized (this.f16009i) {
            j10 = this.f16004d;
        }
        return j10;
    }

    public final synchronized long d() {
        long j10;
        synchronized (this.f16006f) {
            j10 = this.f16001a;
        }
        return j10;
    }

    public final long e() {
        long j10;
        synchronized (this.f16008h) {
            j10 = this.f16003c;
        }
        return j10;
    }

    public final synchronized void f(long j10) {
        synchronized (this.f16010j) {
            this.f16005e = j10;
        }
    }

    public final synchronized void g(long j10) {
        synchronized (this.f16009i) {
            this.f16004d = j10;
        }
    }

    public final synchronized void h(long j10) {
        synchronized (this.f16006f) {
            this.f16001a = j10;
        }
    }

    public final void i(int i10) {
        synchronized (this.f16007g) {
            this.f16002b = i10;
        }
    }

    public final void j(long j10) {
        synchronized (this.f16008h) {
            this.f16003c = j10;
        }
    }
}
