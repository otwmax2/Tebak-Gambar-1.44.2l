package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24147o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ boolean f24148p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzll f24149q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzkb f24150r;

    i2(zzkb zzkbVar, zzp zzpVar, boolean z10, zzll zzllVar) {
        this.f24150r = zzkbVar;
        this.f24147o = zzpVar;
        this.f24148p = z10;
        this.f24149q = zzllVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24150r;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Discarding data. Failed to set user property");
            return;
        }
        Preconditions.k(this.f24147o);
        this.f24150r.m(zzeoVar, this.f24148p ? null : this.f24149q, this.f24147o);
        this.f24150r.C();
    }
}
