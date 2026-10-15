package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class u3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24320o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24321p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24322q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f24323r;

    u3(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2) {
        this.f24323r = appMeasurementDynamiteService;
        this.f24320o = zzcfVar;
        this.f24321p = str;
        this.f24322q = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24323r.f23971o.J().R(this.f24320o, this.f24321p, this.f24322q);
    }
}
