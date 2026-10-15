package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class t1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzah f24290o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ long f24291p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ int f24292q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ long f24293r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ boolean f24294s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzah f24295t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzin f24296u;

    t1(zzin zzinVar, zzah zzahVar, long j10, int i10, long j11, boolean z10, zzah zzahVar2) {
        this.f24296u = zzinVar;
        this.f24290o = zzahVar;
        this.f24291p = j10;
        this.f24292q = i10;
        this.f24293r = j11;
        this.f24294s = z10;
        this.f24295t = zzahVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24296u.J(this.f24290o);
        this.f24296u.w(this.f24291p, false);
        zzin.e0(this.f24296u, this.f24290o, this.f24292q, this.f24293r, true, this.f24294s);
        zzpp.b();
        if (this.f24296u.f24394a.v().y(null, zzel.K0)) {
            zzin.d0(this.f24296u, this.f24290o, this.f24295t);
        }
    }
}
