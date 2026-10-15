package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class t0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzll f24287o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzp f24288p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzha f24289q;

    t0(zzha zzhaVar, zzll zzllVar, zzp zzpVar) {
        this.f24289q = zzhaVar;
        this.f24287o = zzllVar;
        this.f24288p = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24289q.f24735o.a();
        if (this.f24287o.V3() == null) {
            this.f24289q.f24735o.o(this.f24287o, this.f24288p);
        } else {
            this.f24289q.f24735o.w(this.f24287o, this.f24288p);
        }
    }
}
