package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zziu f23989o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zziu f23990p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ long f23991q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ boolean f23992r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzjb f23993s;

    b2(zzjb zzjbVar, zziu zziuVar, zziu zziuVar2, long j10, boolean z10) {
        this.f23993s = zzjbVar;
        this.f23989o = zziuVar;
        this.f23990p = zziuVar2;
        this.f23991q = j10;
        this.f23992r = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23993s.k(this.f23989o, this.f23990p, this.f23991q, this.f23992r, null);
    }
}
