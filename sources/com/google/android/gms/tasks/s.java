package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class s implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Task f24995o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ t f24996p;

    s(t tVar, Task task) {
        this.f24996p = tVar;
        this.f24995o = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task taskA = this.f24996p.f24998b.a(this.f24995o.p());
            if (taskA == null) {
                this.f24996p.b(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f24952b;
            taskA.j(executor, this.f24996p);
            taskA.g(executor, this.f24996p);
            taskA.a(executor, this.f24996p);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                this.f24996p.b((Exception) e10.getCause());
            } else {
                this.f24996p.b(e10);
            }
        } catch (CancellationException unused) {
            this.f24996p.d();
        } catch (Exception e11) {
            this.f24996p.b(e11);
        }
    }
}
