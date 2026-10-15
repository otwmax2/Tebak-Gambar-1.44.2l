package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaka extends Thread {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final boolean f9408u = zzala.f9472b;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BlockingQueue f9409o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final BlockingQueue f9410p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzajy f9411q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile boolean f9412r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzalb f9413s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzakf f9414t;

    public zzaka(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, zzajy zzajyVar, zzakf zzakfVar, byte[] bArr) {
        this.f9409o = blockingQueue;
        this.f9410p = blockingQueue2;
        this.f9411q = zzajyVar;
        this.f9414t = zzakfVar;
        this.f9413s = new zzalb(this, blockingQueue2, zzakfVar, null);
    }

    private void c() throws InterruptedException {
        zzako zzakoVar = (zzako) this.f9409o.take();
        zzakoVar.p("cache-queue-take");
        zzakoVar.K(1);
        try {
            zzakoVar.N();
            zzajx zzajxVarO = this.f9411q.o(zzakoVar.m());
            if (zzajxVarO == null) {
                zzakoVar.p("cache-miss");
                if (!this.f9413s.c(zzakoVar)) {
                    this.f9410p.put(zzakoVar);
                }
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (zzajxVarO.a(jCurrentTimeMillis)) {
                zzakoVar.p("cache-hit-expired");
                zzakoVar.g(zzajxVarO);
                if (!this.f9413s.c(zzakoVar)) {
                    this.f9410p.put(zzakoVar);
                }
                return;
            }
            zzakoVar.p("cache-hit");
            zzaku zzakuVarK = zzakoVar.k(new zzakk(zzajxVarO.f9397a, zzajxVarO.f9403g));
            zzakoVar.p("cache-hit-parsed");
            if (!zzakuVarK.c()) {
                zzakoVar.p("cache-parsing-failed");
                this.f9411q.p(zzakoVar.m(), true);
                zzakoVar.g(null);
                if (!this.f9413s.c(zzakoVar)) {
                    this.f9410p.put(zzakoVar);
                }
                return;
            }
            if (zzajxVarO.f9402f < jCurrentTimeMillis) {
                zzakoVar.p("cache-hit-refresh-needed");
                zzakoVar.g(zzajxVarO);
                zzakuVarK.f9463d = true;
                if (this.f9413s.c(zzakoVar)) {
                    this.f9414t.b(zzakoVar, zzakuVarK, null);
                } else {
                    this.f9414t.b(zzakoVar, zzakuVarK, new zzajz(this, zzakoVar));
                }
            } else {
                this.f9414t.b(zzakoVar, zzakuVarK, null);
            }
        } finally {
            zzakoVar.K(2);
        }
    }

    public final void b() {
        this.f9412r = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f9408u) {
            zzala.d("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f9411q.zzb();
        while (true) {
            try {
                c();
            } catch (InterruptedException unused) {
                if (this.f9412r) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzala.b("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
