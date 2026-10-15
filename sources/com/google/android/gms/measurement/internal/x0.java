package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class x0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24379o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f24380p;

    x0(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.f24380p = appMeasurementDynamiteService;
        this.f24379o = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24380p.f23971o.J().P(this.f24379o);
    }
}
