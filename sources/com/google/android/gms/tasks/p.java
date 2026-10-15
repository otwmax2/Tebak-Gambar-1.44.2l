package com.google.android.gms.tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class p implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Task f24990o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ q f24991p;

    p(q qVar, Task task) {
        this.f24991p = qVar;
        this.f24990o = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24991p.f24993b) {
            q qVar = this.f24991p;
            if (qVar.f24994c != null) {
                qVar.f24994c.onSuccess(this.f24990o.p());
            }
        }
    }
}
