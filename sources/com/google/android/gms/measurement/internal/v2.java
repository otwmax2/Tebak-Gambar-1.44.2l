package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class v2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24330o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ boolean f24331p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzab f24332q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzab f24333r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzkb f24334s;

    v2(zzkb zzkbVar, boolean z10, zzp zzpVar, boolean z11, zzab zzabVar, zzab zzabVar2) {
        this.f24334s = zzkbVar;
        this.f24330o = zzpVar;
        this.f24331p = z11;
        this.f24332q = zzabVar;
        this.f24333r = zzabVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24334s;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        Preconditions.k(this.f24330o);
        this.f24334s.m(zzeoVar, this.f24331p ? null : this.f24332q, this.f24330o);
        this.f24334s.C();
    }
}
