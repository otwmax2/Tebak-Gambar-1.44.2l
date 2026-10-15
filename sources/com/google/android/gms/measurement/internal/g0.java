package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzhl f24098o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzgi f24099p;

    g0(zzgi zzgiVar, zzhl zzhlVar) {
        this.f24099p = zzgiVar;
        this.f24098o = zzhlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgi.a(this.f24099p, this.f24098o);
        this.f24099p.h(this.f24098o.f24754g);
    }
}
