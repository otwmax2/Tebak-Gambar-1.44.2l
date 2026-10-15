package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ e4 f24069o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f24070p;

    e3(AppMeasurementDynamiteService appMeasurementDynamiteService, e4 e4Var) {
        this.f24070p = appMeasurementDynamiteService;
        this.f24069o = e4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24070p.f23971o.G().H(this.f24069o);
    }
}
