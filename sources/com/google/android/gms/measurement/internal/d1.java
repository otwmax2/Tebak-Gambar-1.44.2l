package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ long f24036o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24037p;

    d1(zzin zzinVar, long j10) {
        this.f24037p = zzinVar;
        this.f24036o = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24037p.f24394a.D().f24366k.b(this.f24036o);
        this.f24037p.f24394a.U().l().b("Session timeout duration set", Long.valueOf(this.f24036o));
    }
}
