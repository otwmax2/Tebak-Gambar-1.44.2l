package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f23973o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ long f23974p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzd f23975q;

    a(zzd zzdVar, String str, long j10) {
        this.f23975q = zzdVar;
        this.f23973o = str;
        this.f23974p = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzd.d(this.f23975q, this.f23973o, this.f23974p);
    }
}
