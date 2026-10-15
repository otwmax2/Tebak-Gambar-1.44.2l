package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class u0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f7145o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f7146p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzd f7147q;

    u0(zzd zzdVar, LifecycleCallback lifecycleCallback, String str) {
        this.f7147q = zzdVar;
        this.f7145o = lifecycleCallback;
        this.f7146p = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzd zzdVar = this.f7147q;
        if (zzdVar.f7293p > 0) {
            this.f7145o.f(zzdVar.f7294q != null ? zzdVar.f7294q.getBundle(this.f7146p) : null);
        }
        if (this.f7147q.f7293p >= 2) {
            this.f7145o.j();
        }
        if (this.f7147q.f7293p >= 3) {
            this.f7145o.h();
        }
        if (this.f7147q.f7293p >= 4) {
            this.f7145o.k();
        }
        if (this.f7147q.f7293p >= 5) {
            this.f7145o.g();
        }
    }
}
