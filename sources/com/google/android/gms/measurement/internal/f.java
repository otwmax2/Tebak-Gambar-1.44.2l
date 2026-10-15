package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ a1 f24073o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ g f24074p;

    f(g gVar, a1 a1Var) {
        this.f24074p = gVar;
        this.f24073o = a1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24073o.t();
        if (zzaa.a()) {
            this.f24073o.B().v(this);
            return;
        }
        boolean zE = this.f24074p.e();
        this.f24074p.f24097c = 0L;
        if (zE) {
            this.f24074p.c();
        }
    }
}
