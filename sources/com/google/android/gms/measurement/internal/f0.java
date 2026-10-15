package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f0 extends Thread {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f24075o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final BlockingQueue f24076p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f24077q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzgf f24078r;

    public f0(zzgf zzgfVar, String str, BlockingQueue blockingQueue) {
        this.f24078r = zzgfVar;
        Preconditions.k(str);
        Preconditions.k(blockingQueue);
        this.f24075o = new Object();
        this.f24076p = blockingQueue;
        setName(str);
    }

    private final void b() {
        synchronized (this.f24078r.f24702i) {
            if (!this.f24077q) {
                this.f24078r.f24703j.release();
                this.f24078r.f24702i.notifyAll();
                zzgf zzgfVar = this.f24078r;
                if (this == zzgfVar.f24696c) {
                    zzgfVar.f24696c = null;
                } else if (this == zzgfVar.f24697d) {
                    zzgfVar.f24697d = null;
                } else {
                    zzgfVar.f24394a.U().m().a("Current scheduler thread is neither worker nor network");
                }
                this.f24077q = true;
            }
        }
    }

    private final void c(InterruptedException interruptedException) {
        this.f24078r.f24394a.U().r().b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    public final void a() {
        synchronized (this.f24075o) {
            this.f24075o.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z10 = false;
        while (!z10) {
            try {
                this.f24078r.f24703j.acquire();
                z10 = true;
            } catch (InterruptedException e10) {
                c(e10);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                e0 e0Var = (e0) this.f24076p.poll();
                if (e0Var == null) {
                    synchronized (this.f24075o) {
                        if (this.f24076p.peek() == null) {
                            zzgf.y(this.f24078r);
                            try {
                                this.f24075o.wait(30000L);
                            } catch (InterruptedException e11) {
                                c(e11);
                            }
                        }
                    }
                    synchronized (this.f24078r.f24702i) {
                        if (this.f24076p.peek() == null) {
                            break;
                        }
                    }
                } else {
                    Process.setThreadPriority(true != e0Var.f24054p ? 10 : threadPriority);
                    e0Var.run();
                }
            }
            if (this.f24078r.f24394a.v().y(null, zzel.f24572h0)) {
                b();
            }
        } finally {
            b();
        }
    }
}
