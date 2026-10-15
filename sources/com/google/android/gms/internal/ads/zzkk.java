package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzkj f20058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzki f20059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdm f20060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzcn f20061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f20063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Looper f20064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f20065h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f20066i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f20067j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f20068k;

    public zzkk(zzki zzkiVar, zzkj zzkjVar, zzcn zzcnVar, int i10, zzdm zzdmVar, Looper looper) {
        this.f20059b = zzkiVar;
        this.f20058a = zzkjVar;
        this.f20061d = zzcnVar;
        this.f20064g = looper;
        this.f20060c = zzdmVar;
        this.f20065h = i10;
    }

    public final int a() {
        return this.f20062e;
    }

    public final Looper b() {
        return this.f20064g;
    }

    public final zzkj c() {
        return this.f20058a;
    }

    public final zzkk d() {
        zzdl.f(!this.f20066i);
        this.f20066i = true;
        this.f20059b.b(this);
        return this;
    }

    public final zzkk e(Object obj) {
        zzdl.f(!this.f20066i);
        this.f20063f = obj;
        return this;
    }

    public final zzkk f(int i10) {
        zzdl.f(!this.f20066i);
        this.f20062e = i10;
        return this;
    }

    public final Object g() {
        return this.f20063f;
    }

    public final synchronized void h(boolean z10) {
        this.f20067j = z10 | this.f20067j;
        this.f20068k = true;
        notifyAll();
    }

    public final synchronized boolean i(long j10) throws InterruptedException, TimeoutException {
        zzdl.f(this.f20066i);
        zzdl.f(this.f20064g.getThread() != Thread.currentThread());
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j10;
        while (!this.f20068k) {
            if (j10 <= 0) {
                throw new TimeoutException("Message delivery timed out.");
            }
            wait(j10);
            j10 = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        return this.f20067j;
    }

    public final synchronized boolean j() {
        return false;
    }
}
