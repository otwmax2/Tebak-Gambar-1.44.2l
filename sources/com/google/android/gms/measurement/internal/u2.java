package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class u2 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzp f24315o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ boolean f24316p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzav f24317q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ String f24318r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzkb f24319s;

    u2(zzkb zzkbVar, boolean z10, zzp zzpVar, boolean z11, zzav zzavVar, String str) {
        this.f24319s = zzkbVar;
        this.f24315o = zzpVar;
        this.f24316p = z11;
        this.f24317q = zzavVar;
        this.f24318r = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkb zzkbVar = this.f24319s;
        zzeo zzeoVar = zzkbVar.f24807d;
        if (zzeoVar == null) {
            zzkbVar.f24394a.U().m().a("Discarding data. Failed to send event to service");
            return;
        }
        Preconditions.k(this.f24315o);
        this.f24319s.m(zzeoVar, this.f24316p ? null : this.f24317q, this.f24315o);
        this.f24319s.C();
    }
}
