package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ long f24135o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzkr f24136p;

    h3(zzkr zzkrVar, long j10) {
        this.f24136p = zzkrVar;
        this.f24135o = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkr.m(this.f24136p, this.f24135o);
    }
}
