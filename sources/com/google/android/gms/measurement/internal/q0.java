package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class q0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzav f24254o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzp f24255p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzha f24256q;

    q0(zzha zzhaVar, zzav zzavVar, zzp zzpVar) {
        this.f24256q = zzhaVar;
        this.f24254o = zzavVar;
        this.f24255p = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24256q.A9(this.f24256q.t1(this.f24254o, this.f24255p), this.f24255p);
    }
}
