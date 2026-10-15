package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zziu f24066o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ long f24067p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzjb f24068q;

    e2(zzjb zzjbVar, zziu zziuVar, long j10) {
        this.f24068q = zzjbVar;
        this.f24066o = zziuVar;
        this.f24067p = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24068q.l(this.f24066o, false, this.f24067p);
        zzjb zzjbVar = this.f24068q;
        zzjbVar.f24793e = null;
        zzjbVar.f24394a.J().p(null);
    }
}
