package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcf f24084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24086q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ boolean f24087r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f24088s;

    f2(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2, boolean z10) {
        this.f24088s = appMeasurementDynamiteService;
        this.f24084o = zzcfVar;
        this.f24085p = str;
        this.f24086q = str2;
        this.f24087r = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24088s.f23971o.J().T(this.f24084o, this.f24085p, this.f24086q, this.f24087r);
    }
}
