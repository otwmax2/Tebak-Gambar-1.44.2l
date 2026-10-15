package com.google.android.gms.tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Task f24966o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ g f24967p;

    f(g gVar, Task task) {
        this.f24967p = gVar;
        this.f24966o = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f24966o.r()) {
            this.f24967p.f24970c.y();
            return;
        }
        try {
            this.f24967p.f24970c.x(this.f24967p.f24969b.a(this.f24966o));
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                this.f24967p.f24970c.w((Exception) e10.getCause());
            } else {
                this.f24967p.f24970c.w(e10);
            }
        } catch (Exception e11) {
            this.f24967p.f24970c.w(e11);
        }
    }
}
