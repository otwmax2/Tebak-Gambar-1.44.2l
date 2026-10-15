package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ long f24038o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzjb f24039p;

    d2(zzjb zzjbVar, long j10) {
        this.f24039p = zzjbVar;
        this.f24038o = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24039p.f24394a.u().i(this.f24038o);
        this.f24039p.f24793e = null;
    }
}
