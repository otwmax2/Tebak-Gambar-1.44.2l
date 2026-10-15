package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaki extends Thread {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BlockingQueue f9424o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzakh f9425p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzajy f9426q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile boolean f9427r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzakf f9428s;

    public zzaki(BlockingQueue blockingQueue, zzakh zzakhVar, zzajy zzajyVar, zzakf zzakfVar, byte[] bArr) {
        this.f9424o = blockingQueue;
        this.f9425p = zzakhVar;
        this.f9426q = zzajyVar;
        this.f9428s = zzakfVar;
    }

    private void b() throws InterruptedException {
        zzako zzakoVar = (zzako) this.f9424o.take();
        SystemClock.elapsedRealtime();
        zzakoVar.K(3);
        try {
            zzakoVar.p("network-queue-take");
            zzakoVar.N();
            TrafficStats.setThreadStatsTag(zzakoVar.e());
            zzakk zzakkVarA = this.f9425p.a(zzakoVar);
            zzakoVar.p("network-http-complete");
            if (zzakkVarA.f9433e && zzakoVar.M()) {
                zzakoVar.s("not-modified");
                zzakoVar.I();
                return;
            }
            zzaku zzakuVarK = zzakoVar.k(zzakkVarA);
            zzakoVar.p("network-parse-complete");
            if (zzakuVarK.f9461b != null) {
                this.f9426q.q(zzakoVar.m(), zzakuVarK.f9461b);
                zzakoVar.p("network-cache-written");
            }
            zzakoVar.u();
            this.f9428s.b(zzakoVar, zzakuVarK, null);
            zzakoVar.J(zzakuVarK);
        } catch (zzakx e10) {
            SystemClock.elapsedRealtime();
            this.f9428s.a(zzakoVar, e10);
            zzakoVar.I();
        } catch (Exception e11) {
            zzala.c(e11, "Unhandled exception %s", e11.toString());
            zzakx zzakxVar = new zzakx(e11);
            SystemClock.elapsedRealtime();
            this.f9428s.a(zzakoVar, zzakxVar);
            zzakoVar.I();
        } finally {
            zzakoVar.K(4);
        }
    }

    public final void a() {
        this.f9427r = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                b();
            } catch (InterruptedException unused) {
                if (this.f9427r) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzala.b("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
