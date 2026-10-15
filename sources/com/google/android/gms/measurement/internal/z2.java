package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class z2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzeo f24408o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzka f24409p;

    z2(zzka zzkaVar, zzeo zzeoVar) {
        this.f24409p = zzkaVar;
        this.f24408o = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f24409p) {
            this.f24409p.f24803o = false;
            if (!this.f24409p.f24805q.v()) {
                this.f24409p.f24805q.f24394a.U().q().a("Connected to service");
                this.f24409p.f24805q.s(this.f24408o);
            }
        }
    }
}
