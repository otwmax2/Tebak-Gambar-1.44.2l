package com.google.android.gms.tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ k f24976o;

    j(k kVar) {
        this.f24976o = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24976o.f24978b) {
            k kVar = this.f24976o;
            if (kVar.f24979c != null) {
                kVar.f24979c.d();
            }
        }
    }
}
