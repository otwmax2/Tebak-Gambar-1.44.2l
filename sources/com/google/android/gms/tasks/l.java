package com.google.android.gms.tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Task f24980o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ m f24981p;

    l(m mVar, Task task) {
        this.f24981p = mVar;
        this.f24980o = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24981p.f24983b) {
            m mVar = this.f24981p;
            if (mVar.f24984c != null) {
                mVar.f24984c.a(this.f24980o);
            }
        }
    }
}
