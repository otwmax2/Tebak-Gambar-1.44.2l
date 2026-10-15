package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzab f24143o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzha f24144p;

    i0(zzha zzhaVar, zzab zzabVar) {
        this.f24144p = zzhaVar;
        this.f24143o = zzabVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24144p.f24735o.a();
        if (this.f24143o.f24417q.V3() == null) {
            this.f24144p.f24735o.m(this.f24143o);
        } else {
            this.f24144p.f24735o.s(this.f24143o);
        }
    }
}
