package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class n implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Task f24985o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ o f24986p;

    n(o oVar, Task task) {
        this.f24986p = oVar;
        this.f24985o = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24986p.f24988b) {
            o oVar = this.f24986p;
            if (oVar.f24989c != null) {
                oVar.f24989c.b((Exception) Preconditions.k(this.f24985o.o()));
            }
        }
    }
}
