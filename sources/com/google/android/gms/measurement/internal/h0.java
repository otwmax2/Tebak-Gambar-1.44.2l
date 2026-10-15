package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzab f24124o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzp f24125p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzha f24126q;

    h0(zzha zzhaVar, zzab zzabVar, zzp zzpVar) {
        this.f24126q = zzhaVar;
        this.f24124o = zzabVar;
        this.f24125p = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24126q.f24735o.a();
        if (this.f24124o.f24417q.V3() == null) {
            this.f24126q.f24735o.n(this.f24124o, this.f24125p);
        } else {
            this.f24126q.f24735o.u(this.f24124o, this.f24125p);
        }
    }
}
