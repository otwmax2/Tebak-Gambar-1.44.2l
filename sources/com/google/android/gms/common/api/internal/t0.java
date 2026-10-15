package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class t0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f7141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f7142p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzb f7143q;

    t0(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f7143q = zzbVar;
        this.f7141o = lifecycleCallback;
        this.f7142p = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb zzbVar = this.f7143q;
        if (zzbVar.f7289p > 0) {
            this.f7141o.f(zzbVar.f7290q != null ? zzbVar.f7290q.getBundle(this.f7142p) : null);
        }
        if (this.f7143q.f7289p >= 2) {
            this.f7141o.j();
        }
        if (this.f7143q.f7289p >= 3) {
            this.f7141o.h();
        }
        if (this.f7143q.f7289p >= 4) {
            this.f7141o.k();
        }
        if (this.f7143q.f7289p >= 5) {
            this.f7141o.g();
        }
    }
}
