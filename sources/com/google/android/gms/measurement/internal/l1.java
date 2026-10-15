package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24196o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzav f24197p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24198q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f24199r;

    l1(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcf zzcfVar, zzav zzavVar, String str) {
        this.f24199r = appMeasurementDynamiteService;
        this.f24196o = zzcfVar;
        this.f24197p = zzavVar;
        this.f24198q = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24199r.f23971o.J().k(this.f24196o, this.f24197p, this.f24198q);
    }
}
