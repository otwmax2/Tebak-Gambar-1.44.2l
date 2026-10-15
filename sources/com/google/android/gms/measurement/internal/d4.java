package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d4 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24041o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f24042p;

    d4(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        this.f24042p = appMeasurementDynamiteService;
        this.f24041o = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24042p.f23971o.L().A(this.f24041o, this.f24042p.f23971o.i());
    }
}
