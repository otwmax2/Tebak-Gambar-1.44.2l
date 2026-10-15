package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class v0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24326o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzha f24327p;

    v0(zzha zzhaVar, zzp zzpVar) {
        this.f24327p = zzhaVar;
        this.f24326o = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24327p.f24735o.a();
        this.f24327p.f24735o.k(this.f24326o);
    }
}
