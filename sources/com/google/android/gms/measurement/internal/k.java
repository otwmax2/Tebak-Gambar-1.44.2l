package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ long f24177o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzd f24178p;

    k(zzd zzdVar, long j10) {
        this.f24178p = zzdVar;
        this.f24177o = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24178p.l(this.f24177o);
    }
}
