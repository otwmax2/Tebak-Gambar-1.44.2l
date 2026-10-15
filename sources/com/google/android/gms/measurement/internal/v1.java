package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class v1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ boolean f24328o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzin f24329p;

    v1(zzin zzinVar, boolean z10) {
        this.f24329p = zzinVar;
        this.f24328o = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zJ = this.f24329p.f24394a.j();
        boolean zI = this.f24329p.f24394a.i();
        this.f24329p.f24394a.f(this.f24328o);
        if (zI == this.f24328o) {
            this.f24329p.f24394a.U().q().b("Default data collection state already set to", Boolean.valueOf(this.f24328o));
        }
        if (this.f24329p.f24394a.j() == zJ || this.f24329p.f24394a.j() != this.f24329p.f24394a.i()) {
            this.f24329p.f24394a.U().s().c("Default data collection is different than actual status", Boolean.valueOf(this.f24328o), Boolean.valueOf(zJ));
        }
        this.f24329p.Q();
    }
}
