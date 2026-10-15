package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ long f24151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzkr f24152p;

    i3(zzkr zzkrVar, long j10) {
        this.f24152p = zzkrVar;
        this.f24151o = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkr.l(this.f24152p, this.f24151o);
    }
}
