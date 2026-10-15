package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Task f24971o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ i f24972p;

    h(i iVar, Task task) {
        this.f24972p = iVar;
        this.f24971o = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task task = (Task) this.f24972p.f24974b.a(this.f24971o);
            if (task == null) {
                this.f24972p.b(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f24952b;
            task.j(executor, this.f24972p);
            task.g(executor, this.f24972p);
            task.a(executor, this.f24972p);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                this.f24972p.f24975c.w((Exception) e10.getCause());
            } else {
                this.f24972p.f24975c.w(e10);
            }
        } catch (Exception e11) {
            this.f24972p.f24975c.w(e11);
        }
    }
}
