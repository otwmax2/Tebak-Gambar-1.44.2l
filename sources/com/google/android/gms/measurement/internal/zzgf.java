package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgf extends z0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final AtomicLong f24695l = new AtomicLong(Long.MIN_VALUE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f0 f24696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f0 f24697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PriorityBlockingQueue f24698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BlockingQueue f24699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f24700g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f24701h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Object f24702i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Semaphore f24703j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f24704k;

    zzgf(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24702i = new Object();
        this.f24703j = new Semaphore(2);
        this.f24698e = new PriorityBlockingQueue();
        this.f24699f = new LinkedBlockingQueue();
        this.f24700g = new d0(this, "Thread death: Uncaught exception on worker thread");
        this.f24701h = new d0(this, "Thread death: Uncaught exception on network thread");
    }

    private final void A(e0 e0Var) {
        synchronized (this.f24702i) {
            this.f24698e.add(e0Var);
            f0 f0Var = this.f24696c;
            if (f0Var == null) {
                f0 f0Var2 = new f0(this, "Measurement Worker", this.f24698e);
                this.f24696c = f0Var2;
                f0Var2.setUncaughtExceptionHandler(this.f24700g);
                this.f24696c.start();
            } else {
                f0Var.a();
            }
        }
    }

    static /* bridge */ /* synthetic */ boolean y(zzgf zzgfVar) {
        boolean z10 = zzgfVar.f24704k;
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.y0
    public final void b() {
        if (Thread.currentThread() != this.f24697d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.y0
    public final void c() {
        if (Thread.currentThread() != this.f24696c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.z0
    protected final boolean e() {
        return false;
    }

    final Object m(AtomicReference atomicReference, long j10, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.f24394a.B().v(runnable);
            try {
                atomicReference.wait(j10);
            } catch (InterruptedException unused) {
                this.f24394a.U().r().a("Interrupted waiting for " + str);
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            this.f24394a.U().r().a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final Future n(Callable callable) throws IllegalStateException {
        f();
        Preconditions.k(callable);
        e0 e0Var = new e0(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f24696c) {
            if (!this.f24698e.isEmpty()) {
                this.f24394a.U().r().a("Callable skipped the worker queue.");
            }
            e0Var.run();
        } else {
            A(e0Var);
        }
        return e0Var;
    }

    public final Future o(Callable callable) throws IllegalStateException {
        f();
        Preconditions.k(callable);
        e0 e0Var = new e0(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f24696c) {
            e0Var.run();
        } else {
            A(e0Var);
        }
        return e0Var;
    }

    public final void u(Runnable runnable) throws IllegalStateException {
        f();
        Preconditions.k(runnable);
        e0 e0Var = new e0(this, runnable, false, "Task exception on network thread");
        synchronized (this.f24702i) {
            this.f24699f.add(e0Var);
            f0 f0Var = this.f24697d;
            if (f0Var == null) {
                f0 f0Var2 = new f0(this, "Measurement Network", this.f24699f);
                this.f24697d = f0Var2;
                f0Var2.setUncaughtExceptionHandler(this.f24701h);
                this.f24697d.start();
            } else {
                f0Var.a();
            }
        }
    }

    public final void v(Runnable runnable) throws IllegalStateException {
        f();
        Preconditions.k(runnable);
        A(new e0(this, runnable, false, "Task exception on worker thread"));
    }

    public final void w(Runnable runnable) throws IllegalStateException {
        f();
        Preconditions.k(runnable);
        A(new e0(this, runnable, true, "Task exception on worker thread"));
    }

    public final boolean z() {
        return Thread.currentThread() == this.f24696c;
    }
}
