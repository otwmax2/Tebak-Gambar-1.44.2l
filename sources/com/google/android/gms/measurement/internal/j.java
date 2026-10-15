package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f24155o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ long f24156p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzd f24157q;

    j(zzd zzdVar, String str, long j10) {
        this.f24157q = zzdVar;
        this.f24155o = str;
        this.f24156p = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzd.e(this.f24157q, this.f24155o, this.f24156p);
    }
}
