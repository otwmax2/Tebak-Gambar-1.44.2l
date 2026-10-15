package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g3 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzli f24103o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Runnable f24104p;

    g3(zzki zzkiVar, zzli zzliVar, Runnable runnable) {
        this.f24103o = zzliVar;
        this.f24104p = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24103o.a();
        this.f24103o.j0(this.f24104p);
        this.f24103o.y();
    }
}
