package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class u1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzah f24309o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f24310p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ long f24311q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ boolean f24312r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzah f24313s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzin f24314t;

    u1(zzin zzinVar, zzah zzahVar, int i10, long j10, boolean z10, zzah zzahVar2) {
        this.f24314t = zzinVar;
        this.f24309o = zzahVar;
        this.f24310p = i10;
        this.f24311q = j10;
        this.f24312r = z10;
        this.f24313s = zzahVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24314t.J(this.f24309o);
        zzin.e0(this.f24314t, this.f24309o, this.f24310p, this.f24311q, false, this.f24312r);
        zzpp.b();
        if (this.f24314t.f24394a.v().y(null, zzel.K0)) {
            zzin.d0(this.f24314t, this.f24309o, this.f24313s);
        }
    }
}
