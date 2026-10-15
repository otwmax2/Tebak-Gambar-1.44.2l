package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzfus extends AtomicReference implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Runnable f18746o = new zzfur(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Runnable f18747p = new zzfur(null);

    zzfus() {
    }

    private final void c(Thread thread) {
        Runnable runnable = (Runnable) get();
        zzfup zzfupVar = null;
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (!(runnable instanceof zzfup)) {
                if (runnable != f18747p) {
                    break;
                }
            } else {
                zzfupVar = (zzfup) runnable;
            }
            i10++;
            if (i10 > 1000) {
                Runnable runnable2 = f18747p;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z10 = Thread.interrupted() || z10;
                    LockSupport.park(zzfupVar);
                }
            } else {
                Thread.yield();
            }
            runnable = (Runnable) get();
        }
        if (z10) {
            thread.interrupt();
        }
    }

    abstract Object a() throws Exception;

    abstract String b();

    abstract void d(Throwable th);

    abstract void e(Object obj);

    abstract boolean f();

    final void g() {
        Runnable runnable = (Runnable) get();
        if (runnable instanceof Thread) {
            zzfup zzfupVar = new zzfup(this, null);
            super/*java.util.concurrent.locks.AbstractOwnableSynchronizer*/.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, zzfupVar)) {
                try {
                    Thread thread = (Thread) runnable;
                    thread.interrupt();
                    if (((Runnable) getAndSet(f18746o)) == f18747p) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th) {
                    if (((Runnable) getAndSet(f18746o)) == f18747p) {
                        LockSupport.unpark((Thread) runnable);
                    }
                    throw th;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        Object objA = null;
        if (compareAndSet(null, threadCurrentThread)) {
            boolean z10 = !f();
            if (z10) {
                try {
                    objA = a();
                } catch (Throwable th) {
                    try {
                        zzfvb.a(th);
                        if (!compareAndSet(threadCurrentThread, f18746o)) {
                            c(threadCurrentThread);
                        }
                        d(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(threadCurrentThread, f18746o)) {
                            c(threadCurrentThread);
                        }
                        e(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(threadCurrentThread, f18746o)) {
                c(threadCurrentThread);
            }
            if (z10) {
                e(objA);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = (Runnable) get();
        if (runnable == f18746o) {
            str = "running=[DONE]";
        } else if (runnable instanceof zzfup) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        return str + ", " + b();
    }
}
